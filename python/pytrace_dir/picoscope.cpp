

#include "picoscope.h"

#include <libps3000a/ps3000aApi.h>
#ifndef PICO_STATUS
#include <libps3000a/PicoStatus.h>
#endif

#include <iostream>
#include <string>
#include <unistd.h>

#include <thread>
#include <pthread.h>
#include <chrono>

namespace pico {
using std::vector;
using std::string;
using std::cout;

typedef std::chrono::time_point<std::chrono::system_clock,
		std::chrono::nanoseconds> cpp_time_t;

inline cpp_time_t _start_wall_timer() {
	auto start = std::chrono::system_clock::now();
	return start;
}

inline double _stop_wall_timer(cpp_time_t& start) {
	auto stop = std::chrono::system_clock::now();
	auto elapsed = std::chrono::duration_cast<std::chrono::duration<double> >(stop - start);
	return elapsed.count();
}


void print_info(int16_t handle) {
	int8_t str[1024];
	int16_t len = 0;
	ps3000aGetUnitInfo(handle, str, 1024, &len, PICO_USB_VERSION);
	printf("USB version: %s\n", (char*)str);
	ps3000aGetUnitInfo(handle, str, 1024, &len, PICO_DRIVER_VERSION);
	printf("Driver Version: %s\n", (char*)str);
	ps3000aGetUnitInfo(handle, str, 1024, &len, PICO_HARDWARE_VERSION);
	printf("Hardware Version: %s\n", (char*)str);
}

void check_error(PICO_STATUS status, const string& msg) {
	if (status != PICO_OK) {
		printf("problem with %s\n", msg.c_str());
		printf("Error code : 0x%08x\n", status);
		exit(EXIT_FAILURE); // exit program
	}
}

PicoScope::PicoScope() {
	num_points = 1000;
	num_traces_avg = 128;
}

int64_t PicoScope::get_num_points() {
	return num_points;
}

int16_t PicoScope::mv_to_adc(int16_t mv) {
	return (mv * max_adc) / 40;
}

void PicoScope::arm() {

	PICO_STATUS status;

	assert(num_points != -1);
	assert(num_traces_avg != -1);

	std::cout << "arming picoscope...\n";

	// connect to device
	status = ps3000aOpenUnit(&(handle), NULL);

	if (status != PICO_OK) {
		printf("Unable to open pico device\n");
		printf("Error code : 0x%08x\n", status);
		exit(EXIT_FAILURE); // exit program
	}

	print_info(handle);

	// setup channel channel B, Trigger on Ext at 800mv
	status = ps3000aSetChannel(handle, PS3000A_CHANNEL_A, 0, PS3000A_AC, PS3000A_20MV, 0.0);
	check_error(status, "configuring channel");
	status = ps3000aSetChannel(handle, PS3000A_CHANNEL_B, 1, PS3000A_AC, PS3000A_20MV, 0.0);
	check_error(status, "configuring channel");

	status = ps3000aMaximumValue(handle, &max_adc);
	printf("max adc: %d\n", max_adc);

	status = ps3000aSetSimpleTrigger(handle, 1, PS3000A_EXTERNAL, 5000, PS3000A_RISING, 0, 0);
	check_error(status, "trigger");


	float time_interval = 0;
	int32_t max_samples = 0;
	status = ps3000aGetTimebase2(handle, 0, num_points, &time_interval, 0, &max_samples, 0);
	check_error(status, "time base");
	printf("time interval: %f \nmax samples: %d\n", time_interval, max_samples);


	int32_t max_samples_perseg = 0;
	status = ps3000aMemorySegments(handle, num_traces_avg, &max_samples_perseg);
	check_error(status, "time base");
	printf("max samples per segment: %d\n", max_samples_perseg);

	status = ps3000aSetNoOfCaptures(handle, num_traces_avg);
	check_error(status, "number of captures");

}

void* PicoScope::read_trace_thread(void* obj) {
	PicoScope* p = (PicoScope*)obj;
	p->num_retrieved_samples = p->max_samples;
	int16_t overflow[p->num_traces_avg] = {0};
	int status = ps3000aGetValuesBulk( p->handle, &(p->num_retrieved_samples),
				0, p->num_traces_avg - 1, 0, PS3000A_RATIO_MODE_NONE, (int16_t*)overflow );
	p->bulk_reading = 0;
	return NULL;
}

int PicoScope::read_trace(vector<ivolt_t>& trace) {

	if (!settle_read_done) {
		settle_read_done = 1;
		// read trace twice. The first two are all zero
		vector<ivolt_t> trace;
		for (uint i = 0; i < 200; i++)
			read_trace(trace);
	}

	//printf("collecting trace\n");
	PICO_STATUS status;
	auto tm = _start_wall_timer();

	status = ps3000aRunBlock( handle, max_samples/6, max_samples*5/6, 0, 0,
			NULL, 0, NULL, NULL );
	assert(status == PICO_OK);

	int16_t isready = 0;
	uint64_t wait_cycles = 0;
	uint64_t timeout_cycles = 10000000;
	do {
		ps3000aIsReady(handle, &isready);
		if (wait_cycles++ >= timeout_cycles) {
			std::cout << "timeout on scope response\n";
			exit(1);
		}
	} while(!isready);

	//cout << "data ready. time: " << utl::_stop_wall_timer(tm) << "\n";

	int16_t buffer[num_traces_avg * max_samples] = {0};

	for (uint16_t j = 0; j < num_traces_avg; j++) {
		status = ps3000aSetDataBuffer(handle, PS3000A_CHANNEL_B,
				&buffer[j * max_samples], max_samples, j, PS3000A_RATIO_MODE_NONE);
		assert(status == PICO_OK);
	}

	tm = _start_wall_timer();

	num_retrieved_samples = max_samples;
	int16_t overflow[num_traces_avg] = {0};
	// status = ps3000aGetValues(handle, 0, &num_retrieved_samples, 0, PS3000A_RATIO_MODE_NONE, 0, &overflow);
	//	std::thread thr(ps3000aGetValuesBulk, handle, &num_samples,
	//			0, num_traces_avg - 1, 0, PS3000A_RATIO_MODE_NONE, (int16_t*)overflow );
	//status = ps3000aGetValuesBulk(handle, &num_retrieved_samples, 0, num_traces_avg - 1, 0, PS3000A_RATIO_MODE_NONE, overflow);

	pthread_t pthr0;
	bulk_reading = 1;
	pthread_create(&pthr0, NULL, read_trace_thread, this);
	while (bulk_reading) {
		if (_stop_wall_timer(tm) > 0.1) {
			std::cout << "taking too much to read. killing read thread and exiting.";
			pthread_cancel(pthr0);
			return 1;
		}
	}

	assert(status == PICO_OK);


	//cout << "download time: " << utl::_stop_wall_timer(tm) << "\n";

	int16_t time[max_samples];
	vector<long double> avg(max_samples, 0);
	for (uint j = 0; j < num_traces_avg; j++) {
		uint offset = j * max_samples;
		for (uint i = 0; i < max_samples; i++) {
			time[i] = i;
			long double delta = buffer[offset + i] - avg[i];
			avg[i] += delta / (j + 1);
			// printf("%d, ", buffer[i]);
		}
	}

/*
	for (uint i = 0; i < max_samples; i++) {
		avg[i] /= num_traces_avg;
	}
*/

	//namespace plt = matplotlibcpp;
	//plt::plot(t, yt, "red");
	//plt::ylim(-5000, 1500);
	//plt::show();
	trace = std::vector<ivolt_t>(avg.begin(), avg.end());

	//cout << "total trace time: " << utl::_stop_wall_timer(tm) << "\n";
	return 0;
}

PicoScope::~PicoScope() {
	if (handle)
		ps3000aCloseUnit(handle);
}

} // namespace pico
