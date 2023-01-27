#!/bin/bash
cd tmp

mkdir -p peervpn_0.1-1_amd64/{usr/local/bin,DEBIAN}
cp peervpn/peervpn peervpn_0.1-1_amd64/usr/local/bin

cat << EOF >> peervpn_0.1-1_amd64/DEBIAN/control
Package: peervpn
Version: 0.1
Architecture: amd64
Depend: libc6 (>= 2.15), libssl1.0.0 (>= 1.0.0)
Maintainer: Alexander Gluhov <gluhov88@gmail.com>
Description: PeerVPN is a software that builds virtual ethernet networks between multiple computers. Such a virtual network can be useful to facilitate direct communication that applications like file sharing or gaming may need. Often, such direct communication is made impossible or very difficult by firewalls or NAT devices.
EOF

dpkg-deb --build --root-owner-group peervpn_0.1-1_amd64
