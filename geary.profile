# Firejail profile for geary
# Description: Lightweight email client designed for the GNOME desktop
# This file is overwritten after every install/update
# Persistent local customizations
include geary.local
# Persistent global definitions
include globals.local

# Users have Geary set to open a browser by clicking a link in an email
# We are not allowed to blacklist browser-specific directories

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*

noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.local/share/geary
noblacklist ${HOME}/.config/geary

mkdir ${HOME}/.gnupg
mkdir ${HOME}/.config/geary
mkdir ${HOME}/.local/share/geary

whitelist ${HOME}/.gnupg
whitelist ${HOME}/.config/geary
whitelist ${HOME}/.local/share/geary

include /etc/firejail/disable-common.inc
# include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-interpreters.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-xdg.inc

ignore nodbus
ignore private-tmp

private-dev


read-only ${HOME}/.config/mimeapps.list

# allow browsers
# Redirect
include firefox.profile
