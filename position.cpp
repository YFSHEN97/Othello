#include <iostream>
#include <string>
#include "bitboard.h"
#include "position.h"

using namespace std;


// constructor for the initial game state of a new Othello game
Position::Position()
{
    uprightBB[BLACK] = 0x0000001008000000;
    uprightBB[WHITE] = 0x0000000810000000;
    rotate90BB[BLACK] = rotate90_cw(uprightBB[BLACK]);
    rotate90BB[WHITE] = rotate90_cw(uprightBB[WHITE]);
    rotate45cwBB[BLACK] = pseudoRotate45_cw(uprightBB[BLACK]);
    rotate45cwBB[WHITE] = pseudoRotate45_cw(uprightBB[WHITE]);
    rotate45ccwBB[BLACK] = pseudoRotate45_ccw(uprightBB[BLACK]);
    rotate45ccwBB[WHITE] = pseudoRotate45_ccw(uprightBB[WHITE]);
    passed[BLACK] = false;
    passed[WHITE] = false;
    sideToMove = BLACK;
}


// copy constructor
Position::Position(const Position& position)
{
    uprightBB[BLACK] = position.uprightBB[BLACK];
    uprightBB[WHITE] = position.uprightBB[WHITE];
    rotate90BB[BLACK] = position.rotate90BB[BLACK];
    rotate90BB[WHITE] = position.rotate90BB[WHITE];
    rotate45cwBB[BLACK] = position.rotate45cwBB[BLACK];
    rotate45cwBB[WHITE] = position.rotate45cwBB[WHITE];
    rotate45ccwBB[BLACK] = position.rotate45ccwBB[BLACK];
    rotate45ccwBB[WHITE] = position.rotate45ccwBB[WHITE];
    passed[BLACK] = position.passed[BLACK];
    passed[WHITE] = position.passed[WHITE];
    sideToMove = position.sideToMove;
}


