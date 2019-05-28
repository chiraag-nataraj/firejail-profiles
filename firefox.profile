ignore private-dev
ignore nou2f
ignore net none
ignore nodbus
ignore nosound
ignore novideo
ignore no3d
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/mozilla/firefox

# whitelist ${HOME}/.mozilla
whitelist ${HOME}/.config/mozilla/firefox
whitelist ${DOWNLOADS}
whitelist ${HOME}/.pulse
whitelist ${HOME}/.cache/mozilla/firefox
whitelist ${HOME}/.config/pulse
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.local/share/themes

private-bin firefox,firefox-esr,which,sh,env,bash
private-etc hosts,passwd,mime.types,fonts,mailcap,firefox,xdg,gtk-3.0,X11,pulse,alternatives,localtime,nsswitch.conf,resolv.conf

# Disabled for now because it crashes certain sites

# whitelist /usr/share/firefox
# whitelist /usr/share/mozilla
# whitelist /usr/share/fonts
# whitelist /usr/share/icons
# whitelist /usr/share/themes
# whitelist /usr/share/mime
# whitelist /usr/share/zoneinfo
# whitelist /usr/share/locale
# whitelist /usr/share/glib-2.0
blacklist /usr/share/fonts/truetype/unifont
