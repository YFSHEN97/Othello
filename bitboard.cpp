#include <cstdint>
#include <iostream>
#include "bitboard.h"

using namespace std;


// print bitboards for debugging
void print_board(Bitboard b) {
    for (int i = 56; i >= 0; i -= 8) {
        for (int j = i; j < i+8; j++) {
            int digit = (b >> j) & 1ULL;
            if (digit) cout << "1 ";
            else cout << ". ";
        }
        cout << endl;
    }
    cout << endl;
    return;
}


// a helper for computing move values
static Move computeMoves(unsigned char self, unsigned char enemy, int length)
{
    unsigned char unoccupied = ~(self | enemy);
    unsigned char captured;
    unsigned char moves = 0;
    captured = (self << 1) & enemy;
    for (int i = 0; i < length - 3; i++)
        captured |= (captured << 1) & enemy;
    moves |= (captured << 1) & unoccupied;
    captured = (self >> 1) & enemy;
    for (int i = 0; i < length - 3; i++)
        captured |= (captured >> 1) & enemy;
    moves |= (captured >> 1) & unoccupied;
    return moves;
}

// a helper for computing capture values
static Capture computeCaptures(unsigned char self, unsigned char enemy, int length, int loc)
{
    unsigned char unoccupied = ~(self | enemy);
    unsigned char piece_mask;
    unsigned char left_captured, right_captured;
    // try to place a piece of SELF at LOC, and then compute captures for it
    piece_mask = 1 << loc;
    if ((piece_mask & unoccupied) == 0) return 0;
    // capture to the right, use <<
    right_captured = (piece_mask << 1) & enemy;
    for (int i = 0; i < length - 3; i++)
        right_captured |= (right_captured << 1) & enemy;
    if (((right_captured << 1) & self) == 0) right_captured = 0;
    // capture to the left, use >>
    left_captured = (piece_mask >> 1) & enemy;
    for (int i = 0; i < length - 3; i++)
        left_captured |= (left_captured >> 1) & enemy;
    if (((left_captured >> 1) & self) == 0) left_captured = 0;
    return right_captured | left_captured;
}


Move Moves[256][256][2];
Capture Captures[256][256][2][8];

// this function initializes all the move and capture cache values
void computeMovesCaptures(void)
{
    unsigned int i, j, k;
    for (i = 0; i < 256; i++) {
        for (j = 0; j < 256; j++) {
            Moves[i][j][BLACK] = computeMoves(i, j, 8);
            Moves[i][j][WHITE] = computeMoves(j, i, 8);
            for (k = 0; k < 8; k++) {
                Captures[i][j][BLACK][k] = computeCaptures(i, j, 8, k);
                Captures[i][j][WHITE][k] = computeCaptures(j, i, 8, k);
            }
        }
    }
}

unsigned char CapturesOffsetUpright[64];
unsigned char CapturesOffsetRotate90[64];
unsigned char CapturesOffsetRotate45CW[64];
unsigned char CapturesOffsetRotate45CCW[64];
unsigned char CapturesLengthRotate45CW[64];
unsigned char CapturesLengthRotate45CCW[64];

unsigned char CapturesIndexUpright[64];
unsigned char CapturesIndexRotate90[64];
unsigned char CapturesIndexRotate45CW[64];
unsigned char CapturesIndexRotate45CCW[64];

