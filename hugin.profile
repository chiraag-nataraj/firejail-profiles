blacklist /usr/local/bin
blacklist /usr/local/sbin

# whitelist ${HOME}/.gtkrc-2.0
# whitelist ${HOME}/.gtkrc.mine
# whitelist ${HOME}/.themes
# whitelist ${HOME}/.hugin
# whitelist ${HOME}/Pictures
# whitelist ${DOWNLOADS}

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin PTBatcherGUI,calibrate_lens_gui,hugin,hugin_stitch_project,align_image_stack,autooptimiser,celeste_standalone,checkpto,cpclean,cpfind,deghosting_mask,fulla,geocpset,hugin_executor,hugin_hdrmerge,hugin_lensdb,icpfind,linefind,nona,pano_modify,pano_trafo,pto_gen,pto_lensstack,pto_mask,pto_merge,pto_move,pto_template,pto_var,tca_correct,verdandi,vig_optimize
private-dev
private-etc fonts

whitelist /tmp/.X11-unix
# I have forced DBus to use an ordinary unix socket
whitelist /tmp/dbus_session_socket

shell none
net none
seccomp
caps.drop all
noroot
nonewprivs
nogroups
ipc-namespace