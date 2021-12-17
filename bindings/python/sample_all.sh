#!/bin/sh

./sample_x86.py
echo "=========================="
./shellcode.py
echo "=========================="
./sample_arm.py
echo "=========================="
./sample_arm64.py
