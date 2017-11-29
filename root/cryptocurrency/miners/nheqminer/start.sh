#!/bin/sh

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/:/usr/lib/nvidia-384

/app/github-cryptocurrency/root/cryptocurrency/miners/nheqminer/nheqminer_16_04 -l zec.slushpool.com:4444 -u mizsha.worker001 -cd 0 1 2