// this function precomputes all the captures offsets/lengths
void computeCapturesTables(void)
{
    // upright board offset
    for (int i = 0; i < 64; i++)
        CapturesOffsetUpright[i] = (i >> 3) * 8;
    // rotate90 board offset
    for (int i = 0; i < 64; i++)
        CapturesOffsetRotate90[i] = (7 - (i & 7)) * 8;
    // rotate45 cw board offset and length
    for (int i = 0; i < 64; i++) {
        CapturesOffsetRotate45CW[i] = (((i >> 3) + (8 - (i & 7))) & 7) * 8;
        if (i % 9 == 0) {
            CapturesLengthRotate45CW[i] = 8;
        } else if (i % 9 == 8 || i % 9 == 1) {
            CapturesLengthRotate45CW[i] = 7;
        } else if (i % 9 == 2) {
            CapturesLengthRotate45CW[i] = (i >= 56) ? 1 : 6;
        } else if (i % 9 == 3) {
            CapturesLengthRotate45CW[i] = (i >= 48) ? 2 : 5;
        } else if (i % 9 == 4) {
            CapturesLengthRotate45CW[i] = (i >= 40) ? 3 : 4;
        } else if (i % 9 == 5) {
            CapturesLengthRotate45CW[i] = (i >= 32) ? 4 : 3;
        } else if (i % 9 == 6) {
            CapturesLengthRotate45CW[i] = (i >= 24) ? 5 : 2;
        } else if (i % 9 == 7) {
            CapturesLengthRotate45CW[i] = (i >= 16) ? 6 : 1;
        } else cout << "bug!!" << endl;
    }
    for (int i = 0; i < 64; i++) {
        switch(CapturesOffsetRotate45CW[i]) {
            case 0: break;
            case 8: if (i <= 7) CapturesOffsetRotate45CW[i] += 7; break;
            case 16: if (i <= 15) CapturesOffsetRotate45CW[i] += 6; break;
            case 24: if (i <= 23) CapturesOffsetRotate45CW[i] += 5; break;
            case 32: if (i <= 31) CapturesOffsetRotate45CW[i] += 4; break;
            case 40: if (i <= 39) CapturesOffsetRotate45CW[i] += 3; break;
            case 48: if (i <= 47) CapturesOffsetRotate45CW[i] += 2; break;
            case 56: if (i <= 55) CapturesOffsetRotate45CW[i] += 1; break;
            default: cout << "bug!!" << endl;
        }
    }
    // rotate45 ccw board offset and length
    for (int i = 0; i < 64; i++) {
        CapturesOffsetRotate45CCW[i] = (((i >> 3) + (1 + (i & 7))) & 7) * 8;
        if (i % 7 == 0) {
            CapturesLengthRotate45CCW[i] = (i == 0 || i == 63) ? 1 : 8;
        } else if (i % 7 == 1) {
            CapturesLengthRotate45CCW[i] = (i <= 8) ? 2 : 7;
        } else if (i % 7 == 2) {
            CapturesLengthRotate45CCW[i] = (i <= 16) ? 3 : 6;
        } else if (i % 7 == 3) {
            CapturesLengthRotate45CCW[i] = (i <= 24) ? 4 : 5;
        } else if (i % 7 == 4) {
            CapturesLengthRotate45CCW[i] = (i <= 32) ? 5 : 4;
        } else if (i % 7 == 5) {
            CapturesLengthRotate45CCW[i] = (i <= 40) ? 6 : 3;
        } else if (i % 7 == 6) {
            CapturesLengthRotate45CCW[i] = (i <= 48) ? 7 : 2;
        } else cout << "bug!!!" << endl;
    }
    for (int i = 0; i < 64; i++) {
        switch(CapturesOffsetRotate45CCW[i]) {
            case 0: break;
            case 8: if (i >= 15) CapturesOffsetRotate45CCW[i] += 1; break;
            case 16: if (i >= 23) CapturesOffsetRotate45CCW[i] += 2; break;
            case 24: if (i >= 31) CapturesOffsetRotate45CCW[i] += 3; break;
            case 32: if (i >= 39) CapturesOffsetRotate45CCW[i] += 4; break;
            case 40: if (i >= 47) CapturesOffsetRotate45CCW[i] += 5; break;
            case 48: if (i >= 55) CapturesOffsetRotate45CCW[i] += 6; break;
            case 56: if (i >= 63) CapturesOffsetRotate45CCW[i] += 7; break;
            default: cout << "bug!!!" << endl;
        }
    }

    // compute indices
    for (int i = 0; i < 64; i++) {
        CapturesIndexUpright[i] = i & 7;
    }
    for (int i = 0; i < 64; i++) {
        CapturesIndexRotate90[i] = i >> 3;
    }
    for (int i = 0; i < 64; i++) {
        if (CapturesOffsetRotate45CW[i] % 8 == 0) {
            CapturesIndexRotate45CW[i] = (i - CapturesOffsetRotate45CW[i]) / 9;
        } else {
            CapturesIndexRotate45CW[i] = i / 9;
        }
    }
    for (int i = 0; i < 64; i++) {
        if (CapturesOffsetRotate45CCW[i] % 8 == 0) {
            if (CapturesOffsetRotate45CCW[i] == 0) CapturesIndexRotate45CCW[i] = 8 - i / 7;
            else CapturesIndexRotate45CCW[i] = (((CapturesOffsetRotate45CCW[i] + 56) % 64) >> 3) - i / 7;
        } else {
            if (i == 63) CapturesIndexRotate45CCW[i] = 0;
            else CapturesIndexRotate45CCW[i] = 8 - i / 7;
        }
    }
    return;
}
