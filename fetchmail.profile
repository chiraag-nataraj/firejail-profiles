include /etc/firejail/globals.local

whitelist ${HOME}/scripts/fetchmail-real.sh
# whitelist ${HOME}/.fetchmailrc.gpg
## Location of your fetchmailrc - I decrypt it into /tmp/fetchmailrc
whitelist /tmp/fetchmailrc
whitelist ${HOME}/Mail
whitelist ${HOME}/.procmailrc.gmail
whitelist ${HOME}/.procmailrc.brown

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

noroot
# private-bin fetchmail,procmail,bash,chmod
private-dev
# private-etc passwd,hosts,resolv.conf
caps.drop all
seccomp
nogroups
nosound

x11 none