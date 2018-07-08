include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/Music
whitelist ${HOME}/mpd
whitelist ${HOME}/.mpdconf
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.pulse/
read-only ${HOME}/Music/

private-bin mpd,bash
private-etc emp
private-lib

net none
# protocol unix
x11 none
