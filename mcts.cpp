#include <vector>
#include <cmath>
#include <limits>
#include <iostream>
#include "agent.h"
#include "position.h"
#include "MERSENNE_TWISTER.h"

using namespace std;


MERSENNE_TWISTER twister_2(time(NULL));


// TreeNode is used to expand MC tree structure
struct TreeNode {
    vector<TreeNode*> children; // list of child positions
    int move;                   // move leading from parent position to current position
    int rewards;                // net number of wins
    int base;                   // number of rollouts involving the parent
    int chosen;                 // number of rollouts where this node is chosen by parent
};


// free all heap memory occupied by the tree nodes
static void dumpTree(TreeNode *root)
{
    for (auto child : root->children)
        dumpTree(child);
    delete root;
}


// constructor
MCTSComputerAgent::MCTSComputerAgent(Color c, uint32_t iterations) : Agent(c),
    iterations(iterations) {}


// outputs the optimal move after performing MCTS
int MCTSComputerAgent::policy(Position& pos)
{
    Bitboard moves_bb = pos.generate_moves(side);
    if (!moves_bb) return -1;
    // initialize the root node
    TreeNode *root = new TreeNode();
    root->children = vector<TreeNode*>();
    root->move     = 0;
    root->rewards  = 0;
    root->base     = 0;
    root->chosen   = 0;
    // perform search for targeted number of iterations
    for (uint32_t i = 0; i < iterations; i++) {
        Position pos_copy(pos); // make a write-able copy
        MCTS(root, pos_copy);
    }
    // using the search result to select a move
    if (pos.whose_turn() == BLACK) {
        float max = std::numeric_limits<float>::lowest();
        float avg;
        TreeNode *argmax;
        for (auto child : root->children) {
            avg = (float)child->rewards / child->chosen;
            if (avg > max) {
                max = avg;
                argmax = child;
            }
        }
        int best = argmax->move;
        dumpTree(root);
        return best;
    } else {
        float min = std::numeric_limits<float>::max();
        float avg;
        TreeNode *argmin;
        for (auto child : root->children) {
            avg = (float)child->rewards / child->chosen;
            if (avg < min) {
                min = avg;
                argmin = child;
            }
        }
        int best = argmin->move;
        dumpTree(root);
        return best;
    }
}


// perform MCTS starting from the given node for ONE iteration
// update statistics in place
void MCTSComputerAgent::MCTS(TreeNode *node, Position& pos)
{
    // base case: node has no children
    if (node->children.size() == 0) {
        // if we are at a terminal position, tally rewards
        if (pos.game_over()) {
            node->rewards += pos.outcome();
            node->chosen += 1;
            return;
        }
        // if non-terminal, expand by adding all possible children
        Bitboard moves_bb = pos.generate_moves((Color)pos.whose_turn());
        vector<int> moves_vec = pos.bb2vec(moves_bb);
        if (moves_vec.size() == 0) moves_vec.push_back(-1); // no legal moves, has to pass
        for (auto m : moves_vec) {
            TreeNode *new_node = new TreeNode();
            new_node->children = vector<TreeNode*>();
            new_node->move     = m;
            new_node->rewards  = 0;
            new_node->base     = 1;
            new_node->chosen   = 0;
            node->children.push_back(new_node);
        }
        // randomly choose ONLY ONE child to rollout
        // update the statistics in the process
        int i = twister_2.randInt(moves_vec.size() - 1);
        pos.make_move(moves_vec[i], (Color)pos.whose_turn());
        int outcome = rollout(pos);
        node->children[i]->rewards += outcome;
        node->children[i]->chosen += 1;
        node->rewards += outcome;
        node->chosen += 1;
        return;
    }
    // recursive case: node has children already
    for (auto child : node->children)
        child->base += 1;
    node->chosen += 1;
    // choose to explore the child that maximizes/minimizes the UCB formula
    // if current turn is BLACK, maximize
    if (pos.whose_turn() == BLACK) {
        TreeNode *argmax = NULL;
        float max_UCB = std::numeric_limits<float>::lowest();
        for (auto child : node->children) {
            // check if the child has never been explored before
            if (child->chosen == 0) {
                argmax = child;
                break;
            }
            // compute UCB for the child and update max as appropriate
            float UCB = (float)child->rewards / child->chosen + sqrt(2 * log((float)child->base) / child->chosen);
            if (UCB > max_UCB) {
                max_UCB = UCB;
                argmax = child;
            }
        }
        // simulate downwards using the given child, and update stats afterwards
        int old_rewards = argmax->rewards;
        pos.make_move(argmax->move, BLACK);
        MCTS(argmax, pos);
        node->rewards += argmax->rewards - old_rewards;
    }
    // if current turn is WHITE, minimize
    else if (pos.whose_turn() == WHITE) {
        TreeNode *argmin = NULL;
        float min_UCB = std::numeric_limits<float>::max();
        for (auto child : node->children) {
            // check if the child has never been explored before
            if (child->chosen == 0) {
                argmin = child;
                break;
            }
            // compute UCB for the child and update min as appropriate
            float UCB = (float)child->rewards / child->chosen - sqrt(2 * log((float)child->base) / child->chosen);
            if (UCB < min_UCB) {
                min_UCB = UCB;
                argmin = child;
            }
        }
        // simulate downwards using the given child, and update stats afterwards
        int old_rewards = argmin->rewards;
        pos.make_move(argmin->move, WHITE);
        MCTS(argmin, pos);
        node->rewards += argmin->rewards - old_rewards;
    }

    return;
}


// do a rollout according to a particular default policy, and return game outcome
int MCTSComputerAgent::rollout(Position& pos)
{
    while (!pos.game_over()) {
        Bitboard moves_bb = pos.generate_moves((Color)pos.whose_turn());
        if (!moves_bb) {
            pos.pass((Color)pos.whose_turn());
            continue;
        }
        // for performance reasons, we don't use Position.bb2vec to pick a random move
        int r = 1 + twister_2.randInt(popcount(moves_bb) - 1);
        int m = 64 - rth_setbit_position(moves_bb, r);
        pos.make_move(m, (Color)pos.whose_turn());
    }
    return pos.outcome();
}
