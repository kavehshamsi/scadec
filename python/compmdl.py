
import os
import sys

from trace_db import Trace_DB

sys.path.append('/home/kaveh/Development/eclipse/neos/pyneos/')

from circuit import *

import random, argparse, pickle
import numpy as np
from sklearn import linear_model
from sklearn.metrics import accuracy_score
from sklearn.linear_model import SGDRegressor
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.neural_network import MLPRegressor
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import Normalizer
from sklearn.preprocessing import OneHotEncoder
from sklearn import linear_model
from sklearn import tree
from sklearn.kernel_ridge import KernelRidge
from sklearn import ensemble

import tensorflow as tf
gpus = tf.config.experimental.list_physical_devices('GPU')
if gpus:
  try:
    tf.config.experimental.set_virtual_device_configuration(gpus[0], [tf.config.experimental.VirtualDeviceConfiguration(memory_limit=2000)])
  except RuntimeError as e:
    print(e)

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Dropout, Activation
from tensorflow.keras.optimizers import SGD
from tensorflow.keras import regularizers

from scipy.stats.stats import pearsonr

import matplotlib.pyplot as plt



#print c1.to_bench()

def test_function():
    print('calling from c++')
    return

def load_model_from_file(model_file):
    with open(model_file, 'rb') as dill_file:
        mdl = dill.load(dill_file)
    return mdl
    

def eval_model(mdl, X):
    print('evaluating', X.shape)
    X = np.array(X)
    Y = mdl.predict(X)
    print('predicted', Y.shape)
    return Y
    
def compute_feature_vec(cir, inputs, flips):
    # compute feature vector
    featvec = list()
    smap1 = dict()
    smap2 = dict()

    for i, xid in enumerate(cir.allins()):
        smap1[xid] = inputs[i]
        smap2[xid] = flips[i] ^ inputs[i]
    
    cir.simulate(smap1)
    cir.simulate(smap2)
    
    for wid in cir.wires():
        if (smap1[wid] != smap2[wid]):
            featvec.append(1)
        else:
            featvec.append(0)
    return featvec



from keras import backend as K
def correlation_coefficient_loss(y_true, y_pred):
    x = y_true
    y = y_pred
    mx = K.mean(x)
    my = K.mean(y)
    xm, ym = x-mx, y-my
    r_num = K.sum(tf.keras.layers.multiply([xm, ym]))
    r_den = K.sqrt(tf.keras.layers.multiply( [K.sum(K.square(xm)), K.sum(K.square(ym))] ) )
    r = r_num / r_den

    r = K.maximum(K.minimum(r, 1.0), -1.0)
    return 1 - K.square(r)
   

def around_regularizer(x):
    one = tf.ones(x.shape)
    return 0.0001 * tf.reduce_sum(tf.square(x - one))

def write_pwrlinmdl_to_file(cir, clf, max_ti, model_file):
    with open(model_file, 'w') as mdl_fn:
        i = 0
        for wid in cir.wires():
            mdl_fn.write('{} : {}\n'.format(cir.name(wid), clf.coef_[max_ti][i]))
            i += 1
        
        mdl_fn.write('$bias : {}\n'.format(clf.intercept_[max_ti]))


def tf_class_model(cir, X_train, X_test, Y_train, Y_test):

    model = Sequential()
    # Dense(64) is a fully-connected layer with 64 hidden units.
    # in the first layer, you must specify the expected input data shape:
    # here, 20-dimensional vectors.

    model.add(tf.keras.layers.Conv1D(1024, 10, input_shape=(X_test.shape[1], 1), activation='relu'))
    model.add(tf.keras.layers.MaxPool1D(3))
    model.add(Dropout(0.5))
    model.add(tf.keras.layers.Conv1D(256, 10, activation='relu'))
    model.add(tf.keras.layers.MaxPool1D(3))
    model.add(Dropout(0.5))
    model.add(tf.keras.layers.Conv1D(64, 10, activation='relu'))
    model.add(tf.keras.layers.MaxPool1D(3))
    model.add(tf.keras.layers.Conv1D(16, 10, activation='relu'))
    model.add(tf.keras.layers.MaxPool1D(3))
    model.add(tf.keras.layers.Flatten())
    # model.add(Dense(1024, activation='relu'))
    # model.add(Dense(1024, activation='relu'))
    # model.add(Dense(1024, activation='relu'))
    model.add(Dense(Y_train.shape[1], activation='softmax'))
    # kernel_regularizer=around_regularizer) )
    # model.add(Dense(Y.shape[1]))

    # sgd = SGD(lr=0.01, decay=1e-6, momentum=0.9, nesterov=True)
    #    model.compile(loss=correlation_coefficient_loss,
    #                  optimizer='adam',
    #                  metrics=['mse'])

    model.compile(loss='categorical_crossentropy',
                  optimizer='adam',
                  metrics=['accuracy'])

    model.summary()
    #exit(1)

    try:
        model.fit(X_train, Y_train,
                  epochs=args.epochs,
                  batch_size=args.batch_size, validation_data=(X_test, Y_test),
                  validation_steps=(len(X_test) / args.batch_size))
    except KeyboardInterrupt:
        print('training interrupted')

    return model


def tf_reg_model(cir, X_train, X_test, Y_train, Y_test):
    model = Sequential()
    # Dense(64) is a fully-connected layer with 64 hidden units.
    # in the first layer, you must specify the expected input data shape:
    # here, 20-dimensional vectors.
    model.add( tf.keras.Input(X_test.shape[1]) )
    model.add( Dense(1024, activation='relu') )
    model.add( Dense(512))
    model.add( Dense(1) )
    #kernel_regularizer=around_regularizer) )
    #model.add(Dense(Y.shape[1]))

    #sgd = SGD(lr=0.01, decay=1e-6, momentum=0.9, nesterov=True)
