
/*
 * sca_attack_serial.cpp
 *
 *  Created on: Nov 8, 2020
 *      Author: kaveh
 */

#include <fstream>
#include <cmath>
#include <boost/format.hpp>
#include <unistd.h>
#include <boost/dynamic_bitset.hpp>
#include <iostream>
#include "dec_sca_hw.h"

namespace dec_ns {
namespace sca {

using dbitset_t = boost::dynamic_bitset<>;

#define fmt(format_str, format_args) ((boost::format(format_str) % format_args).str())

//using std::vector;
using std::string;

template<typename T>
inline bool _is_in(const T& x, const std::string& setormap) {
	return setormap.find(x) != std::string::npos;
}

void serial_target_t::arm() {

	std::cout << "arming serial device...\n";

	if (connected) {
		std::cout << "alread connected to serial device\n";
		return;
	}

	assert(num_ins != -1);
	assert(num_outs != -1);

	if (dev_name == "")
		dev_name = "/dev/ttyACM0";

	std::cout << "trying to connect to " << dev_name << std::endl;
	tser.open(dev_name, 115200);
	tser.setTimeout(boost::posix_time::seconds(1));

	tser.writeString("ee");
	std::cout << tser.readStringUntil("\n") << "\n";

	tser.writeString("rr");
	std::cout << tser.readStringUntil("\n") << "\n";

	string str;

	str = fmt("c%04d\n", num_ins);
	std::cout << "sending " << str << "\n";
	tser.writeString(str);
	std::cout << tser.readStringUntil("\n") << "\n";

	str = fmt("x%04d\n", num_outs);
	std::cout << "sending " << str << "\n";
	tser.writeString(str);
	std::cout << tser.readStringUntil("\n") << "\n";
	//tser.writeString("i");
}

serial_target_t::~serial_target_t() {
	if (connected) {
		tser.writeString("kk");
		std::cout << tser.readStringUntil("\n") << "\n";
	}
}

serial_target_t::status serial_target_t::read_outputs(boolvec& outputs) {
	string str;
	str = "o";
	std::cout << "sending " << str << "\n";
	tser.writeString(str);
	string backstr = tser.readStringUntil("\n");
	std::cout << backstr << "\n";
	if (_is_in("read output: ", backstr)) {
		uint sz = string("read output: ").size();
		outputs = boolvec(num_outs, 0);
		for (uint i = sz; i < sz + num_outs; i++) {
			outputs[i - sz] = (backstr[i] == '1');
		}
		return status::TRANS_SUCCESS;
	}
	else {
		return status::TRANS_FAILIURE;
	}

}

serial_target_t::status serial_target_t::configure(const boolvec& inputs, const boolvec& flips) {
	string msg;
	std::cout << "inputs : ";
	char buf[10] = {0};
	for (auto r : inputs) {
		msg += std::to_string(r);
		std::cout << r;
	}
	std::cout << "\n";
	std::cout << "flips  : ";
	for (auto r : flips) {
		msg += std::to_string(r);
		std::cout << r;
	}
	std::cout << "\n";

	tser.writeString("i");
	tser.writeString(msg);
	std::string back = tser.readStringUntil("\n");
	//std::cout << "got back: " << back << "\n";

	if (_is_in("success", back)) {
		//std::cout << "transmision successfull\n";
		return status::TRANS_SUCCESS;
	}
	return status::TRANS_FAILIURE;
}

} // namespace dec_ns
} // namespace sca

