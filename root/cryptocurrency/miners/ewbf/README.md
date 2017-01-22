https://github.com/nanopool/ewbf-miner

# ewbf-miner

zcash cuda miner

--help, -h          Show this help.
--server            Stratum server only hostname or ip address.
--port              Stratum server port.
--user              Stratum user.
--pass              Stratum password.
--cuda_devices      Space-separated list of cuda devices.
                    Without this option all devices are used.
--solver            Disable benchmark and use specified solver
                    Allowed values from 0 to 3.
--eexit             Exit in case of error. Value 1 exit if miner cannot restart workers.
                    Value 2 if lost connection with the pool. 3 both cases.
--log               Create file miner.log in directory of miner.
                    Allowed values 1 and 2. 1 only errors, 2 will repeat console output.
Example1: miner --server server.com --port 7777 --user name --pass secret --cuda_devices 0 1 2 3 --eexit 1
Example2: miner --server server.com --port 7777 --user name --pass secret --eexit 1 --log 2 --solver 1

Writen for pascal gpus but works on cards with at least 1Gb memory, and Compute Capability 3 and higher.
Miner contain dev fee 2%.

History:

Version 0.2.0b
Added three additional solvers.
Added benchmark which test each solver on miner start and select fastest for each card.
Added option --solver to manual solver selection.
Added option --eexit to exit when the miner fails, it will allow you to use a script to automatically restart or perform other actions
Added option --log logging to a file.
Minor optimizations of solvers and working loop as a result 1 - 4% speed increase depends on card model.
Thanks to new solvers now this version must work with old gpus better.
For more info about new options see help -h for short explanation and examples.

Version 0.1.0b
Speed increase 2 - 5%
For old cards compute capabilities 2.x 3.x try version 0.0.6b it can be faster.

Version 0.0.9b
- Speed increase to 10%.
- NOTE this version can be unstable.
- For old cards compute capabilities 2.x 3.x try version 0.0.6b it can be faster.

Version 0.0.8b
- "Cosmetic" optimizations of solver. Increased speed around 2%
- Reduced amount of rejected shares.
- New dynamic intensity system.

Version 0.0.7b
- Performance improvements. Old cards may be slower than with version 0.0.6b.
- I wanted release it as fast as possible. So new solver can be less stable.

Version 0.0.6b
- For some older cards performance improvements up to 10%
- Bug fixes

Version 0.0.5b
- Speed improvement up to 20%
- Fixed stratum compatibility (works better with many pools)
- Fixed 1Gb card bug
- Added statistic (counter of shares and ping)

Version 0.0.4b
- Completely new watchdog system.
- Fixed a bug in the solver
- Binary linux version compiled and tested in debian.
