https://bitcointalk.org/index.php?topic=1677369.0

#eqm

Hey folks,

This is a heavily optimized Zcash (Equihash) miner for CUDA, brought to you by NiceHash.

Up to 400 Sol/s @ stock GTX 1070

WINDOWS and LINUX

Works on all GPUs with SM5.0 or more. Do not even try to run on older cards, won't work.

Also, there are some improvements regarding CPU mining; ability to use locked pages, works good on multi-cpu servers/rigs with no additional settings needed.

There are no additional settings needed for GPUs, the default should be the best for most, but just in case, several options are provided and you may choose among them (use -h to learn more).

This miner has 0% fees but is currently compatible only with NiceHash.

DOWNLOAD WINDOWS version (Windows 7+)

DOWNLOAD Linux Ubuntu 14.04 version

DOWNLOAD Linux Ubuntu 16.04 version

(Linux versions might work on other Linux distributions as well, but haven't been tested)

Known issue on Linux: Ctrl+C does not stop the miner, you have to use stop.sh script (included in zip archive) or simply do "pkill -9 -f eqm".

If you're getting `GLIBCXX_x.x.x' not found on Ubuntu 14.04, try this:

Code:

sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
sudo apt-get update
sudo apt-get install libstdc++6


See eqm -h for help.

GPU mining only:

Code:

eqm -l [LOCATION] -t 0 -u [YOUR-BTC-ADDRESS] -w [WORKER-NAME]


CPU + GPU mining with 4 cores:

Code:

eqm -l [LOCATION] -t 4 -u [YOUR-BTC-ADDRESS] -w [WORKER-NAME] -cd [GPUs]


[LOCATION] = "eu", "usa", "hk", "jp"

[GPUs] = 0 1 2 3 ...

IMPORTANT: to achieve maximum speed you should enable two threads per GPU:

Code:

-cd [GPU0] [GPU0] [GPU1] [GPU1]...


for example, when using two threads per GPU while having three GPUs in the system:

Code:

-cd 0 0 1 1 2 2


or you can simply use -ca parameter to run on all cuda devices:

Code:

-ca -ca


Notes on CPU mining: this miner has support for LOCKED PAGES; it can give few extra % of performance. How to enable: https://msdn.microsoft.com/en-us/library/ms190730.aspx (you may have to restart OS after changing). CPU mining supports "big servers" with more than 64 cores and there is no need to manually fiddle with affinities and NUMA nodes. Just set -p (number of CPUs) and -t (number of CORES per CPU) and miner automatically deals with it.

Keep on mining!


Best regards,
NiceHash team.