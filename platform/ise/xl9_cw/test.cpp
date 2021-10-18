#include <boost/variant.hpp>
#include <iostream>
#include <any>
#include <map>
#include <vector>
#include <unordered_map>

#include "test.h"

int main() {
    std::any a;
    boost::variant<boost::blank, std::string, int> v;

    std::map<std::string, std::vector<std::any>> mp;

    std::cout << sizeof(v) << "\n";
    std::cout << sizeof(a) << "\n";
    std::cout << sizeof(mp) << "\n";

    using namespace neos;

    string b;

}