#    model.compile(loss=correlation_coefficient_loss,
#                  optimizer='adam',
#                  metrics=['mse'])

    model.compile(loss='mse',
                  optimizer='adam',
                  metrics=['mse'])

    model.summary()

    print(X_train.shape)
    print(Y_train.shape)

    try:
        model.fit(X_train, Y_train,
                  epochs=args.epochs,
                  batch_size=args.batch_size, validation_data=(X_test, Y_test), validation_steps=(len(X_test)/args.batch_size))
    except KeyboardInterrupt: 
        print('training interrupted')
    
    return model


def to_one_hot(Y, width):
    Y_oh = np.zeros((Y.shape[0], width))
    for i, y in enumerate(Y):
        Y_oh[i, y] = 1
    return Y_oh

def train_model(args):

    cir = Circuit(args.cir_file)

    cir_name = os.path.basename(args.cir_file)
    cir_name = cir_name.replace('.bench', '')
    print('cir name is:', cir_name)

    X = list(list())
    Y = list(list())

    tdb = Trace_DB(args.trace_file)
    for i in range(tdb.ntraces()):
        pwrval = sum(compute_feature_vec(cir, tdb.inputvecs[i], tdb.flipvecs[i]))
        X.append(tdb.traces[i])
        Y.append(pwrval)
   
    num_points = len(tdb.traces[0])
    num_traces = len(tdb.traces)
    num_feat = cir.num_wires()
    
    X = np.array(X)
    transformer = Normalizer().fit(X)
    X = transformer.transform(X)
    X = X.reshape((X.shape[0], X.shape[1], 1))
    Y = np.array(Y)

    # Y = np.reshape(Y, (Y.shape[0], 1))
    # print(Y)
    # ohe = OneHotEncoder()
    # Y = ohe.fit_transform(Y)

    Y = to_one_hot(Y, num_feat)
    print(Y)

    print('X shape:', X.shape)
    print('Y shape:', Y.shape)
    
    indices = np.arange(num_traces)
    X_train, X_test, Y_train, Y_test, indices_train, indices_test = train_test_split(X, Y, indices, test_size=0.2, random_state=42)
    
    print(X_train.shape)
    print(Y_train.shape)
    print(X_test.shape)
    print(Y_test.shape)

    # Generate dummy data
    clf = tf_class_model(cir, X_train, X_test, Y_train, Y_test)
    
#    Y_pred_dnn = model.predict(X_test)
#    print(Y_pred_dnn.shape)

    #clf = linear_model.Ridge()
    #clf = MLPRegressor()
    #clf = linear_model.LassoLars()
    #clf = linear_model.BayesianRidge()
    #clf = linear_model.ARDRegression()
    #clf = linear_model.LogisticRegression(random_state=0)
    #clf = linear_model.TweedieRegressor(power=1, alpha=0.5)
    #clf = linear_model.ElasticNet(random_state=0)
    #clf = linear_model.SGDRegressor()
    #clf = linear_model.RANSACRegressor()
    #clf = KernelRidge()
    #clf = linear_model.Perceptron()
    #clf = tree.DecisionTreeRegressor()
    #clf = ensemble.GradientBoostingRegressor()
    #clf = ensemble.AdaBoostRegressor()

    clf.fit(X_train, Y_train)
    Y_pred_dnn = clf.predict(X_test)
    print(Y_pred_dnn.shape)
    Y_pred_dnn = np.argmax(Y_pred_dnn, axis=1)
    print(Y_pred_dnn.shape)
    Y_test = np.argmax(Y_test, axis=1)
    print(Y_test.shape)

    print('done plotting')
    
    for i in range(len(X_test)):
        print('Y: {}, Y_pred: {}'.format(Y_test[i], Y_pred_dnn[i]))

    plt.scatter(Y_test, Y_pred_dnn, s=3, c='b')
    plt.show()
    
    corr_comp = 0
    tot_comp = 0
    comp_threshold = 2.0
    for ni in range(args.num_pairs):
        nc = len(Y_pred_dnn) - 1
        i = random.randint(0, nc)
        j = 0
        while True:
            j = random.randint(0, nc)
            if i != j:
                break
        test_diff = abs(Y_test[i] - Y_test[j])
        if (test_diff > comp_threshold):
            tot_comp += 1
            if (Y_test[i] > Y_test[j]) == (Y_pred_dnn[i] > Y_pred_dnn[j]) :
                corr_comp += 1
    
    print('accuracy {} / {} ({:.2f})'.format(corr_comp, tot_comp, float(corr_comp)/tot_comp))

    return
    

 
def parse_args():
    '''
    Usual pythonic way of parsing command line arguments
    :return: all command line arguments read
    '''
    args = argparse.ArgumentParser("compmdl")

    args.add_argument('cir_file', help='circuit file')
    args.add_argument('trace_file' , help='trace file')
    
    args.add_argument('-ncp',"--num_pairs", default=1000, type=int,
                      help="Number of comparison pairs")
    
    args.add_argument('-b',"--batch_size", default=10, type=int,
                      help="Number of samples per training batch")

    args.add_argument('-e',"--epochs", default=100, type=int,
                      help="Number of iterations the whole dataset of graphs is traversed")

    args.add_argument('-lr', "--learning_rate", default=0.01, type=float,
                      help="Learning rate to optimize the loss function")

    
    return args.parse_args()
    


if __name__ == '__main__':
    args = parse_args()    
    train_model(args)
    
    
    

