#include <iostream>
#include <string>
#include <string.h>
#include <chrono>
#include <fdeep/fdeep.hpp>
#include "bitboard.h"
#include "position.h"
#include "agent.h"
#include "MERSENNE_TWISTER.h"
MERSENNE_TWISTER twister_3(time(NULL));

using namespace std;


// load model for CNN
fdeep::model Model = fdeep::load_model("move_predictor/trained_symmetric_fdeep.json");

// define follout policies for unbiased, biased, and CNN-default

// Unbiased default policy
// pick uniformly randomly from all legal moves
int RolloutUnbiased(Position& pos)
{
    while (!pos.game_over()) {
        Bitboard moves_bb = pos.generate_moves((Color)pos.whose_turn());
        if (!moves_bb) {
            pos.pass((Color)pos.whose_turn());
            continue;
        }
        Bitboard pool = moves_bb;
        // for performance reasons, we don't use Position.bb2vec to pick a random move
        int r = 1 + twister_3.randInt(popcount(pool) - 1);
        int m = 64 - rth_setbit_position(pool, r);
        pos.make_move(m, (Color)pos.whose_turn());
    }
    return pos.outcome();
}

// Biased default policy
// if corner moves are available, then make one of the corner moves
// otherwise if there are moves other than b2, b7, g2, g7 available, choose one of those
// otherwise choose one of b2, b7, g2, g7
int RolloutBiased(Position& pos)
{
    while (!pos.game_over()) {
        Bitboard moves_bb = pos.generate_moves((Color)pos.whose_turn());
        if (!moves_bb) {
            pos.pass((Color)pos.whose_turn());
            continue;
        }
        Bitboard pool = moves_bb;
        // first prioritize corner squares
        pool &= 0x8100000000000081;
        if (pool == 0) pool = moves_bb;
        // next eliminate b2, b7, g2, g7, if possible
        pool &= 0xffbdffffffffbdff;
        if (pool == 0) pool = moves_bb;
        // for performance reasons, we don't use Position.bb2vec to pick a random move
        int r = 1 + twister_3.randInt(popcount(pool) - 1);
        int m = 64 - rth_setbit_position(pool, r);
        pos.make_move(m, (Color)pos.whose_turn());
    }
    return pos.outcome();
}

// CNN default policy
// use CNN classifier to predict moves each time
int RolloutCNN(Position& pos)
{
    while (!pos.game_over()) {
        Bitboard moves_bb = pos.generate_moves((Color)pos.whose_turn());
        if (!moves_bb) {
            pos.pass((Color)pos.whose_turn());
            continue;
        }
        // get board information and run model forward pass
        Bitboard black_out = ((Color)pos.whose_turn() == BLACK) ? (pos.get_blackBB()) : (pos.get_whiteBB());
        Bitboard white_out = ((Color)pos.whose_turn() == BLACK) ? (pos.get_whiteBB()) : (pos.get_blackBB());
        fdeep::tensor T(fdeep::tensor_shape(8, 8, 2), 0);
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                int index = i * 8 + j; // rank of the bit
                T.set(fdeep::tensor_pos(7-i, j, 0), (black_out >> index) & 0x1);
                T.set(fdeep::tensor_pos(7-i, j, 1), (white_out >> index) & 0x1);
            }
        }
        auto result = Model.predict({T}); // returns vector of fdeep::internal::tensor
        auto outvec = result[0].to_vector();

        // cull the output vector by the legal moves
        for (int i = 0; i < 27; i++) outvec[i] *= ((moves_bb >> i) & 0x1);
        for (int i = 27; i < 33; i++) outvec[i] *= ((moves_bb >> (i + 2)) & 0x1);
        for (int i = 33; i < 60; i++) outvec[i] *= ((moves_bb >> (i + 4)) & 0x1);

        // output best move by finding index for argmax and remapping to board
        float max = -1;
        int move = -1;
        for (int i = 0; i < outvec.size(); i++) {
            if (outvec[i] > max) {
                max = outvec[i];
                move = i;
            }
        }
        if (move >= 33) move += 4;
        else if (move < 33 && move >= 27) move += 2;

        pos.make_move(move, (Color)pos.whose_turn());
    }
    return pos.outcome();
}

