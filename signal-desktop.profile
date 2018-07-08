ignore private-opt
ignore noroot
ignore nodbus

include ${HOME}/.config/firejail/common.inc

whitelist /opt/Signal

whitelist ${HOME}/.config/Signal
whitelist ${DOWNLOADS}
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.config/gtk-3.0

private-lib nss,pulseaudio,locale,gconv,libsqlite3.so.0,libudev.so.1,libvorbisenc.so.2,libvorbis.so.0,libogg.so.0,libFLAC.so.8,libasyncns.so.0,libsndfile.so.1,libwrap.so.0,libSM.so.6,libICE.so.6,libcap.so.2,libpulse.so.0,libnotify.so.4,libGL.so.1
private-bin signal-desktop
private-etc hosts,fonts,xdg,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf
