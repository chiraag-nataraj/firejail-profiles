<<<<<<< HEAD
include /etc/firejail/globals.local

=======
# Firejail profile for x-terminal-emulator
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/x-terminal-emulator.local
# Persistent global definitions
include /etc/firejail/globals.local


whitelist /tmp/.X11-unix/X470
whitelist /tmp/fcitx-socket-:0
whitelist /tmp/user/1000/
include /etc/firejail/whitelist-common.inc

>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db
caps.drop all
env DISPLAY=:470
ipc-namespace
net none
<<<<<<< HEAD
noexec /tmp
whitelist /tmp/user/1000/
whitelist /tmp/.X11-unix/X0
whitelist /tmp/fcitx-socket-:0

# env DISPLAY=:470
=======
netfilter
nogroups
noroot
seccomp

private-dev

noexec /tmp
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db
