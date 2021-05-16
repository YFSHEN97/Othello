# this script generates batches for Keras on the fly
# instead of reading all of the data into memory at once
# reference: https://stanford.edu/~shervine/blog/keras-how-to-generate-data-on-the-fly

import numpy as np
import keras

import data_helper as DataHelper


class DataGenerator(keras.utils.Sequence):
    def __init__(self, data_source, list_IDs, labels, batch_size=30, dim=(8,8), n_channels=2,
                 n_classes=60, shuffle=True):
        self.data_source = data_source
        self.dim = dim
        self.batch_size = batch_size
        self.labels = labels
        self.list_IDs = list_IDs
        self.n_channels = n_channels
        self.n_classes = n_classes
        self.shuffle = shuffle
        self.on_epoch_end()

    def __len__(self):
        # calculate the number of batches per epoch
        return int(np.floor(len(self.list_IDs) / self.batch_size))

    def __getitem__(self, index):
        # generate indexes for the batch
        indexes = self.indexes[index*self.batch_size:(index+1)*self.batch_size]
        # find list of sample IDs to be included in this batch
        list_IDs_temp = [self.list_IDs[k] for k in indexes]
        # generate data
        X, y = self.__data_generation(list_IDs_temp)
        return X, y

    def on_epoch_end(self):
        # update indexes at the beginning and end of epochs
        # indexes are shuffled randomly if 
        self.indexes = np.arange(len(self.list_IDs))
        if self.shuffle == True:
            np.random.shuffle(self.indexes)

    def __data_generation(self, list_IDs_temp):
        # initialization
        X = np.empty((self.batch_size, *self.dim, self.n_channels))
        y = np.empty((self.batch_size), dtype=int)
        # pull data entries from the right places
        with open(self.data_source, "rb") as f:
            for i, ID in enumerate(list_IDs_temp):
                X[i,] = DataHelper.seek_datum(f, ID)
                y[i] = self.labels[ID]
        return X, keras.utils.to_categorical(y, num_classes=self.n_classes)
