# Blacklist/Whitelist

blacklist /usr/local/bin
blacklist /usr/local/sbin
blacklist /media
blacklist /mnt
blacklist /boot

# I use Downloads as my data transfer directory
whitelist ${HOME}/Downloads/
whitelist ${HOME}/Videos/

# Config files
whitelist ${HOME}/.openshot/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine

private-bin openshot,python,dbus-launch
private-dev
whitelist /tmp/.X11-unix

noroot
protocol unix
shell none
seccomp
caps.drop all