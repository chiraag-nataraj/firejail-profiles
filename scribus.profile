# Blacklist/Whitelist

blacklist /usr/local/bin
blacklist /usr/local/sbin
blacklist /media
blacklist /mnt
blacklist /boot

# I use Downloads as my data transfer directory
whitelist ${HOME}/Downloads/
whitelist ${HOME}/Documents/

# Config files
whitelist ${HOME}/.scribus/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.config/Trolltech.conf

private-bin scribus,gs
private-dev
whitelist /tmp/.X11-unix

noroot
protocol unix
shell none
seccomp
caps.drop all