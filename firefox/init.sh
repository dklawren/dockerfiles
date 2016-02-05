#!/bin/bash
dbus-uuidgen > /var/lib/dbus/machine-id
su firefox -c "/usr/bin/firefox --no-remote --profile $HOME/.mozilla/firefox/8v0q03cj.nightly"
