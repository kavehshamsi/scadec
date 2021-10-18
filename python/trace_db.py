from builtins import bool
import matplotlib.pyplot as plt
import numpy as np


class Trace_DB:
    def __init__(self, trace_file = None):
        self.inputvecs = []
        self.flipvecs = []
        self.traces = []
        if trace_file is not None:
            self.read_from_file(trace_file)

    def npoints(self):
        if len(self.traces) == 0:
            return -1
        return len(self.traces[0])

    def ntraces(self):
        return len(self.traces)

    def read_from_file(self, trace_file):
        self.inputvecs = []
        self.flipvecs = []
        self.traces = []

        with open(trace_file, 'r') as trcf:
            for ln in trcf:
                self.inputvecs.append(list())
                self.flipvecs.append(list())
                self.traces.append(list())
                toks = ln.strip().split(' ')
                for c in toks[0]:
                    self.inputvecs[-1].append(bool(int(c)))
                for c in toks[1]:
                    self.flipvecs[-1].append(bool(int(c)))

                for i in range(2, len(toks) - 1):
                    self.traces[-1].append(float(toks[i]))

        #print(self.inputvecs)
        #print(self.flipvecs)

    def write_to_file(self, trace_file):
        num_ins = len(self.inputvecs[0])
        with open(trace_file, 'w') as trcf:
            for i in range(self.ntraces()):
                for j in range(num_ins):
                    trcf.write( '{}'.format(int(self.inputvecs[i][j])) )
                trcf.write(' ')
                for j in range(num_ins):
                    trcf.write( '{}'.format(int(self.flipvecs[i][j])) )
                for j in range(self.npoints()):
                    trcf.write( ' {}'.format(self.traces[i][j]) )
                trcf.write('\n')

    def plot_all_traces(self):
        t = range(self.npoints())
        for i in range(self.ntraces()):
            plt.plot(t, self.traces[i], 'lightgray')
        plt.show()

    def get_trace_matrix(self):
        return np.array(self.traces)