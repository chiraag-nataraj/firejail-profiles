#!/bin/bash

private=0
privlib=0
use_systemd=0
use_firejail=0
name=""
copy=0
netns=""
rmprof=0
to_copy=()
evvars=()

exitm()
{
    echo "$1"
    rmprof
    exit 1
}

rmprof()
{
    if [[ "$rmprof" -eq 1 && -n "${profile+x}" ]]
    then
	rm -r "${profile}"
    fi
}

set -eu

while getopts "p:tcn:" arg
do
    case ${arg} in
	p)
	    profile="${OPTARG}"
	    name=$(basename "$profile")
	    ;;
	t)
	    private=1
	    ;;
	c)
	    copy=1
	    ;;
	n)
	    netns="${OPTARG}"
	    ;;
	*)
	    exit 1
	    ;;
    esac
done

shift $((OPTIND-1))

varfile="$1"
. "$varfile"

shift

if [[ -z "${progname:+x}" ||  -z "${profiledir:+x}" ]]
then
    exitm '$progname and $profiledir must be specified and cannot be empty strings!'
fi

vpncmd()
{
    systemctl -q is-active openvpn@us3-TCP-chaanakya && netns="" || netns="$netns"
}

firejail="firejail"
fjargs=( "--nowhitelist=${profiledir}" )

# private-lib generation if enabled

if [ "$privlib" -eq 1 ]
then
    if [[ -z "${genlib+x}" || -z "${libdir+x}" ]]
    then
	exitm '$genlib and $libdir must all be set for $privlib!'
    fi
    . "$genlib"
    libs=$(compile_list "${libdir}" "${extralibs:-}")
    fjargs+=( "--private-lib=$libs" )
fi

# Deal with creating a private profile if requested

if [ "$private" -eq 1 ]
then
    nprofile=$(mktemp -d -p "${profiledir}")
    name=$(basename "$nprofile")
    if [ "${destdir:=}" != "" ]
    then
	mkdir "${nprofile}"/"${destdir}"
    fi
    rmprof=1
    if [ "$copy" -eq 1 ]
    then
	if [[ -z "${profile+x}" ]]
	then
	    exitm 'A profile must be specified on the command-line if copying is enabled!'
	fi
	for i in "${tocopy[@]}"
	do
	    cp -R "${profile}"/"${i}" "${nprofile}"/"${destdir}"/"${i}"
	done
    fi
    profile="$nprofile"
fi

if [[ -z "${profile+x}" ]]
then
    exitm 'Either $profile must be specified on the command-line or a temporary profile must be requested!'
fi

sprogname=$(basename "${progname}")

fjargs+=( "--whitelist=${profile}" "--name=${sprogname}-${name}" )

vpncmd

if [ "$netns" != "" ]
then
    fjargs+=( "--net=${netns}" )
fi

for i in "${envvars[@]}"
do
    fjargs+=( "--env=${i}" )
done

progargs="${progargs:-}"
rprogargs="${rprogargs:-}"

cmd="${progname} $(eval echo "${progargs[@]}")"
rcmd="${progname} $(eval echo "${rprogargs[@]}")"

fjcmd="${firejail} ${fjargs[*]} --"
systemdcmd="systemd-run --wait --user --unit=${sprogname}-${name}.service --description=${sprogname}-${name}"

if [ "$use_firejail" -eq 1 ]
then
    cmd="${fjcmd} ${cmd}"
    rcmd="${fjcmd} ${rcmd}"
else
    cmd="/usr/bin/env ${envvars[*]} ${cmd}"
    rcmd="/usr/bin/env ${envvars[*]} ${rcmd}"
fi

if [ "$use_systemd" -eq 1 ]
then
    running=$(systemctl --user --quiet is-active "${sprogname}-${name}".service; echo $?)
    cmd="${systemdcmd} ${cmd}"
else
    running=$(pgrep -f "${progname} $(eval echo "${progargs[@]}")" > /dev/null; echo $?)
fi

if [ "$running" -eq 0 ]
then
    $rcmd
else
    $cmd
fi

# Remove profile if asked

rmprof
