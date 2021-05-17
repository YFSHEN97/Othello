#include <iostream>
#include <ctime>
#include <fstream>
#include <string>
#include <stdlib.h>
#include "agent.h"

#include "MERSENNE_TWISTER.h"
MERSENNE_TWISTER twister(time(NULL));


using namespace std;


// constructor
Agent::Agent(Color c) : side(c) {}


// recommend a move using the policy on the given position
int Agent::recommend_move(Position& pos)
{
    return policy(pos);
}


int RandomComputerAgent::policy(Position& pos)
{
    Bitboard all_moves = pos.generate_moves(side);
    if (!all_moves) return -1;
    vector<int> moves = pos.bb2vec(all_moves);
    int random_choice = twister.randInt(moves.size() - 1);
    return moves[random_choice];
}


int HumanAgent::policy(Position& pos)
{
    // first check if the human has an available move; if not skip his turn
    Bitboard all_moves = pos.generate_moves(side);
    if (!all_moves) return -1;
    // prompt the user to enter a move in the desired format
    int move;
    while (true) {
        string str;
        cout << "Your move: ";
        if (!getline(cin, str)) {
            cout << "Error when inputting move, please try again" << endl;
            continue;
        }
        if (str.length() != 2 || (str[0] < 'a' || str[0] > 'h') || (str[1] < '1' || str[1] > '8')) {
            cout << "Incorrect input move format\nusage: Your move: [a-h][1-8]" << endl;
            continue;
        }
        move = 8 * (str[1] - '1') + (str[0] - 'a');
        if (((1ULL << move) & all_moves) == 0) {
            cout << "Move " << str << " is illegal" << endl;
            continue;
        }
        return move;
    }
}
