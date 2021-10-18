/*
 * test_dec.cpp
 *
 *  Created on: Feb 1, 2021
 *      Author: kaveh
 */

#define BOOST_TEST_MODULE example
#include <boost/test/included/unit_test.hpp>

#include "base/circuit.h"
#include "dec/dec_sat.h"

#include "enc/enc.h"
#include "aig/aig.h"
#include "opt/rwr.h"
#include "utl/ext_cmd.h"

BOOST_AUTO_TEST_CASE( free_test_function )
/* Compare with void free_test_function() */
{
  BOOST_TEST( true /* test assertion */ );
}


BOOST_AUTO_TEST_CASE( xor_enc_dec ) {
	using namespace ckt;

	std::string cirpath = "./bench/testing/c432.bench";

	circuit sim_cir(cirpath);
	circuit enc_cir = sim_cir;

	boolvec key = utl::random_boolvec(20);
	enc::encrypt::enc_XORrand(enc_cir, key);

	dec_ns::dec_sat satobj(sim_cir, enc_cir);
	satobj.solve();

	BOOST_TEST( satobj.solve_status == 1 );
}

BOOST_AUTO_TEST_CASE( aig_rwr_dec ) {
	using namespace ckt;
	using namespace aig_ns;

	std::string cirpath = "./bench/testing/c432.bench";

	circuit sim_cir(cirpath);
	aig_t ntk = sim_cir;
	aig_t ntk_orig = ntk;

	opt_ns::rewrite_manager_t rwrmgr;
	rwrmgr.rewrite_aig(ntk);

	BOOST_TEST( ext::check_equivalence_abc(ntk, ntk_orig) );
}


