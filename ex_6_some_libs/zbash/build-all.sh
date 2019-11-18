#!/bin/bash

set -x

rm ./*.o
rm ./*.a
rm ./main

c++ -I../imp/lib_a/src/ -I../imp/lib_b/src/ -c ../imp/lib_a/src/private/lib_a1.cpp  -o lib_a1.o
c++ -I../imp/lib_a/src/ -I../imp/lib_b/src/ -c ../imp/lib_a/src/private/lib_a2.cpp  -o lib_a2.o
ar rcs lib_a.a lib_a1.o lib_a2.o

c++ -I../imp/lib_b/src/ -c ../imp/lib_b/src/private/lib_b1.cpp  -o lib_b1.o
c++ -I../imp/lib_b/src/ -c ../imp/lib_b/src/private/lib_b2.cpp  -o lib_b2.o
ar rcs lib_b.a lib_b1.o lib_b2.o

c++ -I../imp/app/src -I../imp/lib_a/src/  ../imp/app/src/private/main.cpp -L./ -l_a -l_b -o main


