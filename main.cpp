#include <iostream>
#include <string>
#include <string.h>
#include "bitboard.h"
#include "position.h"
#include "agent.h"

using namespace std;


int main(int argc, char **argv) {
    // error check command line format: $ ./main [-h | [-uITER | -bITER | -r]]{2} (-t NUM)*
    // arguments 1 & 2: -h (human player) or -u (unbiased MCTS) or -b (biased MCTS) or -r (random)
    // argument 3: optional, only accepted if the two players are both machine
    // for example: ./main -r -b50000 200
    // means let a random black agent and a biased MCTS agent with 50000 iterations play 200 games
    if (argc != 3 && argc != 4) {
        printf("usage: ./main [-h | [-uITER | -bITER | -r]]{2} NUM*\n");
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
    } else if (f1.rfind("-r", 0) == 0) {
        p1 = 'r';
    } else {
        printf("usage: ./main [-h | [-uITER | -bITER | -r]]{2} NUM*\n");
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
    } else if (f2.rfind("-r", 0) == 0) {
        p2 = 'r';
    } else {
        printf("usage: ./main [-h | [-uITER | -bITER | -r]]{2} NUM*\n");
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
            case 'u': black = new MCTSComputerAgent(BLACK, n1, false); break;
            case 'b': black = new MCTSComputerAgent(BLACK, n1, true); break;
            case 'r': black = new RandomComputerAgent(BLACK); break;
            default: printf("impossible\n"); exit(1);
        }
        switch (p2) {
            case 'h': white = new HumanAgent(WHITE); break;
            case 'u': white = new MCTSComputerAgent(WHITE, n2, false); break;
            case 'b': white = new MCTSComputerAgent(WHITE, n2, true); break;
            case 'r': white = new RandomComputerAgent(WHITE); break;
            default: printf("impossible\n"); exit(1);
        }
        // play until the game ends
        cout << "************************* NEW GAME *************************" << endl;
        position.pretty();
        cout << endl;
        while (!position.game_over()) {
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
                cout << s << " played " << (char)('a' + j) << (i + 1) << endl << endl;
            }
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
                case 'u': black = new MCTSComputerAgent(BLACK, n1, false); break;
                case 'b': black = new MCTSComputerAgent(BLACK, n1, true); break;
                case 'r': black = new RandomComputerAgent(BLACK); break;
                default: printf("impossible\n"); exit(1);
            }
            switch (p2) {
                case 'u': white = new MCTSComputerAgent(WHITE, n2, false); break;
                case 'b': white = new MCTSComputerAgent(WHITE, n2, true); break;
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
