# DEPRECATED: this script is no longer used!!
# this script is specifically designed to work with the CNNComputerAgent

import keras
import numpy as np
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'

import classes
import data_helper as DataHelper


# use a pretrained keras model to predict a move
# board is a (8, 8, 2) numpy array
# legals is a (1, 60) numpy array indicating legal moves
# returns a move in range [0, 63]
def predict_move(model, board, legals):
    input_tensor = np.expand_dims(board, axis=0)
    output_tensor = model(input_tensor)
    return classes.Class2Square[np.argmax(np.multiply(output_tensor, legals))]


if __name__ == "__main__":

    # load models
    # because this script is invoked by system(python3 ...) in C++ in ../
    # we need to specify move_predictor/... prefix in path
    model = keras.models.load_model("move_predictor/trained_symmetric_2021-05-16")
    model.load_weights("move_predictor/best_symmetric.h5")

    # bb.temp contains two lines
    # first line is blackBB in decimal digits
    # second line is whiteBB in decimal digits
    # third line is legal moves in decimal digits
    with open("bb.temp", "r") as file:
        lines = file.readlines()
        blackBB = int(lines[0].strip())
        whiteBB = int(lines[1].strip())
        legals = int(lines[2].strip())
        black_np = np.fliplr(np.reshape(np.asarray([int(b) for b in bin(blackBB)[2:].zfill(64)], dtype=np.uint8), (-1, 8)))
        white_np = np.fliplr(np.reshape(np.asarray([int(b) for b in bin(whiteBB)[2:].zfill(64)], dtype=np.uint8), (-1, 8)))
        legals = np.delete(np.asarray([int(b) for b in bin(legals)[2:].zfill(64)][::-1], dtype=np.uint8), [27, 28, 35, 36])
        board = np.stack((black_np, white_np), axis=-1)

    move = predict_move(model, board, legals)
    print(move)
