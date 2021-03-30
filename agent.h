#ifndef AGENT_H
#define AGENT_H

#include <cstdint>
#include "bitboard.h"
#include "position.h"


// class for an AI Agent that plays the game
class Agent {
public:
    // constructor
    Agent(Color c);
    // dummy destructor for cleanup purposes
    virtual ~Agent() {};
    // make a move using the policy on the given position and print the move
    void make_move(Position& pos);

protected:
    // one of two values, BLACK or WHITE
    Color side;
    // given the current game configuration, output the "optimal" move
    virtual int policy(Position& pos) { return 0; };
};


// a wrapper for a human player for consistence with Agent interface
class HumanAgent : public Agent {
public:
    using Agent::Agent;
private:
    int policy(Position& pos);
};


// a computer AI that makes random moves
class RandomComputerAgent : public Agent {
public:
    using Agent::Agent;
private:
    int policy(Position& pos);
};


// used to support MC tree structure
struct TreeNode;


// a computer AI that uses Monte Carlo Tree Search for policy
class MCTSComputerAgent : public Agent {
public:
    // constructor
    MCTSComputerAgent(Color c, uint32_t iterations);
private:
    // how many rollouts to conduct during MCTS
    uint32_t iterations;
    int policy(Position& pos);
    // do one iteration of MCTS and update stats in place
    void MCTS(TreeNode *node, Position& pos);
    // do a rollout according to a particular default policy, and return game outcome
    int rollout(Position& pos);
};


#endif
