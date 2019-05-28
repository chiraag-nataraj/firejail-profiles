ignore private-opt
ignore nodbus
ignore nosound
ignore novideo
ignore no3d
ignore net
ignore machine-id
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/ViberPC

whitelist ${HOME}/.ViberPC
whitelist ${HOME}/.config/ViberPC
whitelist ${DOWNLOADS}

private-bin sh,dig,awk,xdg-mime,cut,touch,mv
private-etc hosts,fonts,mailcap,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf,ssl
whitelist /opt/viber

# whitelist /dev/dri
# whitelist /dev/full
# whitelist /dev/null
# whitelist /dev/nvidia0
# whitelist /dev/nvidiactl
# whitelist /dev/nvidia-modeset
# whitelist /dev/nvidia-uvm
# whitelist /dev/nvidia-uvm-tools
# whitelist /dev/ptmx
# whitelist /dev/pts
# whitelist /dev/random
# whitelist /dev/shm
# whitelist /dev/snd
# whitelist /dev/tty
# whitelist /dev/urandom
# whitelist /dev/video0
# whitelist /dev/zero

env QML_DISABLE_DISK_CACHE=1
env QT_AUTO_SCREEN_SCALE_FACTOR=0.5
