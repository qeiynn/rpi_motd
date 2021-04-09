# Message of the Day - RASPBERRY PI
### Tested with raspios

## Instructions

1. Download and run the "motd-script.sh" from this repository to /etc/motd.
```
sudo git clone https://github.com/qeiynn/rpi_motd.git
```
```
sudo bash rpi_motd/motd-script.sh
```

2. Delete the downloaded directory (including the script)
```
sudo rm -r rpi_motd
```

3. You can remove the "last login" information if you want, however, it is considered a security risk. To do so, edit the sshd_config and uncomment the line "#PrintLastLog yes". Change yes to no.
```
sudo nano /etc/ssh/sshd_config
```
