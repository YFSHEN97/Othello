#ifndef POSITION_H
#define POSITION_H

#include <vector>
#include "bitboard.h"


class Position {
public:
    // constructor
    Position ();
    // copy constructor
    Position (const Position& position);
    // create all moves for the given player in the current position
    Bitboard generate_moves(Color c);
    // make the given move (must be legal) for the given player in the current position
    void make_move(int move, Color c);
    // print the board to the command line in a human-friendly format
    void pretty(void);
    // convert a bitboard containing moves to a vector
    std::vector<int> bb2vec(Bitboard move);
    // output which player's turn it is
    int whose_turn(void);
    // determine if the game is over
    bool game_over(void);
    // determine who won the game (or if it is a draw); UNDEFINED behavior if game not over
    int outcome(void);
    // pass a turn for the given player (only called when player has no legal moves)
    void pass(Color c);
    // accessor for black pieces
    Bitboard get_blackBB(void);
    // accessor for white pieces
    Bitboard get_whiteBB(void);

private:
    // 8 bitboards, 4 for each color: upright, clockwise 90, clockwise 45, counterclockwise 45
    Bitboard uprightBB[COLOR_NUM];
    Bitboard rotate90BB[COLOR_NUM];
    Bitboard rotate45cwBB[COLOR_NUM];
    Bitboard rotate45ccwBB[COLOR_NUM];
    // two flags to record whether or not each player passed the last time they are supposed to move
    bool passed[COLOR_NUM];
    // flag indicating whose turn it is
    int sideToMove;
};


#endif
