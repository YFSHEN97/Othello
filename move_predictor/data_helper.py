import sys
import pickle
import numpy as np

import classes


# some utility tools that help process the (state, action) data
# a (state, action) pair is represented as a 3-tuple (blackBB, whiteBB, move)
# in binary format, a pair takes 17 bytes, 8 bytes for blackBB, 8 bytes for whiteBB, and 1 byte for move


# this function reads the binary data (17 byte format) in file_path
# remove duplicates, and writes the result back into another file on the disk in binary format
def unduplicate_data(file_path):
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
            sa_pairs.add((blackBB, whiteBB, move))
    sa_pairs = list(sa_pairs)
    print("Total number of (state, action) pairs: {}".format(len(sa_pairs)))
    with open(file_path + ".undup", "wb") as f:
        for sa_pair in sa_pairs:
            blackBB = sa_pair[0]
            whiteBB = sa_pair[1]
            move = sa_pair[2]
            for i in range(8):
                c = (blackBB & 0xff)
                f.write(c.to_bytes(1, "little"))
                blackBB >>= 8
            for i in range(8):
                c = (whiteBB & 0xff)
                f.write(c.to_bytes(1, "little"))
                whiteBB >>= 8
            f.write(move.to_bytes(1, "little"))
    return


# this function reads data in binary format pointed to by file_path
# creates a dictionary that map sample ID's to their labels
# and serializes this dictionary to a file
# ID's are numbers (0-based indexes) based on a sample's location in the data file
# labels are the correct moves of (state, action) pairs, mapped to labels according to Square2Class
def create_labels(file_path):
    labels = dict()
    sample_id = 0
    with open(file_path, "rb") as f:
        while True:
            black = f.read(8)
            if not black:
                break
            white = f.read(8)
            move = f.read(1)
            labels[sample_id] = classes.Square2Class[int.from_bytes(move, byteorder="little")]
            sample_id += 1
    # serialize the dictionary
    with open(file_path + ".labels", 'wb') as handle:
        pickle.dump(labels, handle, protocol=pickle.HIGHEST_PROTOCOL)
    # # sanity check
    # with open(file_path + ".labels", 'rb') as handle:
    #     b = pickle.load(handle)
    # print(len(labels))
    # print(labels == b)
    return


# seek the given data entry in the binary data file pointed to by the file object
# index is 0-based, specifying which data entry to retrieve
# caller must guarantee that index is not out of range
# returns a (8,8,2) numpy array representing that particular sample
def seek_datum(file, index):
    file.seek(index * 17)
    black = file.read(8)
    white = file.read(8)
    blackBB = int.from_bytes(black, byteorder="little")
    whiteBB = int.from_bytes(white, byteorder="little")
    black_np = np.fliplr(np.reshape(np.asarray([int(b) for b in bin(blackBB)[2:].zfill(64)], dtype=np.uint8), (-1, 8)))
    white_np = np.fliplr(np.reshape(np.asarray([int(b) for b in bin(whiteBB)[2:].zfill(64)], dtype=np.uint8), (-1, 8)))
    state = np.stack((black_np, white_np), axis=-1)
    return state


if __name__ == "__main__":

    # Total number of (state, action) pairs: 5377484
    # Total number of (state, action) pairs: 42991908 (for symmetrically augmented)

    sys.exit()

