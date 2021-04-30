/* The purpose of parser.cpp is to read all games from the WTHOR database
 * and convert them into a binary file encoding all (state, action) pairs
 * which is later fed into a python script to train a CNN classifier
 */

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include "bitboard.h"
#include "position.h"

using namespace std;


// A "Game" object is defined as a sequence of moves
typedef vector<int> Game;

// A SAPair is a state action pair (the position and corresponding move from WTHOR)
typedef struct {
    Bitboard black;
    Bitboard white;
    Move move; // (specifically) black's best move; white's move is achieved by flipping colors
} SAPair;


// read a .wtb file and add all the games in there
void parse_wtb(vector<Game> &games, string file) {
    ifstream input(file, ifstream::binary);
    
    // skip the first 16 bytes of the file
    char c;
    for (int i = 0; i < 16; i++)
        input.get(c);

    // read 68 bytes at a time and ignore the first 8 bytes
    while (true) {
        Game new_game;
        for (int i = 0; i < 8; i++)
            if (!input.get(c)) {
                input.close();
                return;
            }
        for (int i = 0; i < 60; i++) {
            input.get(c);
            if (c == 0) {
                new_game.push_back(-1);
                continue;
            }
            int row, col;
            col = (int)c % 10 - 1;
            row = 8 - (int)c / 10;
            new_game.push_back(row * 8 + col);
        }
        games.push_back(new_game);
    }

    input.close();
}


// for each (state, action) pair, we encode it into 17 bytes
// 8 bytes for blackBB, 8 bytes for whiteBB, and 1 byte for the move
// For the BB's: 0xff00000000000000 is written into (0, 0, 0, 0, 0, 0, 0, 255) (order is REVERSED!!)
// For the move byte: it is cast into a char value and directly written
void encode_datum(SAPair &sa, ofstream &outfile) {
    Bitboard black = sa.black;
    Bitboard white = sa.white;
    for (int i = 0; i < 8; i++) {
        unsigned char c = (black & 0xff);
        outfile.put(c);
        black >>= 8;
    }
    for (int i = 0; i < 8; i++) {
        unsigned char c = (white & 0xff);
        outfile.put(c);
        white >>= 8;
    }
    outfile.put(sa.move);
}


