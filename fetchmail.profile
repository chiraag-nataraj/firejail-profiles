ignore net

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/Mail

private-bin fetchmail,getmail_maildir,bash,chmod,python2,sh
private-lib nss,ssl,python2.7,libnss_resolve.so.2,libnss_mdns4_minimal.so.2,locale,libnss_files.so.2,libnsl.so.1,libnss_nis.so.2,libnss_compat.so.2,libutil.so.1,libz.so.1,libm.so.6
# private-etc passwd,hosts,resolv.conf,nsswitch.conf

# whitelist /usr/share/locale

nosound
x11 none
