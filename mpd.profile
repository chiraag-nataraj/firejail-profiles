include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/mpd
mkfile ${HOME}/.mpdconf

whitelist ${HOME}/Music
whitelist ${HOME}/mpd
whitelist ${HOME}/.mpdconf
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.pulse/
read-only ${HOME}/Music/

private-bin mpd,bash
private-etc emp
private-lib
