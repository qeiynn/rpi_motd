# Message of the Day - RASPBERRY PI
### tested with raspbios

## Instructions

2. You can remove the "last login" information if you want, however, it is considered a security risk.Disable the PrintLastLog option from the sshd service. Edit the sshd_config and uncomment the line <#PrintLastLog yes>. Change yes to no.

``
    sudo nano /etc/ssh/sshd_config
``
