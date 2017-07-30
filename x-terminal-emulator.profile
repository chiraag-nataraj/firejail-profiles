caps.drop all
seccomp
netfilter
private-dev
ipc-namespace
noroot
nogroups
net none
noexec /tmp
whitelist /tmp/user/1000/
whitelist /tmp/.X11-unix/X470
whitelist /tmp/fcitx-socket-:0

env DISPLAY=:470