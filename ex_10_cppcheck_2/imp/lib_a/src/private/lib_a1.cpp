#include <iostream>
#include "lib_a.hpp"
#include "lib_b.hpp"

using namespace std;

void lib_a_out1()
{
   cout << "lib_a1 calls lib_b1" << endl;
   int undef;
   cout << "undef value for SCA test " << undef << endl;
   lib_b_out1();
}

