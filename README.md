Is your Windows PC or Mac slow or unsupported? Don't throw it away, try ArchEZ today!
ArchEZ is an easy to use, highly customisable Arch Linux based OS. It's fast, secure, and supports all your favourite software and games*. No ads, bloat or data collection here! Try ArchEZ and reclaim your privacy and freedom!

ArchEZ was created to make using Arch Linux as easy as possible. Arch Linux can be challenging for newcomers, and installation takes time and effort, especially for multiple devices.
ArchEZ includes an easy to use graphical installer and comes pre-configured with everything the typical computer user needs while still remaining lightweight, modular and customisable. No command line required, just click install and you're ready to go!
It's essentially Arch Linux with a pre-installed desktop environment, applications and some optimisations. Just like Arch Linux, ArchEZ keeps it simple, but also accessible. ArchEZ lets users of all skill levels enjoy the benefits of Arch Linux with none of the challenges.

**daily-build:** ArchEZ installation images with the latest software, automatically built daily from 10-11AM (UK time). These are usually untested, so if you experience issues wait for an update or try a stable version.  
**stable:** ArchEZ installation images tested and verified in a virtual machine, updated much less frequently with no set schedule. Some software may be out of date, so check for updates after installation. If you experience issues, try installing a daily build or wait for the next stable version.

## Desktop editions
For a complete, easy to use desktop experience for everyday users.  
All desktop editions include:  
• System drivers for networking, mobile data, bluetooth, printing and scanning  
• Open-source game-ready drivers for AMD, Intel and NVIDIA graphics  
• Audio drivers (Pipewire)  
• Uncomplicated Firewall (UFW) for enhanced internet security  
• Command-line utilities, manuals and documentation (ddrescue, man-db, sudo, texinfo, nano etc.)  
• Chaotic-AUR and aur-fresh-builds repositories provide additional software  
• Yay command-line tool to make installing software easier  

**archez-kde-gaming**  
KDE Plasma desktop with core applications, extra utilities, add-ons and a sleek UI theme.  
  
![KDE Plasma Gaming edition (light theme)](https://github.com/SuperSonic65535/archez-archiso/blob/e67d08087fdd06328c3f678a96ac3dc1745278d9/screenshots/kde-plasma-gaming-01.png)  
  
![Multitasking in KDE Plasma (dark theme)](https://github.com/SuperSonic65535/archez-archiso/blob/e67d08087fdd06328c3f678a96ac3dc1745278d9/screenshots/kde-plasma-gaming-02.png)  
**Includes:**  
• Firefox browser with UBlock Origin and Dark Reader, LibreOffice Fresh and VLC Media Player  
• Gaming software like Lutris, OBS Studio and Mangohud included  
• Automatic light and dark theme switching (Koi)  
• Supports Microsoft Windows games and applications via Wine compatibility layer  
• Supports Microsoft Windows NTFS volumes, FAT32, exFAT, RAID, LVM, BTRFS and UDF volumes  
• HDR video support (experimental)  
• Includes Pamac graphical package manager for official repositories and AUR  
**Choose if:**  
• You want a sleek, modern looking desktop with animations and effects  
• You want a familiar, easy to use desktop experience similar to Microsoft Windows, without the annoying bits  
• You want a powerful, customisable desktop with lots of useful features and shortcuts  
• You play games or watch videos in HDR  
• You have a high pixel density display (supports fractional scaling from 0.5x to 3x)  
• You have a computer made after 2012 with at least a dual-core processor, 4GB RAM and 16GB disk space  
**Don't choose if:**  
• You have an old, slow computer made before 2010 with less than 2GB RAM and less than 12GB disk space

**archez-xfce**  
XFCE lightweight desktop with core applications, extra utilities and some add-ons.  
**Includes:**  
• Firefox browser with UBlock Origin and Dark Reader, LibreOffice Fresh and VLC Media Player  
• Supports Microsoft Windows games and applications via Wine compatibility layer  
• Supports Microsoft Windows NTFS volumes, FAT32, exFAT, RAID, LVM, BTRFS and UDF volumes  
**Choose if:**  
• You want a reliable, fast, snappy and responsive desktop that works great on old hardware  
**Don't choose if:**  
• You want to watch HDR videos (HDR is not supported on XFCE or X11 in general)  
• You have a high pixel density display (XFCE and GTK only support 1x and 2x scaling)  

## Lightweight editions
High performance, minimal footprint for servers, embedded devices and old hardware.  
All lightweight editions include:  
• System drivers for networking  
• Basic video for AMD, Intel and NVIDIA graphics  
• Audio drivers (Pipewire)  
• Command-line utilities, manuals and documentation (ddrescue, man-db, sudo, texinfo, nano etc.)  
• Chaotic-AUR and aur-fresh-builds repositories provide additional software  
• Yay command-line tool to make installing software easier  

**archez-icewm**  
IceWM ultra-lightweight graphical window manager.  
**Choose if:**  
• You want an minimal, high performance experience that works great on old hardware and embedded devices  
• You are installing on a server and mostly use the command line instead of a GUI  
• You want a minimal base to build up and customise to your exact needs  
**Don't choose if:**  
• You have little experience with Linux and want something easy to use  

## How to build
**1)** Clone this repository, then enter the folder  
`git clone https://github.com/dankcuddlybear/archez-archiso.git; cd archez-archiso`  
**2)** (Optional) Edit the file `build-iso` and change `ISO_OUT_DIR` to whatever you want.  
**3)** Run the script, specifying the ArchISO profile you want to use (defaults to `archez-kde-gaming`)  
`./build-iso archez-kde-gaming`  
**4) Done!** Now you can make a bootable USB drive, or boot it in a virtual machine.

## Known issues
• **HP laptops:** Certain multimedia and brightness control keys may not work. Built-in SD card reader may not work (USB card readers unaffected). HP Gaming laptops with NVIDIA graphics may have power management issues leading to severely reduced performance or system instability. Tested: HP Pavilion Gaming 17-cd0xxx, HP Pavilion 17-p100na  
• **Microsoft Surface:** WiFi, USB, keyboard and touchpad working, but touchscreen not detected. You need to rebuild the ISO with the linux-surface kernel or install it afterwards. [Instructions](https://github.com/linux-surface/linux-surface/wiki/Installation-and-Setup#Arch) Tested: Microsoft Surface Pro 9

## Disclaimer
ArchEZ is alpha software and comes with NO WARRANTY. Use at your own risk.

## Notes
*Windows games supported via Wine, Proton and Steam. While at least 90% of Windows games are playable (according to Steam), a small number may have compatibility issues.
