# move indices range from 0 to 63 inclusive
# but 27, 28, 35, 36 are the starting squares and cannot possibly be legal moves


# this maps possible legal move index to its corresponding class label
Square2Class = {
    0 : 0,
    1 : 1,
    2 : 2,
    3 : 3,
    4 : 4,
    5 : 5,
    6 : 6,
    7 : 7,

    8 : 8,
    9 : 9,
    10: 10,
    11: 11,
    12: 12,
    13: 13,
    14: 14,
    15: 15,

    16: 16,
    17: 17,
    18: 18,
    19: 19,
    20: 20,
    21: 21,
    22: 22,
    23: 23,

    24: 24,
    25: 25,
    26: 26, # 27, 28 are skipped
    29: 27,
    30: 28,
    31: 29,

    32: 30,
    33: 31,
    34: 32, # 35, 36 are skipped
    37: 33,
    38: 34,
    39: 35,

    40: 36,
    41: 37,
    42: 38,
    43: 39,
    44: 40,
    45: 41,
    46: 42,
    47: 43,

    48: 44,
    49: 45,
    50: 46,
    51: 47,
    52: 48,
    53: 49,
    54: 50,
    55: 51,

    56: 52,
    57: 53,
    58: 54,
    59: 55,
    60: 56,
    61: 57,
    62: 58,
    63: 59
}


# this maps class label to its corresponding legal move index
Class2Square = {
    0 : 0,
    1 : 1,
    2 : 2,
    3 : 3,
    4 : 4,
    5 : 5,
    6 : 6,
    7 : 7,

    8 : 8,
    9 : 9,
    10: 10,
    11: 11,
    12: 12,
    13: 13,
    14: 14,
    15: 15,

    16: 16,
    17: 17,
    18: 18,
    19: 19,
    20: 20,
    21: 21,
    22: 22,
    23: 23,

    24: 24,
    25: 25,
    26: 26, # 27, 28 are skipped
    27: 29,
    28: 30,
    29: 31,

    30: 32,
    31: 33,
    32: 34, # 35, 36 are skipped
    33: 37,
    34: 38,
    35: 39,

    36: 40,
    37: 41,
    38: 42,
    39: 43,
    40: 44,
    41: 45,
    42: 46,
    43: 47,

    44: 48,
    45: 49,
    46: 50,
    47: 51,
    48: 52,
    49: 53,
    50: 54,
    51: 55,

    52: 56,
    53: 57,
    54: 58,
    55: 59,
    56: 60,
    57: 61,
    58: 62,
    59: 63
}