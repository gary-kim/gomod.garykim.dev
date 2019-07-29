#!/bin/bash

set -e

SHA256SUM="e4b7a63ca6fa2bee37cbb33afeaa3fa60be2c595ef95a0b262ad8c8e770ea3b3  rclone-v1.48.0-linux-amd64.deb"

export CWD=`pwd`
cd /tmp
curl --output rclone-v1.48.0-linux-amd64.deb -L "https://github.com/ncw/rclone/releases/download/v1.48.0/rclone-v1.48.0-linux-amd64.deb"
echo $SHA256SUM | sha256sum -c || exit 1
sudo apt install -y ./rclone-v1.48.0-linux-amd64.deb
cd $CWD
