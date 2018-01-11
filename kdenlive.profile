include /etc/firejail/globals.local

# Apparently these break kdenlive for some people - they work for me though?
# whitelist ${HOME}/.config/
# whitelist ${HOME}/kdenlive
# whitelist ${DOWNLOADS}
# whitelist ${HOME}/Videos

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin kdenlive,kdenlive_render,dbus-launch,melt,ffmpeg,ffplay,ffprobe,dvdauthor,genisoimage,vlc,xine,kdeinit5,kshell5,kdeinit5_shutdown,kdeinit5_wrapper,kdeinit4,kshell4,kdeinit4_shutdown,kdeinit4_wrapper
private-dev
private-etc fonts,alternatives,X11,pulse,passwd

whitelist /tmp/.X11-unix
# I have forced DBus to use an ordinary unix socket
whitelist /tmp/dbus_session_socket

shell none
seccomp
caps.drop all
net none
noroot
nogroups
# ipc-namespace