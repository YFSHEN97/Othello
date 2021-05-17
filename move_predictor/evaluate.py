import pickle
import keras
import numpy as np

from data_generator import DataGenerator


# evaluate a trained model
# if small = True, evaluate on small dataset
# if small = False, evaluate on symmetric dataset
def evaluateModel(model, small=True, batch_size=100):
    # prepare evaluation data
    if small:
        total = 5377484
        train = 4000000
        data_path = "data/data.undup"
        data_labels_path = "data/data.undup.labels"
    else:
        total = 42991908
        train = 40000000
        data_path = "data/data_symmetric.undup"
        data_labels_path = "data/data_symmetric.undup.labels"
    evaluation = list(range(train, total))
    with open(data_labels_path, "rb") as handle:
        labels = pickle.load(handle)
    evaluation_generator = DataGenerator(data_path, evaluation, labels, batch_size=batch_size)

    model.evaluate(evaluation_generator)


if __name__ == "__main__":
    # model = keras.models.load_model("trained_small_2021-05-16")
    # model.load_weights("best_small.h5")
    # evaluateModel(model)

    model = keras.models.load_model("trained_symmetric_2021-05-16")
    model.load_weights("best_symmetric.h5")
    evaluateModel(model, small=False, batch_size=1000)
