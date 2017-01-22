This is a collection of precompiled cryptocurrency releated binaries for 64bit Kali Linux(Debian Testing).  I am not the creator of any of the binaries in this repo, each file has its own readme and most have a license included with more info.  If you are the author of any of the content and wish to have it removed I would be more than happy to, just contact me.  I have not modified the binaries or source in any way.  Miners and Vanity Address Generators can be found in the root folder and scripts to autostart the miners at boot or if they crash can be found in the etc folder.  Some files may require additional dependencies, please refer to each individual projects official page for a list or instructions on use.

Setup is simple.
>git clone https://github.com/exploitagency/github-cryptocurrency.git

>cd github-cryptocurrency

Copy files to / they are already in proper folders.
>cp root / -R

>cp etc / -R

Configure miner via *.sh file with your bitcoin, ethereum, or zcash pool and address.  In the following examples we will use the miner ewbf.  Make your pool/address modifications here.  Press and Release ESC, Type ":wq", Press Enter to save.
>vi ewbf.sh

Reload systemd daemon:
>systemctl daemon-reload

Enable miner to run at startup:
>systemctl enable ewbf.service

Start the miner:
>systemctl start ewbf.service

View miner:
>tmux attach -t miner

Stop miner:
>systemctl stop ewbf.service

Disable miner to run at startup:
>systemctl disable ewbf.service