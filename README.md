# ArchEZ - Arch Linux made easy

ArchEZ is an easy to use, highly customisable open source Arch Linux based OS. It's fast, secure, and supports all your favourite software and games*. No ads, bloat or data collection here! Try ArchEZ and reclaim your privacy and freedom!

ArchEZ was created to make using Arch Linux as easy as possible. Arch Linux can be challenging for newcomers, and installation takes time and effort, especially for multiple devices.
ArchEZ includes an easy to use graphical installer and comes pre-configured with everything the typical computer user needs while still remaining lightweight, modular and customisable. No command line required, just click install and you're ready to go!
It's essentially Arch Linux with a pre-installed desktop environment, applications and some optimisations. Just like Arch Linux, ArchEZ keeps it simple, but also accessible. ArchEZ lets users of all skill levels enjoy the benefits of Arch Linux with none of the challenges. Prior Linux knowledge is recommended but not required.

**daily-build:** ArchEZ installation images with the latest software, automatically built daily from 10-11AM (UTC). These are usually untested, so if you experience issues wait for an update or try a stable version.  
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
• **Dell laptops:** Most Dell laptops will work flawlessly. Certain models however, such as the Latitude 7400, may fail to boot after installation. More specifically, GRUB will not find any bootable partitions. If this is the case, you will need to boot a Unified Kernel Image (UKI) - a Linux kernel and initramfs packed into one EFI bootable image (see [here](https://wiki.archlinux.org/title/Unified_kernel_image)).  
• **Old Dell computers:** Some Dell computers, especially from 2011-2013 with 2nd gen (Sandy Bridge) Intel Core processors, have a broken UEFI implementation, resulting in extremely slow or no boot in UEFI mode. You will need to boot the installer and OS in CSM (Compatibility Support Module) or BIOS compatibility mode. Note that you will be unable to use PCI(e) device passthrough for virtual machines. Additionally, many modern GPUs and PCIe expansion cards will not work as they require UEFI in order to function. Furthermore, multiboot setups will require a seperate boot disk (removable media included) for each OS as it requires a MBR (Master Boot Record) in order to boot, and each disk can only have one MBR. It may be possible to multiboot from a single HDD/SSD if it contains a full Windows installation alongside a Linux partition, and GRUB's MBR is installed to a USB drive or floppy disk.  
• **Old BIOSes:** Some early 64-bit systems with a really old BIOS may refuse to boot any Linux ISO (for example, Mesh Nero 9950HD with Asus M2N68-VM motherboard). This is because they lack USB boot support. Even though it may support CDROM/HDD emulation for USB devices, it still fails to boot and complains about corrupt files, even though they aren't corrupted. You will need to plug the boot drive into another PC, install there, then make sure the bootloader and drivers are set up correctly before plugging it back into the first PC.  

## Disclaimer
ArchEZ is alpha software and comes with NO WARRANTY. Use at your own risk.

## Notes
*Windows games supported via Wine, Proton and Steam. While at least 90% of Windows games are playable (according to Steam), a small number may have compatibility issues.

## Glossary
Administrator (admin): A priviliged user with the ability to make system-level changes, such as installing/upgrading software and editing system configuration files typically write-protected from regular users. On Linux, the administrator runs commands as the root user (See "Root User" and "sudo" below).  

AI (Artificial Intelligence): Software that allows a computer to mimic human speech and behaviour. Some people use it to avoid doing hard work. Use of AI always carries risks - an AI can make mistakes or even turn malicious. Additionally, relying on AI do do all your work can undermine critical thinking and creative skills. ArchEZ is almost entirely human-written code, with less than 1% AI generated code (at the time of writing) for non-critical functionality. AI can run on the CPU (slowest and least efficient, see "CPU below"), the GPU (faster but still inefficient, see "GPU" below) or an NPU (fastest and most efficient - see "NPU" below). Larger AI models are more intelligent but require a more powerful processing unit and more RAM/VRAM (see "RAM" and "VRAM" below).  

ALSA (Advanced Linux Sound Architecture): An audio system that allows audio playback using the computer's sound hardware. It has largely been replaced with Pulseaudio (see "Pulseaudio" below) and later Pipewire (see "Pipewire" below).  

Bluetooth: A wireless radio technology that allows for data transfer over short distance without cables.  

Brick: When your device is "bricked", it means it will no longer boot and function correctly. A "soft brick" can usually be fixed by reinstalling the OS, while a "hard brick" is usually unfixable except with special tools and knowledge.  

CLI (command-line interface): See "terminal" (below).  

Coreutils: Core utilities - essential system software required for basic functionality.  

CPU (Central Processing Unit): Also just called "Processor", it is like the brain of your computer. The processor reads machine instructions and runs them. Without one, the computer cannot do anything.  

Data: Information (such as files).  

Desktop environment: The graphical user interface, consisting of a desktop, taskbar, window manager, menus and othe functionality.  

Display: A device used to display pictures and video, such as a computer monitor or TV.  

Display manager: The graphical login screen. This allows users to select a desktop environment or window manager, log in, switch users and suspend/reboot/shutdown the system.  

Distribution: A kernel bundled together with software to form a complete operating system.  

Emulator: A piece of software that allows software written for a certain system to run on another system it was never designed for. It works by translating the software's machine code to something the host machine can understand. Emulators usually also have a virtual implementation of emulated hardware. For example, the NES (Nintendo Entertainment System) has an 8-bit Ricoh 2A03 or 2A07 processor based on the MOS 6502 instruction set architecture (ISA - see "Instruction Set Architecture" below) for handling game logic, a Ricoh 2C02 PPU (Picture Processing Unit) for graphics, and a cartridge slot for plugging in game cartridges. A NES emulator loads games in the form of a ROM dump, translating MOS 6502 instructions into host native instructions (such as x86_64 or ARM), and features a virtual PPU for graphics output on the host machine. The nature of emulation means there is always a significant loss in performance, making it rather inefficient. However, most computers are more than capable at running emulated games and software at full speed or even faster, so this performance penalty is not an issue depending on the software being emulated. Most computers can easily emulate 8-bit and 16-bit consoles and computers at full speed or faster, however, less powerful computers will struggle to emulate more recent consoles such as the PlayStation 3, Xbox 360 or Nintendo Switch.  

Encryption: A method of scrambling readable data into encrypted, unreadable data. A key (password) is required to decrypt and unscramble that data. It is highly effective at hiding sensitive information from hackers, law enforcement and other malicious actors. Even if they manage to obtain your files or record your online activity, they cannot view them without the correct key.  

Ethernet: A wired network connection (see "network" below) allowing computers to communicate with one another or connect to the internet, typically copper wires or fibre optic cables.  

Firmware: Not to be confused with hardware (see "hardware" below), firmware is a set of instructions that tell hardware how to function.  

Framebuffer: A small portion of memory (see "memory" below) containing picture data.  

Hardware: A physical device or physical components making up a complete system.  

HDD (Hard Disk Drive): A non-volatile storage device (see "Storage" below) consisting of one or more spinning magnetic disks, a magnetic read and write head, and a controller board. They have been mostly replaced by SSDs (see "SSD" below) and are rarely found in new devices today. By today's standards it is considered slower and less reliable than SSDs, because it consists of moving parts, meaning there is a longer delay and slower overall speed as well as a higher risk of failure. Due to using magnetic disks, they should be kept away from magnetic sources as they can corrupt data or destroy the disk. Drops, shocks and impacts can also destroy the disk. However, in the correct conditions, HDDs can actually survive much longer than SSDs (see "SSD" below to see why). Additionally, they are much cheaper than SSDs, making them a popular choice for long-term storage of photos, videos, music and documents which don't require fast speeds. HDDs should not be used for the OS, games or other applications requiring fast data transfer speeds such as AI, as they will slow down the whole system.  

HDR (High Dynamic Range): HDR capable displays can display more colours and achieve higher brightness levels allowing for more detail, especially in very dark or very bright pictures.  

Hierarchical File System (HFS): See "Root Filesystem" below.  

GNU: GNU (GNU's Not Unix) is an open source system licensed under the GNU GPL (see "GPL" below) providing essential software required for basic funtionality. It guarantees freedom to use it for any purpose, study, modify and share code. It was created by Richard Stallman in 1983 as a free, open source alternative to the proprietary Unix system software.  

GPL (GNU General Public License): A free software license that guarantees users the freedom to run, study, share, and modify software. It is a "copyleft" license, meaning any derivative work must also be open-sourced and licensed under the same GPL terms, ensuring the software remains free.  

Graphics Card: An add-in expansion card with a GPU (see "GPU" below), VRAM (see "VRAM" below) and video outputs, which typically plugs into a PCI Express slot on the motherboard (see "PCI Express" and "Motherboard" below). These typically have a very powerful GPU and lots of VRAM for high performance in games.  

GPU (Graphics Processing Unit): A special processor designed for 2D and 3D graphics. A graphics card is sometimes referred to as just "GPU" (see "Graphics card" above). There are two types of GPU: a dedicated add-in graphics card and integrated graphics. Integrated graphics usually means the GPU is built into the CPU (see "CPU" above) or the motherboard (see "motherboard" below), and uses system RAM instead of VRAM (see "RAM" and "VRAM" below). Integrated graphics are usually only suitable for basic desktop use and are not powerful enough for gaming, although as handheld gaming PCs like the Steam Deck are growing in popularity, integrated graphics are getting more powerful making them increasingly viable for gaming.  

GTK: Formerly called GIMP ToolKit, GTK was first developed for the GIMP (GNU Image Manipulation Program) image editor but has since been used in many other applications. It is a toolkit used to display widgets like buttons, sliders and text boxes in graphical applications. It is used by desktop environments (see "desktop environment" above) like GNOME, XFCE and Cinnamon. See also: QT (below)  

InitRAMFS/InitRD: InitRAMFS (also sometimes called InitRD or Initial RAMdisk), contains the initial root virtual filesystem which is loaded into RAM alongside the Linux kernel. It contains a minimal set of drivers and services needed to detect and initialise the system hardware. The init system will detect and mount the real root filesystem containing the OS, switch to it, and continue booting.  

Instruction Set Architecture (ISA): A set of machine instructions supported by a particular CPU. The most common ISAs in use today are x86_64 (also called x64 or AMD64), ARM and RISC-V. Programs written for one particular ISA, such as x86_64, will not work on a CPU using a different ISA such as ARM64 without emulation (see "Emulator" above). Not to be confused with Industry Standard Architecture, which is an ancient 16-bit interface for expansion cards no longer found today, superceded by PCI (Peripheral Component Interconnect - see "PCI" below) and later PCI Express.  

Init system: The very first program to be started by the Linux kernel, it loads all the necessary services and prepares the hardware in order to boot the OS into a useable state.  

JACK: A low-latency audio system designed for music production. It has been largely replaced by Pipewire (see "Pipewire" below).  

Kernel: The very core of any Linux based OS, it is loaded upon booting the system and allows software to interact with hardware.  

Latency: The amount of time between an input and an output, or an action and a reaction. For example, the time it takes for a video game character to start moving after pressing a button.  

Linux: A free, open source operating system kernel created by Linus Torvalds in 1991. The Linux kernel is typically bundled with GNU coreutils to form a GNU/Linux distribution.  

Local Area Network (LAN): See "network" (below).  

Malware: Software designed to cause harm by stealing personal data or making the computer unusable. See also "rootkit", "virus", "worm", "ransomware" and "trojan" (below).  

Memory: RAM (see RAM below). Some people incorrectly refer to storage as "memory" (see "Storage").  

Motherboard: The main circuit board that connects all of your computer's components together.  

Network: A group of computers that are linked together, typically via ethernet (see "ethernet" above) or Wi-Fi (see "Wi-Fi" below) and can communicate with one another is called a Local Area Network (LAN). Multiple LANs linked over a large distance is called a Wide Area Network (WAN). The Internet is the world's largest network, connecting users across the globe.  

NPU: A special processor designed for running AI workloads (see "Artificial Intellignece" above).  

Open source: The software's source code (see "source code" below) is free to view and download. This transparency lets users be sure that there are no undesired spyware or security vulnerabilities. See also "proprietary" below.  

Operating System (OS): An essential system software that allows applications to run on your computer. It manages hardware, software, memory and processes and acts as a bridge between software and hardware. Examples include Windows, MacOS, iOS, Android, Ubuntu, Linux Mint, Arch Linux and Fedora. Linux by itself is just a kernel, not an operating system. It needs software, such as GNU coreutils, in order to do anything useful. Most Linux distributions bundle the Linux kernel alongside GNU coreutils and other essential software - this is called GNU/Linux (GNU coreutils + Linux kernel). Linux itself is not an OS, but GNU/Linux is.  

Package manager: An application that allows users to install, upgrade and remove software packages, typically from a trusted central server (see "Server below").  

PCI (Peripheral Component Interconnect): PCI is a 32-bit interface, created in 1992, for plugging in expansion cards. In 2003, PCI Express (PCIe) was created, which supports higher bandwidth and 64-bit memory addressing. PCI Express has long replaced PCI, and has 5 generations at the time of writing.  

Pipewire: An audio system that allows audio playback using the computer's sound hardware. It replaces ALSA (see "ALSA" above), Pulseaudio (see "Pulseaudio" below) and JACK (see "JACK" above). It is designed to be simple to use, with high sound quality and minimal lag.  

Proprietary: The software's source code (see "source code" below) is not public, copyrighted accessible only to the developers. Users typically are forbidden from modifying or redistributing the software. This means users have no idea how the software works, if there are any hidden spyware features or security vulnerabilities. See also "Open source" above.  

Proton: A special version of WINE (see "WINE" below) designed for playing Windows games on Steam on Linux (see "Steam" below).

Pulseaudio: An audio system that allows audio playback using the computer's sound hardware, designed as a simpler alternative to ALSA (see "ALSA above"). It has largely been replaced with Pipewire (see "Pipewire" above).  

QT: QT is a toolkit used to display widgets like buttons, sliders and text boxes in graphical applications. It is used in desktop environments (see "desktop environment" above) such as KDE Plasma and LXQT. See also: GTK (above)  

RAM (Random Access Memory): A high speed memory bank containing information and data currently in use by software relevant to the currently task. Think of it as short term memory for your applications. More RAM allows you to run more applications at the same time (multitasking). If there is too little RAM, your computer may start swapping data to a much slower HDD or SSD, slowing your computer to a crawl, or it may crash applications or even your entire system. RAM is volatile, meaning information is never permanently stored. All RAM contents are lost when the power is switched off.  

Ransomware: A type of malware that encrypts (see "encryption" above) files making them inaccessible, only decrypting those files after the user pays a ransom (usually in cryptocurrency such as Bitcoin).  

Root (user): The root user is similar to an administrator account, as it has full read/write access to the entire system. Standard users and administrator users do not have the ability to modify the system, but administrators can make system-level changes by running the command as root (see "sudo" below). This makes the system more secure, and prevents accidental damage. Never log in as root - this makes it much easier to accidentally break your system or infect it with malware (see "malware" below). Always use a seperate user account, and run privileged commands as root when necessary.  

Root filesystem: The filesystem containing the OS, similar to the Windows C: drive. It is the lowest level in the virtual filesystem, represented by a forward slash (/). All other filesystems are mounted inside a subfolder in the root filesystem. For example, a seperate home partition will be mounted at /home, and removable media such as USB flash drives will be mounted under /mnt or /run/media/username/volume. This filesystem structure is called a Hierarchical File System (HFS).  

Rootkit: A type of malware (see "malware" above) that has full kernel-level system access (see "kernel" above). It has full control over your system, and can even hide itself making removal very difficult.  

Router: A networking device (see "network" above) that allows for communication between devices, as well as sharing an internet connection. Devices typically connect via ethernet (see "ethernet" above) or Wi-Fi (see "Wi-Fi" below).  

Server: A type of computer used to provide services to other users across the internet or local area network. Examples include web servers (serves websites), file servers (serves files), and email servers (serves email). Servers are typically built with powerful hardware, but any computer can be a server, even a low-end one.  

Shell: See terminal (below).  

Software: Applications, programs and games. The operating system and kernel (see "kernel" above) are examples of software. A web browser (like Google Chrome), your desktop environment (see "desktop environment" above) and file manager are also examples of software.  

Source code: A set of human-readable instructions which determine how a program functions. A compiler then turns that source code into machine instructions for a specific ISA (see "ISA" above). Source code can be compiled for any ISA supported by the compiler, so a program needs to be written only once and can be easily ported to different systems.  

SSD: A non-volatile storage device (see "Storage" below) that stores files on a flash memory chip. SSDs are much faster than HDDs (see "HDD" above) as they have no moving parts, and flash memory has very little delay and a very high transfer speed, but are also significantly more expensive at the time of writing. They are much more resilient against drops, shocks, impacts and fluctuations in temperature and are unaffected by magnetic fields. However, if left unpowered for a long time, the flash memory chips may lose their contents due to electrical leakage leading to corrupt data. Additionally, they have a limited number of writes, after which the flash memory is so worn out that no new data can be written. SSDs are best suited for the OS, games and other applications requiring fast data transfer speeds such as AI.  

Steam: The world's largest and most popular online game store owned by Valve Corporation, known for their excellent customer service and huge library of games. Steam has over 132 million monthly active users and over 120,000 games (at the time of writing) including old, new, indie and AAA. Steam also features Steam Workshop (for community made mods and game content), chat, remote play, cloud saves and more.  

Storage: Long term storage for your OS, files and application settings. It retains all information even when power is lost. Examples of storage include HDDs, SSDs and USB flash drives.  

Sudo: The sudo command allows administrators to run privileged commands as the root user (see "root user" above).  

Superuser: Root user (see "root user" above).  

Terminal: A text-based user interface where users can type a command and the system will run that command. This functionality is provided by a shell, most commonly bash, and also ash, fish and zsh.  

Terminal emulator: An application allowing users to interact with the system terminal from a graphical window (see "Terminal" above).  

Trojan: The Trojan Horse is a legendary, massive hollow wooden structure used by Greek soldiers to infiltrate the city of Troy during the Trojan War, concealing an elite force that opened the city gates. Devised by Odysseus to break a 10-year siege, it serves as a historical metaphor for deception and, in computing, refers to malware that hides inside legitimate software (see "Malware" above).  

Unix: A time-sharing, multi-tasking, multi-user operating system using a Hierarchical File System (HFS - see "Root filesystem" above), developed by AT&T Bell Labs in 1969 and released in 1971. Initially developed for the PDP-7 and PDP-11 computers, later re-written in the C programming language for portability. By the late 1980s to early 1990s, several Unix like systems were being developed, such as BSD (Berkely Software Distribution) and HP-UX. Unix version 7, released in 1979, was the last widely distributed research Unix. The Unix specification, however, still lives on today, and many operating systems such as MacOS, FreeBSD, GNU/Linux, Android and Solaris still follow the Unix specification.  

Virus: A malware program (see "Malware" above) designed to cause harm to your computer. Once the virus is on your computer, the virus typically infects other files on your computer, making removal difficult.  

VRAM: Specialised video memory (see "RAM" above) used by the GPU (see "GPU" above) to store picture and texture data. More VRAM allows for higher resolution texures and video output.  

Wayland: Released in 2008, Wayland is a modern graphical windowing system for unix based systems (see "Unix" above). It provides an interface between the desktop environment (see "desktop environment" above), the graphics hardware (see "GPU" above), the monitor and input devices such as the keyboard and mouse. Sound is handled seperately from Wayland, for example with ALSA (see "ALSA" above), Pulseaudio (see "Pulseaudio" above) or Pipewire (see "Pipewire" above). Unlike X11 (see "X11" below), it is more secure and supports modern features such as high resolution displays and HDR (see "HDR" above). Applications designed for X11 run on a compatibility layer called XWayland. Wayland is used by window managers (see "Window manager" below) like Hyprland, Sway and Niri, and is the new default for desktop environments (see "desktop environment" above) such as KDE Plasma and GNOME. At the time of writing, Wayland is slowly replacing X11 in desktop environments such as XFCE and LXQT.  

Wi-Fi (Wireless Fidelity): A wireless radio technology that allows computers in a network (see "network above") to communicate with one another and connect to the internet without cables.  

Window manager: A graphical program to create and manage application windows. Most window managers provide only this functionality, but some may also include basic desktop environment features such as a desktop, taskbar and menus.  

Wine: Wine (Wine Is Not an Emulator) is a compatibility layer that allows games and applications written for Microsoft Windows to run on Linux, MacOS, BSD and other Unix like systems. Applications typically don't interact with the hardware directly, instead sending instructions (called system calls or syscalls) to the operating system which then performs the desired function. Wine works by translating Windows syscalls into Linux syscalls, resulting in virtually zero slowdown.  

Worm: A type of virus (see "Virus" above) that automatically spreads itself to other devices over the network, infecting them and making removal difficult.  

X11 (Xorg): Created in 1987, X11 (also referred to as Xorg or just X) is a graphical windowing system for unix based systems (see "Unix" above), it provides an interface between the desktop environment (see "desktop environment" above), the graphics hardware (see "GPU" above), the monitor and input devices such as the keyboard and mouse. Sound is handled seperately from X11, for example with ALSA (see "ALSA" above), Pulseaudio (see "Pulseaudio" above) or Pipewire (see "Pipewire" above). It is still used in window managers (see "window manager" above) like i3, OpenBox, JWM and IceWM, as well as desktop environments like XFCE and LXQT. X11 is slowly being replaced by Wayland (see "Wayland" above) as X11 is older, less secure and lacking in features. X11 is considered insecure primarily because it lacks isolation between applications, allowing any program to monitor keystrokes, take screenshots, or inject input into other applications.  
