ignore memory-deny-write-execute
ignore nodbus

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/kdenlive

# Apparently these break kdenlive for some people - they work for me though?
whitelist ${HOME}/.config/
whitelist ${HOME}/kdenlive
whitelist ${DOWNLOADS}
whitelist ${VIDEOS}

private-bin kdenlive,kdenlive_render,dbus-launch,melt,ffmpeg,ffplay,ffprobe,dvdauthor,genisoimage,vlc,xine,kdeinit5,kshell5,kdeinit5_shutdown,kdeinit5_wrapper,kdeinit4,kshell4,kdeinit4_shutdown,kdeinit4_wrapper
private-etc fonts,alternatives,X11,pulse,passwd
