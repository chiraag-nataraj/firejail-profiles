#!/bin/bash

VARFILE="$1"
. "$VARFILE"

PROFILE=$2
NAME=$(basename $PROFILE)
PRIVATE=$3
COPY=$4
NETNS=$5
RMPROF=0
shift 5

vpncmd()
{
    systemctl -q is-active openvpn@us3-TCP-chaanakya && NETNS="" || NETNS="$NETNS"
}

FIREJAIL="firejail --nowhitelist=${PROFILEDIR}"

# private-lib generation if enabled

if [ "$PRIVLIB" -eq 1 ]
then
    . $GENLIB
    LIBS=`compile_list ${LIBDIR} ${EXTRALIBS}`
    FIREJAIL="${FIREJAIL} --private-lib=$LIBS"
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
FIREJAIL="${FIREJAIL} --whitelist=${PROFILE} --name=${PROGNAME}-${NAME}"

vpncmd

if [ "$NETNS" != "" ]
then
    FIREJAIL="${FIREJAIL} --net=${NETNS}"
fi

for i in "${ENVVARS[@]}"
do
    FIREJAIL="${FIREJAIL} --env=${i}"
done

CMD="${FIREJAIL} -- $(eval echo ${PROG})"
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
    rm -rf ${PROFILE}
fi
