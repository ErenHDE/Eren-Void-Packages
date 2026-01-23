# 📦 Void-HDE Repository: Custom Packages for Void Linux

**Void-HDE** is a custom package repository designed for **Void Linux** users.
It contains pre-built `.xbps` packages for popular applications, enabling easy installation and updates without the need to build everything from source.

---

## ✨ Included Packages

This repository currently provides pre-built packages for:

* `ab-download-manager`
* `bottles`
* `brave`
* `distrobox`
* `heroic-games-launcher`
* `icoextract`
* `librewolf`
* `obsidian`
* `onlyoffice`
* `patool`
* `python3-fvs`
* `python3-setuptools-reproducible`
* `unityhub`
* `visual-studio-code`
* `void-linux-game`
* `vkBasalt-cli`
* `void-linux-game`
* `vscodium`
* `zen-browser`
* `void-hybrid`
* `ms-font-ttf`
* `minecraft-launcher`
* `microsoft-edge`

> More packages and updates will be added over time.

---

## 🛠️ Adding the Repository

### 1. Automatic Setup (Recommended)

To add the repository to your Void Linux system:

1.  **Create the configuration file** `/etc/xbps.d/20-ErenHDE.conf` with the following content:
    ```bash
    echo "repository=https://github.com/ErenHDE/Void-HDE/releases/download/v1.0/" | sudo tee /etc/xbps.d/20-ErenHDE.conf
    ```
2.  **Synchronize and Install:** Update your package list and install your desired package:
    ```bash
    sudo xbps-install -S
    sudo xbps-install <packageName>
    ```

### 2. Manual Setup

If you prefer to build the packages using `xbps-src`:

1.  **Clone the `void-packages` git repository:**
    ```bash
    git clone https://github.com/void-linux/void-packages.git
    cd void-packages
    ```
2.  **Bootstrap the build environment** (if needed):
    ```bash
    ./xbps-src binary-bootstrap
    ```
3.  **Clone this repository** and copy the contents of the relevant Template File to `void-packages/srcpkgs`.
4.  **Build and Package:**
    ```bash
    ./xbps-src pkg <package_name>
    ```

---

## 📝 Note: Feedback and Contributions

I'm new to maintaining a repository, so if you encounter any problems, please feel free to let me know.

As I said, this is a personal repository. I will try to add as many packages as possible that are compatible with `x86_64`. If you have any package requests, contact me. I will use this repo too! :D
