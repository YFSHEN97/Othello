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
    // optional function: do some post-processing work internally if necessary
    virtual void acknowledge_move(int move) {};
    // recommend a move using the policy on the given position
    int recommend_move(Position& pos);

protected:
    // one of two values, BLACK or WHITE
    Color side;
    // returns optimal move given a position; this function MUST be redefined
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
    MCTSComputerAgent(Color c, uint32_t iterations, bool bias);
    // destructor
    ~MCTSComputerAgent();
    // after a move has been made, preserve relevant search tree branches
    void acknowledge_move(int move);
private:
    // how many rollouts to conduct during MCTS
    uint32_t iterations;
    // store the search tree from previous MCTS iterations
    TreeNode *tree;
    // bias indicates whether the default policy should use bias
    bool bias;
    // policy function that returns the best move given a position
    int policy(Position& pos);
    // do one iteration of MCTS and update stats in place
    void MCTS(TreeNode *node, Position& pos);
    // do a rollout according to a particular default policy, and return game outcome
    int rollout(Position& pos);
};


// a computer AI that uses an externally trained CNN to predict best moves
class CNNComputerAgent : public Agent {
public:
    using Agent::Agent;
private:
    int policy(Position& pos);
};


#endif
