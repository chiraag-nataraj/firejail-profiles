#!/bin/bash

PRIVATE=0
NAME=""
COPY=0
NETNS=""
RMPROF=0

while getopts "p:tcn:" arg
do
    case ${arg} in
	p)
	    PROFILE=${OPTARG}
	    NAME=$(basename $PROFILE)
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
FJARGS=( --nowhitelist="${PROFILEDIR}" )

# private-lib generation if enabled

if [ "$PRIVLIB" -eq 1 ]
then
    . $GENLIB
    LIBS=$(compile_list ${LIBDIR} ${EXTRALIBS})
    FJARGS+=( --private-lib="$LIBS" )
fi

# Deal with creating a private profile if requested

if [ "$PRIVATE" -eq 1 ]
then
    SRCDIR=${PROFILE}
    PROFILE=$(mktemp -d -p ${PROFILEDIR})
    NAME=$(basename $PROFILE)
    if [ "${DESTDIR}" != "" ]
    then
	mkdir ${PROFILE}/"${DESTDIR}"
    fi
    RMPROF=1
    if [ "$COPY" -eq 1 ]
    then
	for i in "${TOCOPY[@]}"
	do
	    cp -R "${SRCDIR}"/"${i}" ${PROFILE}/"${DESTDIR}"/"${i}"
	done
    fi
fi

PROGNAME=$(basename $(echo ${PROG} | cut -d' ' -f 1))
FJARGS+=( --whitelist="${PROFILE}" --name="${PROGNAME}-${NAME}" )

vpncmd

if [ "$NETNS" != "" ]
then
    FJARGS+=( --net="${NETNS}" )
fi

for i in "${ENVVARS[@]}"
do
    FJARGS+=( --env="${i}" )
done

CMD="${FIREJAIL} ${FJARGS[@]} -- $(eval echo ${PROG})"
RCMD="$(eval echo ${RPROG})"

SYSTEMDCMD="systemd-run --wait --user --unit=${PROGNAME}-${NAME}.service --description=${PROGNAME}-${NAME}"

# if [ "${ENVVARS}" != "" ]
# then
#     SYSTEMDCMD="${SYSTEMDCMD} -E ${ENVVARS}"
# fi

# systemd-specific behavior if enabled

if [ "$USE_SYSTEMD" -eq 1 ]
then
    RUNNING=$(systemctl --user --quiet is-active ${PROGNAME}-${NAME}.service; echo $?)
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
    rm -r ${PROFILE}
fi
