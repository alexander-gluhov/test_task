#!/bin/bash

mkdir tmp
cd tmp
git clone https://github.com/peervpn/peervpn.git
cd peervpn
make
cd ..
