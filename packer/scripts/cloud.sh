#!/bin/bash

# Set up sudo
echo '%wheel ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/wheel
echo 'Defaults:wheel !requiretty' >> /etc/sudoers.d/wheel
chmod 0440 /etc/sudoers.d/wheel

passwd -dl void
passwd -dl root

rm -rf /var/cache/xbps
