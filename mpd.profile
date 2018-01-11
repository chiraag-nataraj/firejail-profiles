include /etc/firejail/globals.local

whitelist ${HOME}/Music
whitelist ${HOME}/mpd
whitelist ${HOME}/.mpdconf
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.pulse/
read-only ${HOME}/Music/

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-dev
private-bin mpd,bash
caps.drop all
noroot
seccomp