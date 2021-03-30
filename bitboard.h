#ifndef BITBOARD_H
#define BITBOARD_H

#include <cstdint>


typedef uint64_t Bitboard;
typedef unsigned char Move;
typedef unsigned char Capture;


enum Color : int {
    BLACK, WHITE, COLOR_NUM = 2
};


// given a row of N (N = 3, 4, ..., 8) squares and white pieces and black pieces
// calculate the legal moves in that row and return the moves as set bits
// for shorter rows < 8, we only need to truncate the leading bits to get correct moves
// extern uint8_t Moves [BLACK_PIECES] [WHITE_PIECES] [COLOR]
extern Move Moves[256][256][2];

// given a row of N (N = 3, 4, ..., 8) squares and white pieces and black pieces
// calculate which pieces are flipped (captured) if a piece with given COLOR is PLACEed at a location
// 0 if no piece is flipped (captured)
// extern uint8_t Captures [BLACK_PIECES] [WHITE_PIECES] [COLOR] [PLACE]
extern Capture Captures[256][256][2][8];

// these tables map a move index (range 0-63) to a offset (range 0-63)
// and in the case of 45 degrees rotation, a length
// to help quickly obtain the "row" config for Captures lookup
extern unsigned char CapturesOffsetUpright[64];
extern unsigned char CapturesOffsetRotate90[64];
extern unsigned char CapturesOffsetRotate45CW[64];
extern unsigned char CapturesOffsetRotate45CCW[64];
extern unsigned char CapturesLengthRotate45CW[64];
extern unsigned char CapturesLengthRotate45CCW[64];
extern unsigned char CapturesIndexUpright[64];
extern unsigned char CapturesIndexRotate90[64];
extern unsigned char CapturesIndexRotate45CW[64];
extern unsigned char CapturesIndexRotate45CCW[64];

// this function initializes all the move and capture cache values
void computeMovesCaptures(void);

// this function precomputes all the captures offsets/lengths/indices
void computeCapturesTables(void);

// print bitboards for debugging
void print_board(Bitboard b);


// an optimized way to count number of set bits in a 64-bit integer
inline int popcount(uint64_t i) {
     i = i - ((i >> 1) & 0x5555555555555555);
     i = (i & 0x3333333333333333) + ((i >> 2) & 0x3333333333333333);
     return (((i + (i >> 4)) & 0x0F0F0F0F0F0F0F0F) * 0x0101010101010101) >> 56;
}


// a function that returns the position of the set bit with given rank (r) in a uint64
inline unsigned int rth_setbit_position(uint64_t v, unsigned int r) {
  unsigned int s;      // Output: Resulting position of bit with rank r [1-64]
  uint64_t a, b, c, d; // Intermediate temporaries for bit count.
  unsigned int t;      // Bit count temporary.

  // Do a normal parallel bit count for a 64-bit integer,                     
  // but store all intermediate steps.                                        
  // a = (v & 0x5555...) + ((v >> 1) & 0x5555...);
  a =  v - ((v >> 1) & ~0UL/3);
  // b = (a & 0x3333...) + ((a >> 2) & 0x3333...);
  b = (a & ~0UL/5) + ((a >> 2) & ~0UL/5);
  // c = (b & 0x0f0f...) + ((b >> 4) & 0x0f0f...);
  c = (b + (b >> 4)) & ~0UL/0x11;
  // d = (c & 0x00ff...) + ((c >> 8) & 0x00ff...);
  d = (c + (c >> 8)) & ~0UL/0x101;
  t = (d >> 32) + (d >> 48);
  // Now do branchless select!                                                
  s  = 64;
  // if (r > t) {s -= 32; r -= t;}
  s -= ((t - r) & 256) >> 3; r -= (t & ((t - r) >> 8));
  t  = (d >> (s - 16)) & 0xff;
  // if (r > t) {s -= 16; r -= t;}
  s -= ((t - r) & 256) >> 4; r -= (t & ((t - r) >> 8));
  t  = (c >> (s - 8)) & 0xf;
  // if (r > t) {s -= 8; r -= t;}
  s -= ((t - r) & 256) >> 5; r -= (t & ((t - r) >> 8));
  t  = (b >> (s - 4)) & 0x7;
  // if (r > t) {s -= 4; r -= t;}
  s -= ((t - r) & 256) >> 6; r -= (t & ((t - r) >> 8));
  t  = (a >> (s - 2)) & 0x3;
  // if (r > t) {s -= 2; r -= t;}
  s -= ((t - r) & 256) >> 7; r -= (t & ((t - r) >> 8));
  t  = (v >> (s - 1)) & 0x1;
  // if (r > t) s--;
  s -= ((t - r) & 256) >> 8;
  s = 65 - s;

  return s;
}


