# bcache-4.4-dkms
bcache from kernel4.4 patched with partitions supported powerd by dkms

PreInstall
Tested Only On newest Ubuntu16.04 with kernel newer than 4.4.83 or later.
```
apt update & apt dist-upgrade -y
apt install git dkms -y
reboot
```

Install

```
git clone https://github.com/pttpzp/bcache-4.4-dkms.git
cd bcache-4.4-dkms
make install
```

Uninstall 
```
cd bcache-4.4-dkms
make uninstall
```
