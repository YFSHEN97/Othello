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
    sgd = SGD(lr=0.05, momentum=0.95)
    classifier.compile(optimizer=sgd, loss='categorical_crossentropy', metrics=['accuracy'])
    
    return classifier


def trainModel( model, small=True, batch_size=100, num_epochs=24 ):

    # create callbacks
    def lr_scheduler(epoch, lr):
        decay_rate = 0.95 if small else 0.8
        return lr * pow(decay_rate, epoch)
    scheduler = LearningRateScheduler(lr_scheduler, verbose=1)
    save_path = "best_small.h5" if small else "best_symmetric.h5"
    checkpoint = ModelCheckpoint(save_path,
                        monitor='val_accuracy',
                        verbose=1,
                        save_best_only=True,
                        save_weights_only=False,
                        mode='max')
    callbacks = [scheduler, checkpoint]

    # prepare all the training data and labels
    if small:
        total = 5377484
        train = 4000000
        data_path = "data.undup"
        data_labels_path = "data.undup.labels"
    else:
        total = 42991908
        train = 40000000
        data_path = "data_symmetric.undup"
        data_labels_path = "data_symmetric.undup.labels"

    partition = {
        "train": list(range(train)),
        "validation": list(range(train, total))
    }
    with open(data_labels_path, "rb") as handle:
        labels = pickle.load(handle)
    training_generator = DataGenerator(data_path, partition["train"], labels, batch_size=batch_size)
    validation_generator = DataGenerator(data_path, partition["validation"], labels, batch_size=batch_size)

    # train the model
    model.fit_generator(generator=training_generator,
                        epochs=num_epochs,
                        steps_per_epoch=train//batch_size,
                        validation_data=validation_generator,
                        validation_steps=(total-train)//batch_size,
                        callbacks=callbacks,
                        workers=40)
    
    return model


if __name__ == '__main__':
    
    model = buildClassifier()

    if len(sys.argv) == 1:
        print("Please specify which dataset to use ('small' or 'symmetric')")
        sys.exit()

    if sys.argv[1] == "--small":
        model = trainModel(model)
        model.save("trained_small_" + str(datetime.datetime.now()))
    elif sys.argv[1] == "--symmetric":
        model = trainModel(model, small=False, batch_size=1000, num_epochs=6)
        model.save("trained_symmetric_" + str(datetime.datetime.now()))
    else:
        print("Error: unknown dataset argument '{}'".format(sys.argv[1]))

       