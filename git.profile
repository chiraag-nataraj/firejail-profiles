ignore blacklist /usr/share/
include ${HOME}/.config/firejail/ssh.profile

whitelist ${DOCUMENTS}
whitelist ${HOME}/.gitconfig
whitelist ${HOME}/.gnupg
whitelist ${HOME}/.password-store

private-bin git,git-receive-pack,git-shell,git-upload-archive,git-upload-pack,gpg
private-etc ssl
private-lib git-core,libcurl-gnutls.so.4,libexpat.so.1,ssl,x86_64-linux-gnu/sasl2,nss,libdb-5.3.so,libcrypt-2.27.so,libcrypto.so.1.1

whitelist /usr/share/git-core

quiet