int main(int argc, char **argv) {
    // error check command line format:
    //   $ ./main [-h | [-uITER | -bITER | -mITER | -c | -r]]{2} (-t NUM)*
    // arguments 1 & 2:
    //   -h (human) or -u (unbiased MCTS) or -b (biased MCTS) or -m (MCTS w/ CNN) or -c (CNN) or -r (random)
    // argument 3: optional, only accepted if the two players are both machine
    // for example: ./main -r -b50000 200
    // means let a random black agent and a biased MCTS agent with 50000 iterations play 200 games
    if (argc != 3 && argc != 4) {
        printf("usage: ./main [-h | [-uITER | -bITER | -mITER | -c | -r]]{2} NUM*\n");
        exit(1);
    }

    // parse command line flags
    bool hasHuman = false;
    string f1 = argv[1];
    string f2 = argv[2];
    char p1, p2;
    int n1 = 0, n2 = 0;
    if (f1.rfind("-h", 0) == 0) {
        p1 = 'h';
        hasHuman = true;
    } else if (f1.rfind("-u", 0) == 0) {
        p1 = 'u';
        n1 = stoi(f1.substr(2));
    } else if (f1.rfind("-b", 0) == 0) {
        p1 = 'b';
        n1 = stoi(f1.substr(2));
    } else if (f1.rfind("-m", 0) == 0) {
        p1 = 'm';
        n1 = stoi(f1.substr(2));
    } else if (f1.rfind("-c", 0) == 0) {
        p1 = 'c';
    } else if (f1.rfind("-r", 0) == 0) {
        p1 = 'r';
    } else {
        printf("usage: ./main [-h | [-uITER | -bITER | -mITER | -c | -r]]{2} NUM*\n");
        exit(1);
    }
    if (f2.rfind("-h", 0) == 0) {
        p2 = 'h';
        hasHuman = true;
    } else if (f2.rfind("-u", 0) == 0) {
        p2 = 'u';
        n2 = stoi(f2.substr(2));
    } else if (f2.rfind("-b", 0) == 0) {
        p2 = 'b';
        n2 = stoi(f2.substr(2));
    } else if (f2.rfind("-m", 0) == 0) {
        p2 = 'm';
        n2 = stoi(f2.substr(2));
    } else if (f2.rfind("-c", 0) == 0) {
        p2 = 'c';
    } else if (f2.rfind("-r", 0) == 0) {
        p2 = 'r';
    } else {
        printf("usage: ./main [-h | [-uITER | -bITER | -mITER | -c | -r]]{2} NUM*\n");
        exit(1);
    }
    if (hasHuman && argc == 4) {
        printf("Error: cannot hold competition when human player is present\n");
        exit(1);
    }
    int competition = -1;
    if (argc == 4) competition = stoi(argv[3]);

    // precompute all the lookup tables
    computeMovesCaptures();
    computeCapturesTables();

    // initialize a new game of othello and the two agents for non-competition
    if (competition == -1) {
        Position position = Position();
        Agent *black, *white;
        switch (p1) {
            case 'h': black = new HumanAgent(BLACK); break;
            case 'u': black = new MCTSComputerAgent(BLACK, n1, &RolloutUnbiased); break;
            case 'b': black = new MCTSComputerAgent(BLACK, n1, &RolloutBiased); break;
            case 'm': black = new MCTSComputerAgent(BLACK, n1, &RolloutCNN); break;
            case 'c': black = new CNNComputerAgent(BLACK, Model); break;
            case 'r': black = new RandomComputerAgent(BLACK); break;
            default: printf("impossible\n"); exit(1);
        }
        switch (p2) {
            case 'h': white = new HumanAgent(WHITE); break;
            case 'u': white = new MCTSComputerAgent(WHITE, n2, &RolloutUnbiased); break;
            case 'b': white = new MCTSComputerAgent(WHITE, n2, &RolloutBiased); break;
            case 'm': white = new MCTSComputerAgent(WHITE, n2, &RolloutCNN); break;
            case 'c': white = new CNNComputerAgent(WHITE, Model); break;
            case 'r': white = new RandomComputerAgent(WHITE); break;
            default: printf("impossible\n"); exit(1);
        }
        // play until the game ends
        cout << "************************* NEW GAME *************************" << endl;
        position.pretty();
        cout << endl;
        while (!position.game_over()) {
            auto start = chrono::system_clock::now();
            // let the player about to move compute their best move
            int move;
            Color side = (Color)position.whose_turn();
            if (side == BLACK) move = black->recommend_move(position);
            else move = white->recommend_move(position);
            // commit that move
            position.make_move(move, side);
            // post-processing for the agents
            black->acknowledge_move(move);
            white->acknowledge_move(move);
            // output the move to the command line
            string s = (side == BLACK) ? "\033[31mBlack\033[0m" : "White";
            if (move < 0) {
                cout << s << " passed" << endl << endl;
            } else {
                position.pretty();
                int i = move >> 3, j = move & 7;
                cout << s << " played " << (char)('a' + j) << (i + 1) << endl;
            }
            // print time
            auto finish = std::chrono::system_clock::now();
            chrono::duration<double> elapsed = finish - start;
            cout << "Time taken: " << elapsed.count() << " seconds" << endl << endl;
        }
        // display the game outcome
        cout << "************************************************************" << endl;
        int outcome = position.outcome();
        if (outcome == 1) cout << "\033[31mBlack\033[0m won the game!" << endl;
        else if (outcome == -1) cout << "White won the game!" << endl;
        else cout << "Game is drawn." << endl;
        delete black;
        delete white;
    }
    // for competition, silently play the number of games and display result at the end
    else {
        int black_wins = 0, white_wins = 0, draws = 0;
        for (int i = 0; i < competition; i++) {
            Position position = Position();
            Agent *black, *white;
            switch (p1) {
                case 'u': black = new MCTSComputerAgent(BLACK, n1, &RolloutUnbiased); break;
                case 'b': black = new MCTSComputerAgent(BLACK, n1, &RolloutBiased); break;
                case 'm': black = new MCTSComputerAgent(BLACK, n1, &RolloutCNN); break;
                case 'c': black = new CNNComputerAgent(BLACK, Model); break;
                case 'r': black = new RandomComputerAgent(BLACK); break;
                default: printf("impossible\n"); exit(1);
            }
            switch (p2) {
                case 'u': white = new MCTSComputerAgent(WHITE, n2, &RolloutUnbiased); break;
                case 'b': white = new MCTSComputerAgent(WHITE, n2, &RolloutBiased); break;
                case 'm': white = new MCTSComputerAgent(WHITE, n2, &RolloutCNN); break;
                case 'c': white = new CNNComputerAgent(WHITE, Model); break;
                case 'r': white = new RandomComputerAgent(WHITE); break;
                default: printf("impossible\n"); exit(1);
            }
            while (!position.game_over()) {
                int move;
                Color side = (Color)position.whose_turn();
                if (side == BLACK) move = black->recommend_move(position);
                else move = white->recommend_move(position);
                position.make_move(move, side);
                black->acknowledge_move(move);
                white->acknowledge_move(move);
            }
            int outcome = position.outcome();
            if (outcome == 1) {
                black_wins++;
                cout << "Game " << i + 1 << ": black wins" << endl;
            }
            else if (outcome == -1) {
                white_wins++;
                cout << "Game " << i + 1 << ": white wins" << endl;
            }
            else {
                draws++;
                cout << "Game " << i + 1 << ": draw" << endl;
            }
            delete black;
            delete white;
        }
        // display competition statistics
        cout << "Total games played: " << competition << endl;
        cout << "Black wins: " << black_wins << endl;
        cout << "White wins: " << white_wins << endl;
        cout << "Draws: " << draws << endl;
    }

    return 0;
}
