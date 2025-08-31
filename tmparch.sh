#!/bin/bash
set -e
trap 'rm -rf "$TMPROOT"' EXIT

if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

COPYROOT="/var/lib/tmparch/"
if [ ! -d "/var/lib/tmparch/" ]; then
  echo "Running first time setup..."
  mkdir -p "$COPYROOT"
  pacstrap "$COPYROOT" base base-devel
  passwd --root "$COPYROOT" -d root
fi

TMPROOT=$(mktemp -d /tmp/container-XXXX)
cp "$COPYROOT/." "$TMPROOT" -a
systemd-nspawn -D "$TMPROOT" --boot --network-veth
