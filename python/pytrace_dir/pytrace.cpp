
#define HW_SCADEC
#define PICOSCOPE_SCADEC
#define VISASCOPE_SCADEC

#include <iostream>
//#include <boost/python.hpp>
#include <pybind11/stl.h>
#include <pybind11/pybind11.h>
#include "dec_sca_hw.h"

/*struct test {
	void foo() { std::cout << "called foo" << "\n"; }
};*/

struct py_trace_t {
    dec_ns::sca::hw_pico_trace_collector_t tcoll;
    
    bool test = false;

    py_trace_t(int num_ins, int num_outs) : tcoll(num_ins, num_outs) {}

    void arm() {
    	std::cout << "called arm\n";
    	std::cout << test << "\n";
    	tcoll.arm();
    }

    std::vector<double> get_trace_per_input(const std::vector<bool>& inputs, const std::vector<bool>& flips) {
        std::vector<double> trace;
        std::cout << "x=";
        for (auto b : inputs)
        	std::cout << b;
        std::cout << "\nf=";
        for (auto b : flips)
        	std::cout << b;
        std::cout << "\n";
        assert(inputs.size() == tcoll.conf.num_ins);
        assert(flips.size() == tcoll.conf.num_ins);
        tcoll.get_trace_per_input(inputs, flips, trace);
        return trace;
    }
};

/*
using namespace boost::python;

BOOST_PYTHON_MODULE(pytrace) {

    //m.doc() = "pybind11 example plugin"; // optional module docstring
    //m.def("add", &add, "A function which adds two numbers");

    class_<test, boost::noncopyable>("test")
    .def("foo", &test::foo);


    class_<py_trace_t, boost::noncopyable>("py_trace_t", init<int, int>())
    .def("get_trace_per_input", &py_trace_t::get_trace_per_input)
    .def("arm", &py_trace_t::arm);
}
*/


namespace py = pybind11;

PYBIND11_MODULE(pytrace, m) {

    m.doc() = "pybind11 example plugin"; // optional module docstring

    //m.def("add", &add, "A function which adds two numbers");
    py::class_<py_trace_t>(m, "py_trace_t")
    .def(py::init<int, int>())
    .def("get_trace_per_input", &py_trace_t::get_trace_per_input)
    .def("arm", &py_trace_t::arm);
}

