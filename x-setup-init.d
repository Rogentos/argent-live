#!/sbin/runscript
# Copyright 2009-2013 Sabayon
# Distributed under the terms of the GNU General Public License v2

depend() {
    after mtab
    before hostname
    before xdm
}



start() {
    . /sbin/rogentos-functions.sh

    ebegin "Configuring GPUs and input devices"
    if rogentos_is_live; then
        /sbin/gpu-configuration > /dev/null
        eend 0
        return 0
    fi

    /usr/libexec/x-setup.sh > /dev/null
    eend ${?}
}
