#include <iostream>
#include "main.hpp"
#include "lib_a.hpp"
using namespace std;

int main ()
{
   cout << main_str() << endl;
   lib_a_out1();
   lib_a_out2();
   cout << "lib_v = " << lib_v() << endl;

   return 0;
}
