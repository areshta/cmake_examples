#!/bin/bash

echo ">>>>>>>>>>>>>>>>>> cppcheck $1"
cppcheck $1 &>> "$2/lint/report.txt"
