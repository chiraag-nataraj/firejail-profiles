include ${HOME}/.config/firejail/ssh.profile

whitelist ${DOCUMENTS}

private-bin git,git-receive-pack,git-shell,git-upload-archive,git-upload-pack
