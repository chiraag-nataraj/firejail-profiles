# Firejail profile for hugin
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/hugin.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin
blacklist /usr/local/sbin

# whitelist ${DOWNLOADS}
# whitelist ${HOME}/.gtkrc-2.0
# whitelist ${HOME}/.gtkrc.mine
# whitelist ${HOME}/.hugin
# whitelist ${HOME}/.themes
# whitelist ${HOME}/Pictures
whitelist /tmp/.X11-unix
# DBus is forced to use an ordinary unix socket
whitelist /tmp/dbus_session_socket
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
nonewprivs
noroot
seccomp
shell none

private-bin PTBatcherGUI,calibrate_lens_gui,hugin,hugin_stitch_project,align_image_stack,autooptimiser,celeste_standalone,checkpto,cpclean,cpfind,deghosting_mask,fulla,geocpset,hugin_executor,hugin_hdrmerge,hugin_lensdb,icpfind,linefind,nona,pano_modify,pano_trafo,pto_gen,pto_lensstack,pto_mask,pto_merge,pto_move,pto_template,pto_var,tca_correct,verdandi,vig_optimize,enblend
private-dev
private-etc fonts
