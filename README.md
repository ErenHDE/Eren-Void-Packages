# Void-HDE Repository

**Void-HDE** is a custom package repository for **Void Linux** users.  
It contains pre-built `.xbps` packages for popular applications, allowing easy installation and updates without building everything from source.

---

## Included Packages

This repository currently provides pre-built packages for:

- ab-download-manager
- brave
- distrobox
- heroic-games-launcher
- icoextract
- obsidian
- onlyoffice
- patool
- python3-fvs
- python3-setuptools-reproducible
- void-linux-game
- zen-browser

> More packages and updates will be added over time.

---

## Adding the Repository (Automatic)

To add the repository to your Void Linux system:

Create the file `/etc/xbps.d/20-librewolf.conf` with the following content:
repository=https://github.com/index-0/librewolf-void/releases/latest/download/

```bash
 xbps-install -S <packageName>
```

## Manual

Clone the `void-packages` git repository:
```bash
  git clone https://github.com/void-linux/void-packages.git
  cd void-packages
```
Bootstrapping from binary packages
```bash
 ./xbps-src binary-bootstrap
```

Clone the repository and copy the contents of the Template File to `void-packages/srcpkgs`
```bash
 ./xbps-src pkg <package_name>
```

