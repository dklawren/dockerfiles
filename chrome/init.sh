#!/bin/bash
dbus-uuidgen > /var/lib/dbus/machine-id
su chrome -c "google-chrome --user-data-dir=/data"
