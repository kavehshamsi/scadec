

import os
import sys

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


import tensorflow as tf
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
    i = 0
    for xid in cir.allins():
        smap1[xid] = inputs[i]
        smap2[xid] = flips[i] ^ inputs[i]
        i += 1
    
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

def read_trace_file(trace_file):
    invecs = list(list())
    flipmasks = list(list())
    traces = list(list())
    
    with open(trace_file, 'r') as trcf:
        for ln in trcf:
            invecs.append(list())
            flipmasks.append(list())
            traces.append(list())
            toks = ln.split(' ')
            for c in toks[0]:
                invecs[-1].append(int(c))
            for c in toks[1]:
                flipmasks[-1].append(int(c))
            
            for i in range(2, len(toks)-1):
                traces[-1].append(float(toks[i]))
    
    return invecs, flipmasks, traces

def train_model(args):

    cir = Circuit(args.cir_file)

    cir_name = os.path.basename(args.cir_file)
    cir_name = cir_name.replace('.bench', '')
    print('cir name is:', cir_name)

    X = list(list())
    Y = list(list())

    invecs, flipmasks, traces = read_trace_file(args.trace_file)
    
    featvecs = list(list())
    for i in range(len(traces)):
        featvecs.append(compute_feature_vec(cir, invecs[i], flipmasks[i]))
    
    for i in range(len(invecs)):
        X.append(list())
        Y.append(list())
        #X[-1].extend(invecs[i])
        #X[-1].extend(flipmasks[i])
        X[-1] = featvecs[i]
        Y[-1].extend(traces[i])
    
    
    num_points = len(traces[0])
    num_traces = len(traces)
    num_feat = cir.num_wires()
    test_prop = 0.2
    train_prop = 1 - test_prop
    
    #print(X)
    #print(Y)

    Abase = np.zeros(num_feat, dtype=np.float)
    Abase.fill(1)

    X = np.array(X)
    Y = np.array(Y)

    print('X shape:', X.shape)
    print('Y shape:', Y.shape)
    
    clf = linear_model.Ridge()
    #clf = MLPRegressor()
    #clf.alpha = 2
    
    X_train = X[0:int(train_prop*num_traces), :]
    Y_train = Y[0:int(train_prop*num_traces), :]
    X_test = X[int(train_prop*num_traces):num_traces, :]
    Y_test = Y[int(train_prop*num_traces):num_traces, :]
    print(X_train.shape)
    print(Y_train.shape)
    print(X_test.shape)
    print(Y_test.shape)
    
    clf.fit(X_train, Y_train)
    #print(clf.coef_.shape)
    #print(clf.coef_)

    # Generate dummy data
    model = Sequential()
    # Dense(64) is a fully-connected layer with 64 hidden units.
    # in the first layer, you must specify the expected input data shape:
    # here, 20-dimensional vectors.
    model.add( tf.keras.Input(X_test.shape[1]) )
    model.add( Dense(Y.shape[1], activation='relu') )
    model.add( Dense(Y.shape[1]) )
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

    try:
        model.fit(X_train, Y_train,
                  epochs=args.epochs,
                  batch_size=args.batch_size, validation_data=(X_test, Y_test), validation_steps=args.batch_size)
    except KeyboardInterrupt: 
        print('training interrupted')
        


    Y_pred_dnn = model.predict(X_test)
    print(Y_pred_dnn.shape)

    Y_pred_lin = clf.predict(X_test)
    #print(Y_pred.shape)
    index = 10
    time_points = np.arange(0, num_points, 1)
    #plt.plot(time_points, Y_pred[index, :])
    #plt.plot(time_points, Y_test[index, :])
    #plt.show()
    #clf = tree.DecisionTreeClassifier()
    #clf = StandardScalar()
    #clf = clf.fit(X_train, Y_train)

    print('done plotting')

    corr = np.zeros(num_points)
    corr_base = np.zeros(num_points)
    corr_dnn = np.zeros(num_points)
    corr_lin = np.zeros(num_points)
    # print(corr)

    #Y_pred = clf.predict(X_test)
    #print(Y_pred)
    
    max_corr = 0
    max_ti = -1

    Y_base = np.matmul(X_test, Abase)
    #print('Y:', Y_base[0][0])
    for ti in range(0, num_points):
        #print(Y_pred[:,ti], Y_test[:,ti])
        #print('corr', pearsonr(Y_pred[:,ti], Y_test[:,ti]))
        corr_dnn_val = abs(pearsonr(Y_test[:, ti], Y_pred_dnn[:, ti])[0])
        corr_base_val = abs(pearsonr(Y_test[:, ti], Y_base)[0])
        corr_lin_val = abs(pearsonr(Y_test[:, ti], Y_pred_lin[:, ti])[0])

        #print(corr_val)
        #corr[ti] = corr_val
        corr_dnn[ti] = corr_dnn_val
        corr_base[ti] = corr_base_val
        corr_lin[ti] = corr_lin_val
        if corr_lin_val > max_corr:
            max_corr = corr_lin_val
            max_ti = ti
        
    
    #plt.plot(time_points, corr, 'r')
    plt.plot(time_points, corr_base, 'b')
    plt.plot(time_points, corr_dnn, 'r')
    plt.plot(time_points, corr_lin, 'black')
    plt.show()
    
    # train on only the maximum correlation point
    print('max correlation point is ', max_ti)
    Y_max_train = Y_train[:, max_ti]

    model_file = 'data/pwrlinmdl_model_{}.txt'.format(cir_name)
    write_pwrlinmdl_to_file(cir, clf, max_ti, model_file)
    
    
    # clf = linear_model.Ridge()
    # clf.fit(X_train, Y_max_train)
    #    
    # print(clf.coef_)
    # print(clf.intercept_)
    #    
    # coeffs = clf.coef_
    # coeffs = np.append(coeffs, clf.intercept_)
    # print(coeffs)
    # print(type(coeffs))
    
    return
    

 
def parse_args():
    '''
    Usual pythonic way of parsing command line arguments
    :return: all command line arguments read
    '''
    args = argparse.ArgumentParser("run_gphlearn")

    args.add_argument('cir_file', help='circuit file')
    args.add_argument('trace_file' , help='trace file')
    
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
    
    
    

