# Message of the Day - RASPBERRY PI

Written in pure Bash. No need to install any package. Tested with Raspbian.


## Instructions

1. Remove the default motd:
``
    sudo rm /etc/motd
``

2. You can remove the "last login" information if you want, however, it is considered a security risk.Disable the PrintLastLog option from the sshd service. Edit the sshd_config and uncomment the line <#PrintLastLog yes>. Change yes to no.

``
    sudo nano /etc/ssh/sshd_config
``


3. Download and save the motd.sh bash script in the Raspberry Pi in /etc/profile.d. 

Alternatively, you can create a new file with 
```
sudo nano /etc/profile.d/motd.sh
``` 
and copy/paste the code from this repository.

4. Add execution permissions and change the owner:

``
sudo chown root:root /etc/profile.d/motd.sh
``

``
sudo chmod +x /etc/profile.d/motd.sh
``

5. Restart the SShd service:

``
sudo systemctl restart sshd
``
