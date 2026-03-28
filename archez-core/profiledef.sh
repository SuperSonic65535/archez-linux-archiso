#!/usr/bin/env bash
# shellcheck disable=SC2034
iso_name="archez"
iso_label="ARCH_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%y%m%d)"
iso_publisher="ArchEZ <https://github.com/SuperSonic65535/archez-linux-archiso>"
iso_application="ArchEZ"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.grub')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
# Use all threads for mksquashfs if total is 4 or less, otherwise use half of total threads
#AIROOTFS_THREADS="$([ $(nproc) -le 4 ] && nproc || expr $(nproc) / 2)"
AIROOTFS_THREADS=$(nproc)
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '22' '-b' '1M' '-not-reproducible' '-processors' $AIROOTFS_THREADS)
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
    ["/usr/share/libalpm/scripts/archiso-setup.sh"]="0:0:755"
)
