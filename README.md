This is a collection of precompiled cryptocurrency releated binaries for 64bit Kali Linux(Debian Testing).  I am not the creator of any of the binaries in this repo, each file has its own readme and most have a license included with more info.  If you are the author of any of the content and wish to have it removed I would be more than happy to, just contact me.  I have not modified the binaries or source in any way.  Miners and Vanity Address Generators can be found in the root folder and scripts to autostart the miners at boot or if they crash can be found in the etc folder.  Some files may require additional dependencies, please refer to each individual project's official page for a list or instructions on use.  I do not plan on supporting this repo nor keeping it up to date.  I am going to just put it out there as a reference for a way to organize some files and have different setups that you can easily swap between as needed and a lot of people have trouble compiling certain things for some reason, this may also serve as a last resort to fetch a file they may need.  It is also not recommended to run everything as root, but that is how this repo assumes you will do it, so you may need to modify the paths in .service and .sh files or chmod +x .sh files depending on how you copy this repo.

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

If this repo helped you set up some miners consider donating to the author of the program you chose to use first and then consider contributing to one of my accounts, I share wallet addresses across forks of the same coin.  Thank you!

Donate Bitcoin: 1egacySQXJA8bLHnFhdQQjZBLW1gxSAjc
<br>
Donate Zcash or Zclassic: t1egacynGZDT9mTfmMSCG1yCaedq7bGTs1a
<br>
Z-Address: zcashPngjXyQJUjePXH6wvg2vfHHngaZiYLmmDE2bp3PqMAPpErdfpbctug78P6m8xqKXyxX1dmfCYoUeJYfX8hDLSueuKL
<br>
Donate Ethereum or Ethereum Classic: 0x1337aeb726eee1a51fc3b22a7eafa329d950297a 
<br>
Donate LBRY: bLEGACYsaVR11r9qp6bXnWeWtpf7Usx9rX
<br>
Donate Litecoin: LegacyeBuSwLaZaF5QLMiJL8E4rNCH6tJ7
<br>
Donate Namecoin: N1egacyRAKumMKiFaVrTqwzmdkJVL9mNDs
<br>
Donate Feathercoin: 71egacyuSdmPUMM3EKp4dw8yBgTruKhKZc
<br>
Donate Vertcoin: Vry1337ZVSFftzLWvBkEhf787HAXAqyupJ