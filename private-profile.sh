#!/bin/bash

PRIVATE=0
NAME=""
COPY=0
NETNS=""
RMPROF=0

set -ue

while getopts "p:tcn:" arg
do
    case ${arg} in
	p)
	    PROFILE=${OPTARG}
	    NAME=$(basename "$PROFILE")
	    ;;
	t)
	    PRIVATE=1
	    ;;
	c)
	    COPY=1
	    ;;
	n)
	    NETNS=${OPTARG}
	    ;;
	*)
	    exit 1
	    ;;
    esac
done

shift $((OPTIND-1))

VARFILE="$1"
. "$VARFILE"

shift

vpncmd()
{
    systemctl -q is-active openvpn@us3-TCP-chaanakya && NETNS="" || NETNS="$NETNS"
}

FIREJAIL="firejail"
FJARGS=( "--nowhitelist=${PROFILEDIR}" )

# private-lib generation if enabled

if [ "$PRIVLIB" -eq 1 ]
then
    . "$GENLIB"
    LIBS=$(compile_list "${LIBDIR}" "${EXTRALIBS}")
    FJARGS+=( "--private-lib=$LIBS" )
fi

# Deal with creating a private profile if requested

if [ "$PRIVATE" -eq 1 ]
then
    SRCDIR="${PROFILE}"
    PROFILE=$(mktemp -d -p "${PROFILEDIR}")
    NAME=$(basename "$PROFILE")
    if [ "${DESTDIR}" != "" ]
    then
	mkdir "${PROFILE}"/"${DESTDIR}"
    fi
    RMPROF=1
    if [ "$COPY" -eq 1 ]
    then
	for i in "${TOCOPY[@]}"
	do
	    cp -R "${SRCDIR}"/"${i}" "${PROFILE}"/"${DESTDIR}"/"${i}"
	done
    fi
fi

SPROGNAME=$(basename "${PROGNAME}")

FJARGS+=( "--whitelist=${PROFILE}" "--name=${SPROGNAME}-${NAME}" )

vpncmd

if [ "$NETNS" != "" ]
then
    FJARGS+=( "--net=${NETNS}" )
fi

for i in "${ENVVARS[@]}"
do
    FJARGS+=( "--env=${i}" )
done

CMD="${FIREJAIL} ${FJARGS[*]} -- ${PROGNAME} $(eval echo "${PROGARGS[@]}")"
RCMD="${PROGNAME} $(eval echo "${RPROGARGS[@]}")"

SYSTEMDCMD="systemd-run --wait --user --unit=${SPROGNAME}-${NAME}.service --description=${SPROGNAME}-${NAME}"

# systemd-specific behavior if enabled

if [ "$USE_SYSTEMD" -eq 1 ]
then
    RUNNING=$(systemctl --user --quiet is-active "${SPROGNAME}-${NAME}".service; echo $?)
    CMD="${SYSTEMDCMD} ${CMD}"
else
    RUNNING=$(pgrep -f "${PROG}" > /dev/null; echo $?)
fi

if [ "$RUNNING" -eq 0 ]
then
    $RCMD
else
    $CMD
fi

# Remove profile if asked

if [ "$RMPROF" -eq 1 ]
then
    rm -r "${PROFILE}"
fi
