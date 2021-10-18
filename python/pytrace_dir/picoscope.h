/*
 * picoscope.h
 *
 *  Created on: Jan 27, 2020
 *      Author: kaveh
 */

#ifndef SRC_PICOSCOPE_H_
#define SRC_PICOSCOPE_H_

#include <stdio.h>
#include <sys/types.h>
#include <string.h>
#include <termios.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <vector>
#include <stdint.h>
#include <assert.h>

namespace pico {

typedef double ivolt_t;

class PicoScope {
public:
	bool connected = false;
	int16_t handle = 0;
	int16_t max_adc = 0;
	int64_t num_points = -1;
	int16_t num_traces_avg = -1;

	const uint32_t max_samples = 1000;
	uint32_t num_retrieved_samples = 0;

	bool bulk_reading = 0;

	bool settle_read_done = 0;

public:
	PicoScope();
	void arm();
	int read_trace(std::vector<ivolt_t>& trace);
	int16_t mv_to_adc(int16_t mv);

	~PicoScope();

	int64_t get_num_points();

protected:
	static void* read_trace_thread(void* arg);

};

}

#endif /* SRC_PICOSCOPE_H_ */
