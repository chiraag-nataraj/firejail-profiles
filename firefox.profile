ignore private-dev
ignore nou2f
ignore net

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.mozilla
whitelist ${HOME}/Downloads/
whitelist ${HOME}/.pulse/
whitelist ${HOME}/.cache/mozilla/firefox
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.config/gtk-3.0/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes
whitelist ${HOME}/.Xauthority

# Private directories

private-bin firefox,which,sh,env
private-etc hosts,passwd,mime.types,fonts,mailcap,firefox,xdg,gtk-3.0,X11,pulse,alternatives,localtime,nsswitch.conf

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
# whitelist /dev/hidraw0
# whitelist /dev/hidraw1
# whitelist /dev/hidraw2
# whitelist /dev/usb
# whitelist /dev/usb/hiddev0

# Miscellaneous options

# protocol unix,inet,inet6
