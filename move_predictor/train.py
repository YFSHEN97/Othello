import pickle
import numpy as np

from keras.models import Sequential
from keras.layers import Conv2D, Flatten, Dense
from keras.optimizers import SGD
from keras.initializers import HeNormal
from keras.callbacks import ModelCheckpoint, TensorBoard, LearningRateScheduler
from keras.regularizers import l2

from data_generator import DataGenerator


# classifier model for 8*8 Othello boards with 60 output categories
def buildClassifier():
    # sequential structure from Keras
    classifier = Sequential()

    # Add our first convolutional layer
    classifier.add( Conv2D( filters=64,
                            kernel_size=(3,3),
                            padding='same',
                            data_format='channels_last',
                            input_shape=(8,8,2),
                            activation='relu',
                            kernel_initializer=HeNormal(),
                            kernel_regularizer=l2(5e-4),
                            name = 'firstConv64'
                            ))

    # Add second convolutional layer
    classifier.add( Conv2D( filters=64,
                            kernel_size=(3,3),
                            padding='same',
                            data_format='channels_last',
                            input_shape=(8,8,64),
                            activation = 'relu',
                            kernel_initializer=HeNormal(),
                            kernel_regularizer=l2(5e-4),
                            name = 'secondConv64'
                            ))
    
    # Add third convolutional layer
    classifier.add( Conv2D( filters=128,
                            kernel_size=(3,3),
                            padding='same',
                            data_format='channels_last',
                            input_shape=(8,8,64),
                            activation = 'relu',
                            kernel_initializer=HeNormal(),
                            kernel_regularizer=l2(5e-4),
                            name = 'firstConv128'
                            ))

    # Add third convolutional layer
    classifier.add( Conv2D( filters=128,
                            kernel_size=(3,3),
                            padding='same',
                            data_format='channels_last',
                            input_shape=(8,8,128),
                            activation = 'relu',
                            kernel_initializer=HeNormal(),
                            kernel_regularizer=l2(5e-4),
                            name = 'secondConv128'
                            ))

    # Flattening
    classifier.add( Flatten(name='flat') )

    # Add Fully connected layers
    classifier.add( Dense( units=128, activation='relu', kernel_regularizer=l2(5e-4), name='fc128') )
    classifier.add( Dense( units=60,  activation='softmax', kernel_regularizer=l2(5e-4), name='fc60'))

    # Compile the CNN
    sgd = SGD(lr=0.1, momentum=0.95)
    classifier.compile(optimizer=sgd, loss='categorical_crossentropy', metrics=['accuracy'])
    
    return classifier


def trainModel( model, batch_size=100, num_epochs=24 ):

    # create callbacks
    def lr_scheduler(epoch, lr):
        decay_rate = 0.95
        return lr * pow(decay_rate, epoch)
    scheduler = LearningRateScheduler(lr_scheduler, verbose=1)
    checkpoint = ModelCheckpoint("best.h5",
                        monitor='val_accuracy',
                        verbose=1,
                        save_best_only=True,
                        save_weights_only=False,
                        mode='max')
    callbacks = [scheduler, checkpoint]

    # prepare all the training data and labels
    total = 5377484
    train = 4000000
    data_labels_path = "data.undup.labels"
    partition = {
        "train": list(range(train)),
        "validation": list(range(train, total))
    }
    with open(data_labels_path, "rb") as handle:
        labels = pickle.load(handle)
    training_generator = DataGenerator(partition["train"], labels, batch_size=batch_size)
    validation_generator = DataGenerator(partition["validation"], labels, batch_size=batch_size)

    # train the model
    model.fit(training_generator,
                epochs=num_epochs,
                validation_data=validation_generator,
                callbacks=callbacks,
                workers=10,
                use_multiprocessing=True)
    
    return model


if __name__ == '__main__':
    
    model = buildClassifier()
    model = trainModel(model)
    model.save("trained_othello")

    