// create all moves for the given player in the current position
// for the sake of computation speed, this doesn't use any loops or function calls
// all values are hardcoded for maximum efficiency
Bitboard Position::generate_moves(Color c)
{
    Bitboard black, white, moves, all_moves = 0;
    // find all row moves in upright bitboard
    // use 0xff to extract the last 8 bits (a row)
    moves = 0;
    black  = uprightBB[BLACK] & 0xff;
    white  = uprightBB[WHITE] & 0xff;
    moves |= (Bitboard)Moves[black][white][c];
    black  = (uprightBB[BLACK] >> 8) & 0xff;
    white  = (uprightBB[WHITE] >> 8) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 8;
    black  = (uprightBB[BLACK] >> 16) & 0xff;
    white  = (uprightBB[WHITE] >> 16) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 16;
    black  = (uprightBB[BLACK] >> 24) & 0xff;
    white  = (uprightBB[WHITE] >> 24) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 24;
    black  = (uprightBB[BLACK] >> 32) & 0xff;
    white  = (uprightBB[WHITE] >> 32) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 32;
    black  = (uprightBB[BLACK] >> 40) & 0xff;
    white  = (uprightBB[WHITE] >> 40) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 40;
    black  = (uprightBB[BLACK] >> 48) & 0xff;
    white  = (uprightBB[WHITE] >> 48) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 48;
    black  = (uprightBB[BLACK] >> 56) & 0xff;
    white  = (uprightBB[WHITE] >> 56) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 56;
    all_moves |= moves;
    // find all "row" moves in the rotate90 bitboard
    moves = 0;
    black  = rotate90BB[BLACK] & 0xff;
    white  = rotate90BB[WHITE] & 0xff;
    moves |= (Bitboard)Moves[black][white][c];
    black  = (rotate90BB[BLACK] >> 8) & 0xff;
    white  = (rotate90BB[WHITE] >> 8) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 8;
    black  = (rotate90BB[BLACK] >> 16) & 0xff;
    white  = (rotate90BB[WHITE] >> 16) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 16;
    black  = (rotate90BB[BLACK] >> 24) & 0xff;
    white  = (rotate90BB[WHITE] >> 24) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 24;
    black  = (rotate90BB[BLACK] >> 32) & 0xff;
    white  = (rotate90BB[WHITE] >> 32) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 32;
    black  = (rotate90BB[BLACK] >> 40) & 0xff;
    white  = (rotate90BB[WHITE] >> 40) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 40;
    black  = (rotate90BB[BLACK] >> 48) & 0xff;
    white  = (rotate90BB[WHITE] >> 48) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 48;
    black  = (rotate90BB[BLACK] >> 56) & 0xff;
    white  = (rotate90BB[WHITE] >> 56) & 0xff;
    moves |= ((Bitboard)Moves[black][white][c]) << 56;
    all_moves |= rotate90_ccw(moves);
    // find all "row" moves (aka diagonal moves) in the rotate45_cw bitboard
    moves = 0;
    black  = rotate45cwBB[BLACK] & 0xff;
    white  = rotate45cwBB[WHITE] & 0xff;
    moves |= (Bitboard)Moves[black][white][c];                  // A1 - H8 diagonal
    black  = (rotate45cwBB[BLACK] >> 8) & 0x7f;
    white  = (rotate45cwBB[WHITE] >> 8) & 0x7f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x7f)) << 8;  // A2 - G8 diagonal
    black  = (rotate45cwBB[BLACK] >> 16) & 0x3f;
    white  = (rotate45cwBB[WHITE] >> 16) & 0x3f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x3f)) << 16; // A3 - F8 diagonal
    black  = (rotate45cwBB[BLACK] >> 24) & 0x1f;
    white  = (rotate45cwBB[WHITE] >> 24) & 0x1f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x1f)) << 24; // A4 - E8 diagonal
    black  = (rotate45cwBB[BLACK] >> 32) & 0xf;
    white  = (rotate45cwBB[WHITE] >> 32) & 0xf;
    moves |= ((Bitboard)(Moves[black][white][c] & 0xf)) << 32;  // A5 - D8 diagonal
    black  = (rotate45cwBB[BLACK] >> 40) & 0x7;
    white  = (rotate45cwBB[WHITE] >> 40) & 0x7;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x7)) << 40;  // A6 - C8 diagonal
    black  = (rotate45cwBB[BLACK] >> 29) & 0x7;
    white  = (rotate45cwBB[WHITE] >> 29) & 0x7;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x7)) << 29;  // F1 - H3 diagonal
    black  = (rotate45cwBB[BLACK] >> 36) & 0xf;
    white  = (rotate45cwBB[WHITE] >> 36) & 0xf;
    moves |= ((Bitboard)(Moves[black][white][c] & 0xf)) << 36;  // E1 - H4 diagonal
    black  = (rotate45cwBB[BLACK] >> 43) & 0x1f;
    white  = (rotate45cwBB[WHITE] >> 43) & 0x1f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x1f)) << 43; // D1 - H5 diagonal
    black  = (rotate45cwBB[BLACK] >> 50) & 0x3f;
    white  = (rotate45cwBB[WHITE] >> 50) & 0x3f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x3f)) << 50; // C1 - H6 diagonal
    black  = (rotate45cwBB[BLACK] >> 57) & 0x7f;
    white  = (rotate45cwBB[WHITE] >> 57) & 0x7f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x7f)) << 57; // B1 - H7 diagonal
    all_moves |= pseudoRotate45_cw_inverse(moves);
    // find all "row" moves (aka antidiagonal moves) in the rotate45_ccw bitboard
    moves = 0;
    black  = rotate45ccwBB[BLACK] & 0xff;
    white  = rotate45ccwBB[WHITE] & 0xff;
    moves |= (Bitboard)Moves[black][white][c];                  // A8 - H1 diagonal
    black  = (rotate45ccwBB[BLACK] >> 9) & 0x7f;
    white  = (rotate45ccwBB[WHITE] >> 9) & 0x7f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x7f)) << 9;  // B8 - H2 diagonal
    black  = (rotate45ccwBB[BLACK] >> 18) & 0x3f;
    white  = (rotate45ccwBB[WHITE] >> 18) & 0x3f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x3f)) << 18; // C8 - H3 diagonal
    black  = (rotate45ccwBB[BLACK] >> 27) & 0x1f;
    white  = (rotate45ccwBB[WHITE] >> 27) & 0x1f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x1f)) << 27; // D8 - H4 diagonal
    black  = (rotate45ccwBB[BLACK] >> 36) & 0xf;
    white  = (rotate45ccwBB[WHITE] >> 36) & 0xf;
    moves |= ((Bitboard)(Moves[black][white][c] & 0xf)) << 36;  // E8 - H5 diagonal
    black  = (rotate45ccwBB[BLACK] >> 45) & 0x7;
    white  = (rotate45ccwBB[WHITE] >> 45) & 0x7;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x7)) << 45;  // F8 - H6 diagonal
    black  = (rotate45ccwBB[BLACK] >> 24) & 0x7;
    white  = (rotate45ccwBB[WHITE] >> 24) & 0x7;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x7)) << 24;  // A3 - C1 diagonal
    black  = (rotate45ccwBB[BLACK] >> 32) & 0xf;
    white  = (rotate45ccwBB[WHITE] >> 32) & 0xf;
    moves |= ((Bitboard)(Moves[black][white][c] & 0xf)) << 32;  // A4 - D1 diagonal
    black  = (rotate45ccwBB[BLACK] >> 40) & 0x1f;
    white  = (rotate45ccwBB[WHITE] >> 40) & 0x1f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x1f)) << 40; // A5 - E1 diagonal
    black  = (rotate45ccwBB[BLACK] >> 48) & 0x3f;
    white  = (rotate45ccwBB[WHITE] >> 48) & 0x3f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x3f)) << 48; // A6 - F1 diagonal
    black  = (rotate45ccwBB[BLACK] >> 56) & 0x7f;
    white  = (rotate45ccwBB[WHITE] >> 56) & 0x7f;
    moves |= ((Bitboard)(Moves[black][white][c] & 0x7f)) << 56; // A7 - G1 diagonal
    all_moves |= pseudoRotate45_ccw_inverse(moves);

    return all_moves;
}


