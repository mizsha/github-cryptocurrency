#!/bin/sh
tmux new-session -d -s miner '/root/cryptocurrency/miners/ccminer/ccminer -a lbry -o stratum+tcp://lbry.us.nicehash.com:3356 -u 1egacySQXJA8bLHnFhdQQjZBLW1gxSAjc -p x'
