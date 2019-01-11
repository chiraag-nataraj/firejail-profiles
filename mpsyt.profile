ignore nodbus

include ${HOME}/.config/firejail/mpv-relaxed.inc
include ${HOME}/.config/firejail/mpv.profile

whitelist ${HOME}/.config/mps-youtube/config
whitelist ${HOME}/.config/mps-youtube/mpv-input.conf

private-bin mpsyt

quiet