// make the given move (must be legal) for the given player in the current position
// legal move means: the square must be currently unoccupied, and there must be at least 1 capture
void Position::make_move(int move, Color c)
{
    if (move < 0) return pass(c);
    // find all the captures (in all 4 directions)
    unsigned char offset, length, index;
    unsigned char black, white;
    Bitboard captures, all_captures = 0;
    // horizontal
    offset = CapturesOffsetUpright[move];
    index = CapturesIndexUpright[move];
    black = (uprightBB[BLACK] >> offset) & 0xff;
    white = (uprightBB[WHITE] >> offset) & 0xff;
    captures = ((Bitboard)Captures[black][white][c][index]) << offset;
    all_captures |= captures;
    // vertical
    offset = CapturesOffsetRotate90[move];
    index = CapturesIndexRotate90[move];
    black = (rotate90BB[BLACK] >> offset) & 0xff;
    white = (rotate90BB[WHITE] >> offset) & 0xff;
    captures = ((Bitboard)Captures[black][white][c][index]) << offset;
    all_captures |= rotate90_ccw(captures);
    // diagonal
    offset = CapturesOffsetRotate45CW[move];
    length = CapturesLengthRotate45CW[move];
    index = CapturesIndexRotate45CW[move];
    black = (rotate45cwBB[BLACK] >> offset) & ((1 << length) - 1);
    white = (rotate45cwBB[WHITE] >> offset) & ((1 << length) - 1);
    captures = ((Bitboard)Captures[black][white][c][index]) << offset;
    all_captures |= pseudoRotate45_cw_inverse(captures);
    // antidiagonal
    offset = CapturesOffsetRotate45CCW[move];
    length = CapturesLengthRotate45CCW[move];
    index = CapturesIndexRotate45CCW[move];
    black = (rotate45ccwBB[BLACK] >> offset) & ((1 << length) - 1);
    white = (rotate45ccwBB[WHITE] >> offset) & ((1 << length) - 1);
    captures = ((Bitboard)Captures[black][white][c][index]) << offset;
    all_captures |= pseudoRotate45_ccw_inverse(captures);
    // place the new piece, and then flip all captured pieces
    Bitboard m = 1ULL << move;
    uprightBB[c]   |= m;
    uprightBB[c]   ^= all_captures;
    uprightBB[c^1] ^= all_captures;
    rotate90BB[BLACK] = rotate90_cw(uprightBB[BLACK]);
    rotate90BB[WHITE] = rotate90_cw(uprightBB[WHITE]);
    rotate45cwBB[BLACK] = pseudoRotate45_cw(uprightBB[BLACK]);
    rotate45cwBB[WHITE] = pseudoRotate45_cw(uprightBB[WHITE]);
    rotate45ccwBB[BLACK] = pseudoRotate45_ccw(uprightBB[BLACK]);
    rotate45ccwBB[WHITE] = pseudoRotate45_ccw(uprightBB[WHITE]);
    // update game state
    passed[c] = false;
    sideToMove ^= 1;
    return;
}


// print the board to the command line in a human-friendly format
void Position::pretty(void)
{
    for (int i = 56; i >= 0; i -= 8) {
        cout << "\033[33;1m" << ((i >> 3) + 1) << "\033[0m" << " ";
        for (int j = i; j < i+8; j++) {
            if ((uprightBB[BLACK] >> j) & 1) cout << "\033[31mO\033[0m ";
            else if ((uprightBB[WHITE] >> j) & 1) cout << "O ";
            else cout << ". ";
        }
        cout << endl;
    }
    cout << "  \033[33;1ma b c d e f g h\033[0m" << endl;
    return;
}


// convert a bitboard containing moves to a vector
vector<int> Position::bb2vec(Bitboard move)
{
    vector<int> res;
    for (int i = 0; i < 64; i++) {
        if (move & 1) res.push_back(i);
        move >>= 1;
    }
    return res;
}


// output which player's turn it is
int Position::whose_turn(void)
{
    return sideToMove;
}


// determine if the game is over
bool Position::game_over(void)
{
    return ((~(uprightBB[BLACK] | uprightBB[WHITE]) == 0) ||   // all squares are occupied
            (passed[BLACK] && passed[WHITE]) ||                // neither player has available moves
            (uprightBB[BLACK] == 0 || uprightBB[WHITE] == 0)); // either color is 100% captured
}


// determine who won the game (or if it is a draw) GIVEN that game is over
int Position::outcome(void)
{
    int b = popcount(uprightBB[BLACK]);
    int w = popcount(uprightBB[WHITE]);
    if (b > w) return 1;
    else if (b < w) return -1;
    else return 0;
}


// pass a turn for the given player (only called when player has no legal moves)
void Position::pass(Color c)
{
    sideToMove ^= 1;
    passed[c] = true;
}

// accessors
Bitboard Position::get_blackBB(void) { return uprightBB[BLACK]; }
Bitboard Position::get_whiteBB(void) { return uprightBB[WHITE]; }


