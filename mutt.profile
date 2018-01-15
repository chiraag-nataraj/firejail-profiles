# Firejail profile for mutt
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/mutt.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.gnupg
whitelist ${HOME}/.mailcap
whitelist ${HOME}/.mutt
whitelist ${HOME}/.mutt_cache
whitelist ${HOME}/.mutt_certificates
whitelist ${HOME}/.muttrc
whitelist ${HOME}/.signatures
whitelist ${HOME}/Downloads
whitelist ${HOME}/Mail
whitelist ${HOME}/sent
# whitelist /dev/random
# whitelist /dev/stderr
# whitelist /dev/stdin                                                                     
# whitelist /dev/stdout
# whitelist /dev/urandom
whitelist /tmp/user/1000/emacs1000/
whitelist /tmp/user/1000/mutt1000/
include /etc/firejail/whitelist-common.inc

caps.drop all
env DISPLAY=:480
nogroups
noroot
seccomp.keep open,access,prctl,fstat,mmap,write,read,close,munmap,chown,unshare,fcntl,execve,brk,mprotect,arch_prctl,getpid,getuid,getgid,geteuid,getegid,rt_sigprocmask,rt_sigaction,uname,stat,getppid,getpgrp,getrlimit,getpeername,set_tid_address,set_robust_list,futex,getrusage,umask,ioctl,socket,connect,lseek,getsid,pipe,clone,dup2,wait4,openat,rt_sigreturn,getdents,exit_group,faccessat,lstat,pread64,pwrite64,ftruncate,select,unlink,mkdir,link,rmdir,alarm,readlink,sendto,fdatasync,recvfrom,chmod,getcwd,setrlimit,utime,mlock,clock_gettime,setresgid,chdir,fsync,nanosleep,poll,sendmmsg,bind,getsockname,recvmsg,writev,mremap,rename,truncate,sched_yield,sysinfo,kill,sendmsg,setresuid,setsid,listen,pselect6,accept,getsockopt,tgkill,madvise,exit,statfs,getrandom,fchmod,fchown,gettid,sigaltstack,epoll_create,getgroups,epoll_ctl,rt_sigsuspend,setsockopt,epoll_wait,inotify_init,inotify_add_watch,prlimit64,getresuid,getresgid,dup,eventfd2,munlock

private-bin sh,dash,mutt,mutt_dotlock,bash,emacsclient,emacsclient.emacs25,elinks,gpg,gpg-agent,pinentry,dig,awk
private-dev
private-etc Muttrc.d/,Muttrc,alternatives/,resolv.conf,ssl/,mime.types,proxychains.conf

noexec ${HOME}
noexec /tmp
