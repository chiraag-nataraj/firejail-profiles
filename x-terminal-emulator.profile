caps.drop all
seccomp
netfilter
private-dev
noroot
net none
protocol unix
whitelist /tmp/user/1000/
whitelist /tmp/.X11-unix/

noexec /tmp