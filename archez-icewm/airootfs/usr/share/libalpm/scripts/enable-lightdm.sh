#!/bin/sh
## Enable LightDM
systemctl enable lightdm

## Cleanup files
rm -f /usr/share/libalpm/hooks/enable-lightdm.hook
rm -f /usr/share/libalpm/scripts/enable-lightdm.sh
