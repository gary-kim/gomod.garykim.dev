#!/bin/bash

set -e

SHA256SUM="afab8eaf12a9d72a072288f4ec5012cd889374cd56a855639b6ee1ba1686d174  hugo_0.55.6_Linux-64bit.deb"

export CWD=`pwd`
cd /tmp
curl --output hugo_0.55.6_Linux-64bit.deb -L "https://github.com/gohugoio/hugo/releases/download/v0.55.6/hugo_0.55.6_Linux-64bit.deb"
echo $SHA256SUM | sha256sum -c || exit 1
sudo apt-get install -y ./hugo_0.55.6_Linux-64bit.deb
cd $CWD
