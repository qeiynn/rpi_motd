# Message of the Day - RASPBERRY PI
### Tested with raspbios

## Instructions

1. Download and move the "motd" from this repository to /etc/motd.
```
sudo mv motd /etc/motd
```
Alternatively, you could create a file in etc and copy/paste the code from "motd"
```
sudo nano /etc/motd
```

2. You can remove the "last login" information if you want, however, it is considered a security risk.Disable the PrintLastLog option from the sshd service. Edit the sshd_config and uncomment the line <#PrintLastLog yes>. Change yes to no.

``
    sudo nano /etc/ssh/sshd_config
``
