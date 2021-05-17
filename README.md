# Othello

This repo contains a bunch of code for an AI agent that plays the game of Othello using Monte Carlo Tree Search and CNN based methods.

### How to build and run

Clone this repository. Then, make sure you have installed [frugally-deep](https://github.com/Dobiasd/frugally-deep) by following the instructions given in the link. Also, make sure that your compiler (g++ or clang++) supports the C++14 standard. To build, simply do
```
$ make clean; make -j
```
If you want to run the Python scripts, make sure you have installed TensorFlow and Keras.

If you want to correctly compile and run `mcts_v_edax.cpp`, you need to download [Edax](https://github.com/abulmo/edax-reversi) and put the required data and executable in a folder called "Edax". You also need to change the `system` command in `mcts_v_edax.cpp` to correctly refer to the Edax executable. Once you do that, run the following to compile:
```
$ make clean; make mcts_v_edax
```

### Files

At the root level are a bunch of C++ files, header files, and a Makefile for compilation. The `database` folder contains `wtb` files which are the game database files from the [French Othello Federation](https://www.ffothello.org/). The `move_predictor` folder contains python scripts for training, evaluating, and using a convolutional neural net that predicts moves from Othello board positions. The files `best_small.h5` and `best_symmetric.h5` are the weights with highest validation accuracy based on the unaugmented and the augmented symmetrized datasets, respectively. The files `trained_small.h5` and `trained_symmetric.h5` are complete saved models in HDF5 format. The two folders `trained_small_2021-05-16` and `trained_symmetric_2021-05-16` also contain complete saved models. They can be directly loaded in Python by doing `keras.models.load_model("...")`. The two JSON files are transformed versions of the complete models that are produced by frugally-deep and are used in running the CNN models in C++.

Raw training data is not included in this repo due to file size restrictions. You can generate training data by using `parser.cpp` and `move_predictor/data_helper.py` on the WTHOR database, or you can write your own scripts for generating data and use your own Othello game database.
