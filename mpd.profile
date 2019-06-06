ignore nosound

include ${HOME}/.config/firejail/common.inc

mkfile ${HOME}/.config/mpd/mpd.conf

whitelist ${MUSIC}
whitelist ${HOME}/.local/share/mpd
whitelist ${HOME}/.config/mpd/
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.pulse/
read-only ${MUSIC}

private-bin mpd,bash
# private-etc alternatives
private-lib

blacklist /usr/share/
