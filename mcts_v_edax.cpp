#include <iostream>
#include <string>
#include <string.h>
#include <chrono>
#include <stdlib.h>
#include <ctype.h>
#include <fstream>
#include <sstream>
#include "bitboard.h"
#include "position.h"
#include "agent.h"

using namespace std;


// this program simulates matches between MCTS biased agent and Edax (no opening book)
int main(int argc, char **argv) {
    // 3 command line arguments: ./mcts_v_edax MCTS_ITER NUM_GAMES EDAX_DEPTH
    if (argc != 4) {
        printf("usage: ./mcts_v_edax MCTS_ITER NUM_GAMES EDAX_DEPTH\n");
        exit(1);
    }

    // parse command line flags
    int MCTS_ITER = stoi(argv[1]);
    int NUM_GAMES = stoi(argv[2]);
    int EDAX_DEPTH = stoi(argv[3]);

    // precompute all the lookup tables
    computeMovesCaptures();
    computeCapturesTables();

    // play the desired number of games
    int black_wins = 0, white_wins = 0, draws = 0;
    for (int n = 0; n < NUM_GAMES; n++) {
        Position position = Position();
        Agent *black = new MCTSComputerAgent(BLACK, MCTS_ITER, false);
        while (!position.game_over()) {
            // let MCTS agent make move
            int move = black->recommend_move(position);
            position.make_move(move, BLACK);
            black->acknowledge_move(move);
            // check if game over
            if (position.game_over()) break;
            // inquire Edax for move
            string pos = position.serialize();
            string command = "(echo \"setboard " + pos + "\"; echo \"go\") | ./mEdax-4.4-x64-modern -level " + to_string(EDAX_DEPTH) + " -book-usage off -verbose 0 > output.txt";
            const char *ccommand = command.c_str();
            system(ccommand);
            ifstream edax("output.txt");
            string line;
            for (int i = 0; i < 4; i++)
                getline(edax, line);
            if (line.compare("*** Game Over ***") == 0 || 
                line.substr(line.length() - 2, string::npos).compare("PS") == 0) {
                move = -1;
            } else {
                int col = (int)(tolower(line[line.length()-2]) - 'a');
                int row = (int)('8' - line[line.length()-1]);
                move = row * 8 + col;
            }
            position.make_move(move, WHITE);
            black->acknowledge_move(move);
        }
        int outcome = position.outcome();
        if (outcome == 1) {
            black_wins++;
            cout << "Game " << n + 1 << ": MCTS wins" << endl;
        }
        else if (outcome == -1) {
            white_wins++;
            cout << "Game " << n + 1 << ": Edax wins" << endl;
        }
        else {
            draws++;
            cout << "Game " << n + 1 << ": draw" << endl;
        }
        delete black;
    }
    system("rm -f output.txt");
    // display competition statistics
    cout << "Total games played: " << NUM_GAMES << endl;
    cout << "MCTS wins: " << black_wins << endl;
    cout << "Edax wins: " << white_wins << endl;
    cout << "Draws: " << draws << endl;

    return 0;
}
