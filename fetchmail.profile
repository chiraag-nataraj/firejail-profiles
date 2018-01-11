<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${HOME}/scripts/fetchmail-real.sh
# whitelist ${HOME}/.fetchmailrc.gpg
## Location of your fetchmailrc - I decrypt it into /tmp/fetchmailrc
whitelist /tmp/fetchmailrc
whitelist ${HOME}/Mail
whitelist ${HOME}/.procmailrc.gmail
whitelist ${HOME}/.procmailrc.brown
=======
# Firejail profile for fetchmail
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/fetchmail.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

# Location of your fetchmailrc - I decrypt it into /tmp/fetchmailrc
# whitelist ${HOME}/.fetchmailrc.gpg
whitelist ${HOME}/.procmailrc.brown
whitelist ${HOME}/.procmailrc.gmail
whitelist ${HOME}/Mail
whitelist ${HOME}/scripts/fetchmail-real.sh
whitelist /tmp/fetchmailrc
include /etc/firejail/whitelist-common.inc

caps.drop all
nogroups
noroot
nosound
seccomp
x11 none

# private-bin fetchmail,procmail,bash,chmod
private-dev
# private-etc passwd,hosts,resolv.conf
