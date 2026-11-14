#!/bin/sh
## Generate locales if not already done
[ $(localectl list-locales | grep -c ".UTF-8") -le 1 ] && locale-gen

## Create users and groups
groupadd -r autologin
useradd -m live; passwd -d live
gpasswd -a live wheel; gpasswd -a live autologin
passwd -d root

## Enable important system services
systemctl enable NetworkManager systemd-timesyncd
[ -f /usr/lib/systemd/system/ModemManager.service ] && systemctl enable ModemManager
if [ -f /usr/lib/systemd/system/firewalld.service ]; then systemctl enable firewalld
elif [ -f /usr/lib/systemd/system/ufw.service ]; then systemctl enable ufw; fi

## Uncomment mirrors in pacman mirrorlist
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

## Initialise Pacman keyring
#pacman-key --init
#pacman-key --populate

## Add Chaotic-AUR keys
#pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
#pacman-key --lsign-key 3056513887B78AEB

## Replace mkinitcpio.conf so that mkinitcpio is properly configured for Arch install
#cp -f /etc/mkinitcpio.conf.system /etc/mkinitcpio.conf

## Back up microcode
#cp /boot/amd-ucode.img /; cp /boot/intel-ucode.img /

## Delete non-essential system files to save space on CD
rm -rf /usr/share/doc/* /usr/share/gtk-doc/ /usr/share/info/* /usr/share/man/*
rm -rf /usr/share/licenses/*

## Delete non-essential firmware/drivers to save space on CD
rm -rf /usr/lib/firmware/i915

## Remove all unused locales to save space on CD
declare -A ok; for loc in $(locale -a | grep -Ev '^(C|POSIX)'); do
	clean="${loc%%.*}"; ok["$clean"]=1
	[[ "$clean" == *_* ]] && ok["${clean%%_*}"]=1
done; for dir in /usr/share/locale/*; do
	[[ -d "$dir" && ! -L "$dir" ]] || continue
	name=$(basename "$dir")
	if [[ -z "${ok[$name]}" ]]; then echo "Removed $dir"; rm -rf "$dir"; fi
done; for file in /usr/share/i18n/locales/*; do
	[[ -f "$file" && ! -L "$file" ]] || continue
	name=$(basename "$file")
	if [[ -z "${ok[$name]}" ]] && [ "$name" != "C" ] && [ "$name" != "POSIX" ]
	then echo "Removed $file"; rm -rf "$file"; fi
done


## Cleanup files and fix permissions
#chmod 750 /etc/polkit-1/rules.d
#chmod 750 /usr/share/polkit-1/rules.d
rm -f /etc/*.pacnew /etc/*/*.pacnew
rm -f /usr/share/libalpm/hooks/zzzz-archiso-setup.hook
rm -f /usr/share/libalpm/scripts/archiso-setup.sh
