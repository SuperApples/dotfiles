#!/usr/bin/env bash
set -euo pipefail

ENTRY="$(awk -F"'" '/^menuentry /{print $2}' /boot/grub/grub.cfg | grep -m1 'Windows Boot Manager')"

if [ -z "$ENTRY" ]; then
    echo "Could not find a GRUB entry containing 'Windows Boot Manager'."
    echo "Available entries:"
    awk -F"'" '/^menuentry /{print " - " $2}' /boot/grub/grub.cfg
    exit 1
fi

echo "Rebooting into: $ENTRY"
sudo grub-reboot "$ENTRY"
sudo reboot
