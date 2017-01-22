#!/bin/sh
tmux new-session -d -s miner '/root/cryptocurrency/miners/claymore/ethdcrminer64 -epool stratum+tcp://daggerhashimoto.usa.nicehash.com:3353 -ewal 1egacySQXJA8bLHnFhdQQjZBLW1gxSAjc -epsw x -esm 3 -allpools 1 -estale 0 -dpool stratum+tcp://decred.usa.nicehash.com:3354 -dwal 1egacySQXJA8bLHnFhdQQjZBLW1gxSAjc'
