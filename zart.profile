<<<<<<< HEAD
include /etc/firejail/globals.local

## Contributed by triceratops1 (https://github.com/triceratops1)
=======
# Firejail profile for zart
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/zart.local
# Persistent global definitions
include /etc/firejail/globals.local

# Contributed by triceratops1 (https://github.com/triceratops1)
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
noroot
seccomp
shell none

private-bin zart,ffmpeg,melt,ffprobe,ffplay
private-dev
private-etc fonts,X11

noexec ${HOME}
noexec /tmp