// The following functions use some bit tricks from
// Chess programming Wiki to transform bitboard in 2D

inline Bitboard flip_horizontal(Bitboard b) {
    b = (b & 0xf0f0f0f0f0f0f0f0) >> 4 | (b & 0x0f0f0f0f0f0f0f0f) << 4;
    b = (b & 0xcccccccccccccccc) >> 2 | (b & 0x3333333333333333) << 2;
    b = (b & 0xaaaaaaaaaaaaaaaa) >> 1 | (b & 0x5555555555555555) << 1;
    return b;
}


inline Bitboard flip_vertical(Bitboard b) {
    b = ((b >>  8) & 0x00ff00ff00ff00ff) | ((b & 0x00ff00ff00ff00ff) <<  8);
    b = ((b >> 16) & 0x0000ffff0000ffff) | ((b & 0x0000ffff0000ffff) << 16);
    b = (b >> 32) | (b << 32);
    return b;
}


inline Bitboard flip_diag(Bitboard b) {
   Bitboard t;
   const Bitboard k1 = 0x5500550055005500;
   const Bitboard k2 = 0x3333000033330000;
   const Bitboard k4 = 0x0f0f0f0f00000000;
   t  = k4 & (b ^ (b << 28));
   b ^=       t ^ (t >> 28) ;
   t  = k2 & (b ^ (b << 14));
   b ^=       t ^ (t >> 14) ;
   t  = k1 & (b ^ (b <<  7));
   b ^=       t ^ (t >>  7) ;
   return b;
}


inline Bitboard flip_antidiag(Bitboard b) {
   Bitboard t;
   const Bitboard k1 = 0xaa00aa00aa00aa00;
   const Bitboard k2 = 0xcccc0000cccc0000;
   const Bitboard k4 = 0xf0f0f0f00f0f0f0f;
   t  =       b ^ (b << 36) ;
   b ^= k4 & (t ^ (b >> 36));
   t  = k2 & (b ^ (b << 18));
   b ^=       t ^ (t >> 18) ;
   t  = k1 & (b ^ (b <<  9));
   b ^=       t ^ (t >>  9) ;
   return b;
}


inline Bitboard rotate90_cw(Bitboard b) {
    return flip_diag(flip_horizontal(b));
}


inline Bitboard rotate90_ccw(Bitboard b) {
    return flip_antidiag(flip_horizontal(b));
}


inline Bitboard rotr(Bitboard n, unsigned char c) {
    return (n >> c) | (n << (64 - c));
}


inline Bitboard pseudoRotate45_cw (Bitboard b) {
   const Bitboard k1 = 0xAAAAAAAAAAAAAAAA;
   const Bitboard k2 = 0xCCCCCCCCCCCCCCCC;
   const Bitboard k4 = 0xF0F0F0F0F0F0F0F0;
   b ^= k1 & (b ^ rotr(b,  8));
   b ^= k2 & (b ^ rotr(b, 16));
   b ^= k4 & (b ^ rotr(b, 32));
   return b;
}


inline Bitboard pseudoRotate45_ccw (Bitboard b) {
   const Bitboard k1 = 0x5555555555555555;
   const Bitboard k2 = 0x3333333333333333;
   const Bitboard k4 = 0x0f0f0f0f0f0f0f0f;
   b ^= k1 & (b ^ rotr(b,  8));
   b ^= k2 & (b ^ rotr(b, 16));
   b ^= k4 & (b ^ rotr(b, 32));
   return b;
}


inline Bitboard pseudoRotate45_cw_inverse(Bitboard b) {
    return rotr(pseudoRotate45_ccw(b), 8);
}


inline Bitboard pseudoRotate45_ccw_inverse(Bitboard b) {
    return rotr(pseudoRotate45_cw(b), 8);
}


#endif
