include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/mpd
mkfile ${HOME}/.mpdconf

whitelist ${MUSIC}
whitelist ${HOME}/mpd
whitelist ${HOME}/.mpdconf
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.pulse/
read-only ${MUSIC}

private-bin mpd,bash
private-etc emp
private-lib

blacklist /usr/share/
