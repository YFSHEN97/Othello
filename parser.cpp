#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include "bitboard.h"
#include "position.h"

using namespace std;


// A "Game" object is defined as a sequence of 60 moves
typedef vector<int> Game;


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


int main(void) {
    // precompute all the lookup tables
    computeMovesCaptures();
    computeCapturesTables();

    vector<Game> games;
    for (int i = 1977; i <= 2020; i++)
        parse_wtb(games, "./database/WTH_" + to_string(i) + ".wtb");
    cout << "Total number of games: " << games.size() << endl;

    // // print all games
    // for (auto game : games) {
    //     Position position = Position();
    //     cout << "************************* NEW GAME *************************" << endl;
    //     position.pretty();
    //     cout << endl;
    //     for (int m = 0; m < game.size(); m++) {
    //         int move = game[m];
    //         Color side = (Color)position.whose_turn();
    //         Bitboard moves_bb = position.generate_moves(side);
    //         string s = (side == BLACK) ? "\033[31mBlack\033[0m" : "White";
    //         if (moves_bb == 0) {
    //             position.make_move(-1, side);
    //             m--; // current game[m] belongs to the other player
    //             cout << s << " passed" << endl << endl;
    //         } else {
    //             position.make_move(move, side);
    //             position.pretty();
    //             int i = move >> 3, j = move & 7;
    //             cout << s << " played " << (char)('a' + j) << (i + 1) << endl << endl;
    //         }
    //         if (position.game_over()) {
    //             int outcome = position.outcome();
    //             if (outcome == 1) cout << "\033[31mBlack\033[0m won the game!" << endl;
    //             else if (outcome == -1) cout << "White won the game!" << endl;
    //             else cout << "Game is drawn." << endl;
    //             break;
    //         }
    //     }
    // }
    return 0;
}

