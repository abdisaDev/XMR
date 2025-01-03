#!/usr/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

git clone https://github.com/xmrig/xmrig.git
cd xmrig

mkdir build && cd build
cmake ..
make -j$(nproc)

./xmrig -o pool.supportxmr.com:3333 -u 45pGgJnE5jnQwAi7tm1B4zTpVnzeAbDFY2YkuDZqSCtuikyZre1ZupyGoudLD7VbRi7AN7aD1Shp7j1XtkirmZxPEDHPiro -p x -k
