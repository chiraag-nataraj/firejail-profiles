include /etc/firejail/globals.local

# Hack to automatically discard the lock file

whitelist ${HOME}/.googleearth/Cache/
whitelist ${HOME}/.googleearth/Temp/
whitelist ${HOME}/.googleearth/myplaces.kml
whitelist ${HOME}/.googleearth/myplaces.backup.kml

# Config file directory

whitelist ${HOME}/.config/Google

blacklist /boot
blacklist /media
blacklist /mnt

private-bin google-earth,sh,grep,sed,ls,dirname
private-dev
private-etc fonts,resolv.conf,X11,alternatives,pulse

whitelist /tmp/.X11-unix

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
noroot
nogroups
ipc-namespace