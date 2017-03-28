# How to use:
# Create a script called anything (e.g. mytor)
# with the following contents:
# #!/bin/bash
# TORCMD="tor --defaults-torrc /usr/share/tor/tor-service-defaults-torrc -f /etc/tor/torrc --RunAsDaemon 1"
# sudo -b daemon -f -d -- firejail --profile=/home/<username>/.config/firejail/tor.profile $TORCMD

# You'll also likely want to disable the system service (if it exists)

# Run mytor (or whatever you called the script above) whenever you want to start tor

private
private-bin tor,bash
private-dev
private-etc tor,passwd
private-tmp
x11 none

writable-var

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

shell none
seccomp
caps.keep setuid,setgid,net_bind_service,dac_read_search
nonewprivs
nogroups
nosound
no3d
ipc-namespace