from datetime import datetime
import os
import argparse

import numpy as np

from keras.models import Sequential
from keras.layers import Conv2D
from keras.layers import Flatten
from keras.layers import Dense
from keras.optimizers import SGD
from keras.initializers import HeNormal

from keras.callbacks import ModelCheckpoint
from keras.callbacks import TensorBoard


# classifier model for 8*8 Othello boards with 60 output categories
def buildClassifier():
    # sequential structure from Keras
    classifier = Sequential()

    # initializer for the filters
    initializer = HeNormal()

    # Add our first convolutional layer
    classifier.add( Conv2D( filters=64,
                            kernel_size=(3,3),
                            padding='same',
                            data_format='channels_last',
                            input_shape=(8,8,2),
                            activation='relu',
                            kernel_initializer=initializer,
                            name = 'firstConv64'
                            ))

    # Add second convolutional layer
    classifier.add( Conv2D( filters=64,
                            kernel_size=(3,3),
                            padding='same',
                            data_format='channels_last',
                            input_shape=(8,8,64),
                            activation = 'relu',
                            kernel_initializer=initializer,
                            name = 'secondConv64'
                            ))
    
    # Add third convolutional layer
    classifier.add( Conv2D( filters=128,
                            kernel_size=(3,3),
                            padding='same',
                            data_format='channels_last',
                            input_shape=(8,8,64),
                            activation = 'relu',
                            kernel_initializer=initializer,
                            name = 'firstConv128'
                            ))

    # Add third convolutional layer
    classifier.add( Conv2D( filters=128,
                            kernel_size=(3,3),
                            padding='same',
                            data_format='channels_last',
                            input_shape=(8,8,128),
                            activation = 'relu',
                            kernel_initializer=initializer,
                            name = 'secondConv128'
                            ))

    # Flattening
    classifier.add( Flatten(name='flat') )

    # Add Fully connected layers
    classifier.add( Dense( units=128, activation='relu', name='fc128') )
    classifier.add( Dense( units=60,  activation='softmax', name='fc60'))

    # Compile the CNN
    sgd = SGD(lr=0.1, momentum=0.95)
    classifier.compile(optimizer=sgd, loss='categorical_crossentropy', metrics=['accuracy'])
    
    return classifier


def trainModel( classifier, output_dir='./', batch_size=32, num_epochs=24 ):


    # training_set = train_datagen.flow_from_directory(trainloc,
    #                                                  target_size = (img_shape, img_shape),
    #                                                  batch_size = batch_size,
    #                                                  class_mode = 'categorical')

    # test_set = test_datagen.flow_from_directory(testloc,
    #                                             target_size = (img_shape, img_shape),
    #                                             batch_size = batch_size,
    #                                             class_mode = 'categorical')

    # Saves the model weights after each epoch if the validation loss decreased
    now = datetime.now()
    nowstr = now.strftime('k2tf-%Y%m%d%H%M%S')

    now = os.path.join( output_dir, nowstr)

    # Make the directory
    os.makedirs( now, exist_ok=True )

    # Create our callbacks
    savepath = os.path.join( now, 'e-{epoch:03d}-vl-{val_loss:.3f}-va-{val_acc:.3f}.h5' )
    checkpointer = ModelCheckpoint(filepath=savepath, monitor='val_acc', mode='max', verbose=0, save_best_only=True)
    fout = open( os.path.join(now, 'indices.txt'), 'wt' )
    fout.write( str(training_set.class_indices) + '\n' )

    # train the model on the new data for a few epochs
    classifier.fit(training_set,
                   batch_size=batch_size,
                   epochs = num_epochs,
                   validation_split=0.25,
                   shuffle=True,
                   callbacks=[checkpointer]
                   )
    
    return classifier


if __name__ == '__main__':
    
    parser = argparse.ArgumentParser()
    
    # Required
    parser.add_argument('--test', dest='test', required=True, help='(REQUIRED) location of the test directory')
    parser.add_argument('--train', dest='train', required=True, help='(REQUIRED) location of the test directory')
    parser.add_argument('--cats', '-c', dest='categories', type=int, required=True, help='(REQUIRED) number of categories for the model to learn')
    # Optional
    parser.add_argument('--output', '-o', dest='output', default='./', required=False, help='location of the output directory (default:./)')
    parser.add_argument('--batch', '-b', dest='batch', default=32, type=int, required=False, help='batch size (default:32)')
    parser.add_argument('--epochs', '-e', dest='epochs', default=30, type=int, required=False, help='number of epochs to run (default:30)')
    parser.add_argument('--shape','-s', dest='shape', default=128, type=int, required=False, help='The shape of the image, single dimension will be applied to height and width (default:128)')
    
    args = parser.parse_args()
    
    classifier = buildClassifier( args.shape, args.categories)
    trainModel( classifier, args.train, args.test, args.shape, args.output, batch_size=args.batch, num_epochs=args.epochs )
    