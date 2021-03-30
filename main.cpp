#include <iostream>
#include <string>
#include <string.h>
#include "bitboard.h"
#include "position.h"
#include "agent.h"

using namespace std;


int main(int argc, char **argv) {
    // error check command line format: -h0 | -h1 | -h | -m
    // -h0: human plays black, computer plays white
    // -h1: human plays white, computer plays black
    // -h: two human players
    // -m: two computer players
    if (argc != 2) {
        printf("usage: main -h0 | -h1 | -h | -m\n");
        exit(1);
    }
    // precompute all the lookup tables
    computeMovesCaptures();
    computeCapturesTables();

    // initialize a new game of othello and the two agents
    cout << "************************* NEW GAME *************************" << endl;
    Position position = Position();
    Agent *black, *white;
    if (!strcmp(argv[1], "-h0")) {
        black = new HumanAgent(BLACK);
        white = new MCTSComputerAgent(WHITE, 1000000);
    } else if (!strcmp(argv[1], "-h1")) {
        black = new MCTSComputerAgent(BLACK, 1000000);
        white = new HumanAgent(WHITE);
    } else if (!strcmp(argv[1], "-h")) {
        black = new HumanAgent(BLACK);
        white = new HumanAgent(WHITE);
    } else if (!strcmp(argv[1], "-m")) {
        // black = new RandomComputerAgent(BLACK);
        black = new MCTSComputerAgent(BLACK, 50000);
        white = new MCTSComputerAgent(WHITE, 50000);
    } else {
        printf("usage: main -h0 | -h1 | -h | -m\n");
        exit(1);
    }

    // play until the game ends
    position.pretty();
    while (!position.game_over()) {
        cout << "************************************************************" << endl;
        if (position.whose_turn() == BLACK) black->make_move(position);
        else white->make_move(position);
    }

    // display the game outcome
    cout << "************************************************************" << endl;
    int outcome = position.outcome();
    if (outcome == 1) cout << "\033[31mBlack\033[0m won the game!" << endl;
    else if (outcome == -1) cout << "White won the game!" << endl;
    else cout << "Game is drawn." << endl;
    delete black;
    delete white;
    return 0;
}
