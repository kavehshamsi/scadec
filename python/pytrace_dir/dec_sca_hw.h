/*
 * sca_attack.h
 *
 *  Created on: Jan 20, 2020
 *      Author: kaveh
 */

#ifndef SRC_SCA_ATTACK_H_
#define SRC_SCA_ATTACK_H_

#include <cmath>
#include <math.h>
#include <vector>
#include "TimeoutSerial.h"

// armadillo
#include "picoscope.h"

namespace dec_ns {
namespace sca {

typedef pico::ivolt_t ivolt_t;
typedef std::vector<bool> boolvec;

class serial_target_t {
public:
	enum status {TRANS_SUCCESS, TRANS_FAILIURE};
	bool connected = false;
	int num_ins = -1;
	int num_outs = -1;
	std::string dev_name;
	TimeoutSerial tser;
	void arm();
	status configure(const boolvec& inputs, const boolvec& flips);
	status read_outputs(boolvec& outputs);
	~serial_target_t();
};


template<typename Configurator, typename Collector>
class hw_trace_collector_t {
public:
	Configurator conf;
	Collector coll;
public:

	hw_trace_collector_t(int num_ins, int num_outs) {
		std::cout << "got to hw\n";
		conf.num_ins = num_ins;
		conf.num_outs = num_outs;
	}

	void arm() {
		conf.arm();
		coll.arm();
	}

	void get_trace_per_input(const boolvec& inputs, const boolvec& flips, std::vector<ivolt_t>& trace) {
		conf.configure(inputs, flips);
		//std::cout << "configure time: " << utl::_stop_wall_timer(tm) << "\n";
		int read_trials = 0;
		while (read_trials++ <= 10) {
			int status = coll.read_trace(trace);
			if (status) {
				//std::cout << "read trace failed. retrying\n";
				coll.~Collector(); // destruct
				new(&coll) Collector();
				coll.arm();
			}
			else {
				//std::cout << "query time: " << utl::_stop_wall_timer(tm) << "\n";
				break;
			}
		}
	}

	int64_t get_num_points() { return coll.get_num_points(); }

};

typedef hw_trace_collector_t<serial_target_t, pico::PicoScope> hw_pico_trace_collector_t;

} // namespace sca
} // namespace dec_ns

#endif /* SRC_SCA_ATTACK_H_ */
