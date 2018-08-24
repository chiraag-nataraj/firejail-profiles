include ${HOME}/.config/firejail/ssh.profile

whitelist ${DOCUMENTS}
whitelist ${HOME}/.gitconfig
whitelist ${HOME}/.gnupg

private-bin git,git-receive-pack,git-shell,git-upload-archive,git-upload-pack,gpg
