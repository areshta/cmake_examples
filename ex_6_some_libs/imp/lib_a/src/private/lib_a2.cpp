#include <iostream>
#include "lib_a.hpp"
#include "lib_b.hpp"

using namespace std;

void lib_a_out2()
{
   cout << "lib_a2 calls lib_b2" << endl;
   lib_b_out2();
}

