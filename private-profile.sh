#!/bin/bash

private=0
name=""
copy=0
netns=""
rmprof=0

set -ue

while getopts "p:tcn:" arg
do
    case ${arg} in
	p)
	    profile=${OPTARG}
	    name=$(basename "$profile")
	    ;;
	t)
	    private=1
	    ;;
	c)
	    copy=1
	    ;;
	n)
	    netns=${OPTARG}
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

vpncmd()
{
    systemctl -q is-active openvpn@us3-TCP-chaanakya && netns="" || netns="$netns"
}

firejail="firejail"
fjargs=( "--nowhitelist=${profiledir}" )

# private-lib generation if enabled

if [ "$privlib" -eq 1 ]
then
    . "$genlib"
    libs=$(compile_list "${libdir}" "${extralibs}")
    fjargs+=( "--private-lib=$libs" )
fi

# Deal with creating a private profile if requested

if [ "$private" -eq 1 ]
then
    nprofile=$(mktemp -d -p "${profiledir}")
    name=$(basename "$nprofile")
    if [ "${destdir}" != "" ]
    then
	mkdir "${nprofile}"/"${destdir}"
    fi
    rmprof=1
    if [ "$copy" -eq 1 ]
    then
	for i in "${tocopy[@]}"
	do
	    cp -R "${profile}"/"${i}" "${nprofile}"/"${destdir}"/"${i}"
	done
    fi
    profile="$nprofile"
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

cmd="${firejail} ${fjargs[*]} -- ${progname} $(eval echo "${progargs[@]}")"
rcmd="${progname} $(eval echo "${rprogargs[@]}")"

systemdcmd="systemd-run --wait --user --unit=${sprogname}-${name}.service --description=${sprogname}-${name}"

# systemd-specific behavior if enabled

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

if [ "$rmprof" -eq 1 ]
then
    rm -r "${profile}"
fi
