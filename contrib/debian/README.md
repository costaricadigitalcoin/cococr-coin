
Debian
====================
This directory contains files used to package cococostaricad/cococostarica-qt
for Debian-based Linux systems. If you compile cococostaricad/cococostarica-qt yourself, there are some useful files here.

## cococostarica: URI support ##


cococostarica-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install cococostarica-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your cococostarica-qt binary to `/usr/bin`
and the `../../share/pixmaps/cococostarica128.png` to `/usr/share/pixmaps`

cococostarica-qt.protocol (KDE)

