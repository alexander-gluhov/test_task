#!/bin/bash
mkdir -p deb-packages
cd deb-packages
cp ../tmp/peervpn_0.1-1_amd64.deb .
dpkg-scanpackages . /dev/null |gzip > Packages.gz
git add .
git commit -m 'bump peervpn version'
git push
