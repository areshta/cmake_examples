#include <iostream>
#include "foo.hpp"
using namespace std;

const char* getVersion();

int main ()
{
   cout << "main " <<  getVersion() << endl; 
   foo();
   return 0;
}
