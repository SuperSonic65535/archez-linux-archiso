#!/bin/sh
## Generate locales if not already done
[ $(localectl list-locales | grep -c ".UTF-8") -le 1 ] && locale-gen

## Create users and groups
groupadd -r autologin
useradd -m live; passwd -d live
gpasswd -a live wheel; gpasswd -a live autologin
passwd -d root

## Enable important system services
systemctl enable fstrim.timer systemd-timesyncd NetworkManager
[ -f /usr/lib/systemd/system/ufw.service ] && systemctl enable ufw

## Uncomment mirrors in pacman mirrorlist
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

## Initialise Pacman keyring
pacman-key --init
pacman-key --populate

## Add Chaotic-AUR keys
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB

## Replace mkinitcpio.conf so that mkinitcpio is properly configured for Arch install
cp -f /etc/mkinitcpio.conf.system /etc/mkinitcpio.conf

## Back up microcode
cp /boot/amd-ucode.img /; cp /boot/intel-ucode.img /

## Cleanup files and fix permissions
chmod 750 /etc/polkit-1/rules.d
chmod 750 /usr/share/polkit-1/rules.d
rm /etc/*.pacnew /etc/*/*.pacnew
rm -f /usr/share/libalpm/hooks/zzzz-archiso-setup.hook
rm -f /usr/share/libalpm/scripts/archiso-setup.sh
