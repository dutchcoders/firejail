#!/bin/sh
# Purpose: Fetch, compile, and install firejail from GitHub source. For 
#			Debian-based distros only (Ubuntu, Mint, etc).
set -e 
git clone --depth=1 https://www.github.com/netblue30/firejail.git
cd firejail
./configure --prefix=/usr
make deb
sudo dpkg -i firejail*.deb
echo "Firejail was updated!"
cd ..
rm -rf firejail
