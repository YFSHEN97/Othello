import keras
import numpy as np

import classes
import data_helper as DataHelper


# use a pretrained keras model to predict a move
# board is a (8, 8, 2) numpy array
# returns a move in range [0, 63]
def predict_move(model, board):
    input_tensor = np.expand_dims(board, axis=0)
    output_tensor = model(input_tensor)
    return classes.Class2Square[np.argmax(output_tensor)]


if __name__ == "__main__":

    model = keras.models.load_model("trained_small_2021-05-16")
    model.load_weights("best_small.h5")

    with open("data.txt", "rb") as file:
        board = DataHelper.seek_datum(file, 100)
    
    move = predict_move(model, board)
    print("Predicted move is {}".format(move))
