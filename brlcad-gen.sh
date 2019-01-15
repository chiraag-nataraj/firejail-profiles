#!/bin/bash

BRLBIN=/usr/brlcad/dev-7.27.0/bin/

PROGS=( `find $BRLBIN -type f -executable -exec basename {} \;` )
PRIVBIN=`find $BRLBIN -type f -executable -exec basename {} \; | sort | tr '\n' ','`

for i in ${PROGS[@]}
do
    echo 'include ${HOME}/.config/firejail/brlcad.profile' > ${HOME}/.config/firejail/${i}.profile
done

echo "private-bin $PRIVBIN" >> ${HOME}/.config/firejail/brlcad.profile
