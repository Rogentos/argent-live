#!/bin/bash

CMD=$(cat /etc/conf.d/xdm | grep "DISPLAY" | cut -d '"' -f 2)
if [ "${CMD}" == "lxdm" ] || [ "${CMD}" == "gdm" ] || [ "${CMD}" == "lightdm" ] || [ "${CMD}" == "kdm" ] || [ "${CMD}" == "slim" ] ; then
	/usr/bin/systemctl start "${CMD}".service
fi
