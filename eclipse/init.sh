#!/bin/bash
dbus-uuidgen > /var/lib/dbus/machine-id
usermod -u $MY_UID -g $MY_GID me
su me -c eclipse
