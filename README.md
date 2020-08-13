# Message of the Day

Written in pure Bash. No need to install any package. Tested with the Arch Linux ARM and Raspbian distributions.

Download and save the motd.sh bash script in the Raspberry Pi. Remember to add execution permissions and change the owner:

$ sudo chown root:root motd.sh
$ sudo chmod +x motd.sh

The following steps may vary depending on the OS. Arch Linux ARM is assumed.

    Autoexecute the script when the user logs in. There are multiple locations from where you can start the motd.sh script, for example using the /etc/profile. Save the motd.sh script in the directory /etc/profile.d and it will be executed after the login. More about autostarting scripts.

    Remove the default MOTD. It is located in /etc/motd.

    $ sudo rm /etc/motd

    Remove the "last login" information. Disable the PrintLastLog option from the sshd service. Edit the /etc/ssh/sshd_config file and uncomment the line #PrintLastLog yes:

    $ sudo nano /etc/ssh/sshd_config

    Before:

    #PrintLastLog yes

    After:

    PrintLastLog no

    Restart the sshd service:

    $ sudo systemctl restart sshd