int main(void) {
    // precompute all the lookup tables
    computeMovesCaptures();
    computeCapturesTables();

    // read all games from the wtb files
    vector<Game> games;
    for (int i = 1977; i <= 2020; i++) {
        string filename = "./database/WTH_" + to_string(i) + ".wtb";
        cout << "Reading " << filename << endl;
        parse_wtb(games, "./database/WTH_" + to_string(i) + ".wtb");
    }
    cout << "Total number of games read: " << games.size() << endl;

    // go over all games and fill in all the omitted moves
    // games_rectified is also a list of move sequences
    // however, each move sequence will not omit passes (so that moves are always alternating black/white)
    // each move sequence terminates with a non-pass move
    // winners is a list that specifies, in the same order as games_rectified, the winner of each game
    vector<Game> games_rectified;
    vector<int> winners;
    int black_wins = 0, white_wins = 0, draws = 0;
    cout << "Rectifying games..." << endl;
    for (auto game : games) {
        Game new_game_rectified;
        Position position = Position();
        int outcome = 2; // 2: undefined
        for (int m = 0; m < game.size(); m++) {
            int move = game[m];
            Color side = (Color)position.whose_turn();
            Bitboard moves_bb = position.generate_moves(side);
            if (moves_bb == 0) {
                position.make_move(-1, side);
                m--; // current game[m] belongs to the other player
                new_game_rectified.push_back(-1);
            } else {
                position.make_move(move, side);
                new_game_rectified.push_back(move);
            }
            if (position.game_over()) {
                outcome = position.outcome();
                winners.push_back(outcome);
                break;
            }
        }
        // there are special cases where the game is not over (presumably because one side resigned)
        if (!position.game_over()) {
            position.make_move(-1, (Color)position.whose_turn());
            outcome = position.outcome();
            winners.push_back(outcome);
        }
        // remove all the trailing passes in new_game_rectified
        while (new_game_rectified.back() == -1) {
            new_game_rectified.pop_back();
        }
        games_rectified.push_back(new_game_rectified);
        if (outcome == 1) black_wins += 1;
        else if (outcome == -1) white_wins += 1;
        else draws += 1;
    }
    cout << "Total number of games rectified: " << games_rectified.size() << endl;
    cout << "Total number of winners registered: " << winners.size() << endl;
    cout << "Total number of black wins: " << black_wins << endl;
    cout << "Total number of white wins: " << white_wins << endl;
    cout << "Total number of draws: " << draws << endl;
    // there should be 57297 black wins, 61664 white wins, 7445 draws

    // now we go over each rectified game again and replay them SAFELY
    // we record every move into (state, action) pairs, except passes
    cout << "Gathering data..." << endl;
    vector<SAPair> data;
    for (auto game : games_rectified) {
        Position position = Position();
        for (auto move : game) {
            Color side = (Color)position.whose_turn();
            if (move == -1) {
                position.make_move(move, side);
                continue;
            }
            // Bitboard moveBB = 1ULL << move;
            Bitboard blackBB = (side == BLACK) ? position.get_blackBB() : position.get_whiteBB();
            Bitboard whiteBB = (side == BLACK) ? position.get_whiteBB() : position.get_blackBB();
            // create the original un-rotated, un-reflected version
            SAPair new_datum;
            new_datum.black = blackBB;
            new_datum.white = whiteBB;
            new_datum.move = move;
            data.push_back(new_datum);
            // // rotated clockwise 90
            // SAPair new_datum_cw90;
            // new_datum_cw90.black = rotate90_cw(blackBB);
            // new_datum_cw90.white = rotate90_cw(whiteBB);
            // new_datum_cw90.move = bit_pos(rotate90_cw(moveBB));
            // data.push_back(new_datum_cw90);
            // // rotated 180
            // SAPair new_datum_180;
            // new_datum_180.black = flip_horizontal(flip_vertical(blackBB));
            // new_datum_180.white = flip_horizontal(flip_vertical(whiteBB));
            // new_datum_180.move = bit_pos(flip_horizontal(flip_vertical(moveBB)));
            // data.push_back(new_datum_180);
            // // rotated counter-clockwise 90
            // SAPair new_datum_ccw90;
            // new_datum_ccw90.black = rotate90_ccw(blackBB);
            // new_datum_ccw90.white = rotate90_ccw(whiteBB);
            // new_datum_ccw90.move = bit_pos(rotate90_ccw(moveBB));
            // data.push_back(new_datum_ccw90);
            // // horizontal flip
            // SAPair new_datum_hor;
            // new_datum_hor.black = flip_horizontal(blackBB);
            // new_datum_hor.white = flip_horizontal(whiteBB);
            // new_datum_hor.move = bit_pos(flip_horizontal(moveBB));
            // data.push_back(new_datum_hor);
            // // vertical flip
            // SAPair new_datum_ver;
            // new_datum_ver.black = flip_vertical(blackBB);
            // new_datum_ver.white = flip_vertical(whiteBB);
            // new_datum_ver.move = bit_pos(flip_vertical(moveBB));
            // data.push_back(new_datum_ver);
            // // diagonal flip
            // SAPair new_datum_dgn;
            // new_datum_dgn.black = flip_diag(blackBB);
            // new_datum_dgn.white = flip_diag(whiteBB);
            // new_datum_dgn.move = bit_pos(flip_diag(moveBB));
            // data.push_back(new_datum_dgn);
            // // antidiagonal flip
            // SAPair new_datum_adg;
            // new_datum_adg.black = flip_antidiag(blackBB);
            // new_datum_adg.white = flip_antidiag(whiteBB);
            // new_datum_adg.move = bit_pos(flip_antidiag(moveBB));
            // data.push_back(new_datum_adg);
            // advance position to prepare for the next set of data points
            position.make_move(move, side);
        }
    }
    cout << "Total number of (state, action) pairs gathered: " << data.size() << endl;

    // write all data points into a file
    cout << "Writing (state, action) pairs to 'data.txt'..." << endl;
    ofstream outfile("data.txt", ofstream::binary);
    for (auto sa : data) {
        encode_datum(sa, outfile);
    }
    cout << "Parsing completed" << endl;

    return 0;
}

