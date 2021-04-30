import sys
import numpy as np


# some utility tools that help process the (state, action) data
# a (state, action) pair is represented as a 3-tuple (blackBB, whiteBB, move)
# the tools in this module removes duplicate pairs, and write them into numpy data matrices


# read the data given in file_path
# data is a byte stream where each (state, action) pair is 17 bytes
# 8 byte blackBB, 8 byte whiteBB, 1 byte move
def read_data(file_path):
    sa_pairs = set()
    with open(file_path, "rb") as f:
        while True:
            black = f.read(8)
            if not black:
                break
            white = f.read(8)
            move = f.read(1)
            blackBB = int.from_bytes(black, byteorder="little")
            whiteBB = int.from_bytes(white, byteorder="little")
            move = int.from_bytes(move, byteorder="little")
            # remove duplicates
            sa_pairs.add((blackBB, whiteBB, move))
    return sa_pairs


# given a list of (state, action) pairs, write each state into a (8,8,2) numpy array
# and then return a list "labels" of correct moves
# the IDs are just 0-based indices, and can be used to index labels to find the correct move
def write_numpy(sa_pairs):
    labels = []
    for i in range(len(sa_pairs)):
        blackBB = sa_pairs[i][0]
        whiteBB = sa_pairs[i][1]
        move = sa_pairs[i][2]
        labels.append(move)
        black_np = np.fliplr(np.reshape(np.asarray([int(b) for b in bin(blackBB)[2:].zfill(64)], dtype=np.uint8), (-1, 8)))
        white_np = np.fliplr(np.reshape(np.asarray([int(b) for b in bin(whiteBB)[2:].zfill(64)], dtype=np.uint8), (-1, 8)))
        state = np.stack((black_np, white_np), axis=-1)
        np.save("./data/" + str(i) + ".npy", state)
    return labels


if __name__ == "__main__":
    sa_pairs = read_data("../data.txt")
    # Total number of (state, action) pairs: 5377484
    # Total number of (state, action) pairs: 42991908 (for symmetrically augmented)
    print("Total number of (state, action) pairs: {}".format(len(sa_pairs)))

    sa_pairs = list(sa_pairs)
    labels = write_numpy(sa_pairs)

    sys.exit()

