whitelist ${HOME}/.Skype
whitelist ${HOME}/Downloads
noexec ${HOME}/
noexec /tmp/
caps.drop all
protocol inet,inet6,unix
seccomp
noroot
private-etc resolv.conf,hosts,fonts,pulse
private-bin skype,bash
whitelist /tmp/.X11-unix
ipc-namespace