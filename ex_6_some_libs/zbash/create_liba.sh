c++ -I../imp/lib_a/src/ -c ../imp/lib_a/src/private/lib_a1.cpp  -o lib_a1.o
c++ -I../imp/lib_a/src/ -c ../imp/lib_a/src/private/lib_a2.cpp  -o lib_a2.o
ar rcs lib_a.a *.o
c++ -I../imp/app/src -I../imp/lib_a/src/  ../imp/app/src/private/main.cpp -L./ -l_a -o main

