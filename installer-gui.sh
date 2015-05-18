#!/bin/bash

. /sbin/argent-functions.sh

if argent_is_gui_install; then
	argent_setup_autologin
	argent_setup_gui_installer
fi
