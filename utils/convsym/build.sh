#!/bin/bash
g++ -std=c++11 -Ofast -Wall ConvSym.cpp -o convsym
cp convsym ../../modules/exec/convsym
