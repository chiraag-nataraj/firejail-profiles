## Contributed by triceratops1 (https://github.com/triceratops1)

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos
private-bin zart,ffmpeg,melt,ffprobe,ffplay
private-etc fonts,X11
private-dev
whitelist /tmp/.X11-unix

noexec ${HOME}
noexec /tmp

shell none
noroot
ipc-namespace
net none
seccomp
caps.drop all