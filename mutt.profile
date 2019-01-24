ignore private-tmp
ignore private-dev
ignore net none

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/mutt
mkdir ${HOME}/.config/mutt/muttrc
mkdir ${HOME}/.config/mutt/mutt_cache
mkdir ${HOME}/.config/mutt/signatures

whitelist ${HOME}/.config/mutt
whitelist ${HOME}/.config/mailcap
whitelist ${HOME}/Mail
whitelist ${HOME}/.gnupg
whitelist ${HOME}/.config/gnupg
whitelist ${HOME}/.config/rolo
whitelist ${DOWNLOADS}

whitelist /tmp/user/1000/emacs1000/
whitelist /tmp/user/1000/mutt1000/

# Enhance security

private-bin sh,dash,mutt,mutt_dotlock,bash,emacsclient,emacsclient.emacs25,elinks,gpg,gpg-agent,gpgsm,pinentry,dig,awk,pinentry-gtk-2,mutt_vc_query
# private-lib x86_64-linux-gnu/sasl2,nss,libdb-5.3.so,libcrypt-2.27.so,libcrypto.so.1.1,gconv,libapparmor.so.1,libtinfo.so.6,libtic.so.6,terminfo

whitelist /usr/share/locale
whitelist /usr/share/zoneinfo

whitelist /dev/stdout
whitelist /dev/stdin
whitelist /dev/stderr
whitelist /dev/urandom
whitelist /dev/random
whitelist /dev/null
whitelist /dev/tty

private-etc Muttrc.d,Muttrc,alternatives,resolv.conf,ssl,mime.types,localtime

seccomp.keep open,access,prctl,fstat,mmap,write,read,close,munmap,chown,unshare,fcntl,execve,brk,mprotect,arch_prctl,getpid,getuid,getgid,geteuid,getegid,rt_sigprocmask,rt_sigaction,uname,stat,getppid,getpgrp,getrlimit,getpeername,set_tid_address,set_robust_list,futex,getrusage,umask,ioctl,socket,connect,lseek,getsid,pipe,clone,dup2,wait4,openat,rt_sigreturn,getdents,exit_group,faccessat,lstat,pread64,pwrite64,ftruncate,select,unlink,mkdir,link,rmdir,alarm,readlink,sendto,fdatasync,recvfrom,chmod,getcwd,setrlimit,utime,mlock,clock_gettime,setresgid,chdir,fsync,nanosleep,poll,sendmmsg,bind,getsockname,recvmsg,writev,mremap,rename,truncate,sched_yield,sysinfo,kill,sendmsg,setresuid,setsid,listen,pselect6,accept,getsockopt,tgkill,madvise,exit,statfs,getrandom,fchmod,fchown,gettid,sigaltstack,epoll_create,getgroups,epoll_ctl,rt_sigsuspend,setsockopt,epoll_wait,inotify_init,inotify_add_watch,prlimit64,getresuid,getresgid,dup,eventfd2,munlock,fstatfs,fadvise64,shmget,shmat,shmctl,shmdt,symlink,restart_syscall,getdents64,pipe2,readlinkat,timerfd_create

writable-run-user
