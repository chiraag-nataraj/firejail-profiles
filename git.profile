ignore blacklist /usr/share/
include ${HOME}/.config/firejail/ssh.profile

whitelist ${DOCUMENTS}
whitelist ${HOME}/.config/git
whitelist ${HOME}/.config/gnupg
whitelist ${HOME}/.local/share/password-store

private-bin git,git-receive-pack,git-shell,git-upload-archive,git-upload-pack,gpg,pager,sh
private-etc ssl,alternatives,terminfo
private-lib git-core,libcurl-gnutls.so.4,libexpat.so.1,ssl,x86_64-linux-gnu/sasl2,nss,libdb-5.3.so,libcrypt-2.27.so,libcrypto.so.1.1,terminfo

whitelist /usr/share/git-core

quiet
