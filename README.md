<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
## Parrot on Termux Android
<img src="">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation

Copy and paste this commands to Termux
> apt update

<details><summary><b><code>Install Parrot</code></b></summary></br>

> apt install wget
- [x] Parrot (Latest-release)

Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Parrot/refs/heads/main/Install/parrot.sh ; chmod +x parrot.sh ; ./parrot.sh
```
</details>

---
* Login Parrot
```
parrot
```

* Logout Parrot
```
exit
```

* Remove Parrot
```
rm -rf parrot-* .parrot $PREFIX/bin/parrot
```

---
Basic commands Parrot
> apt update : Update list package.</br>
> apt upgrade : Upgrade package.</br>
> apt search (pkg) : Search package.</br>
> apt install (pkg) : Install package.</br>
> apt autoremove (pkg) : Delete pkg.</br>

---
### Install Desktop Environments

In Parrot, run this commands
> apt update

<details><summary><b><code>Xfce Desktop</code></b></summary></br>

```
apt install udisks2 -y ; echo "" > /var/lib/dpkg/info/udisks2.postinst ; apt-mark hold udisks2
```
```
apt install xfce4 xfce4-goodies xfce4-terminal parole gst-libav -y ; apt install tigervnc-standalone-server dbus-x11 -y
```
</details>

<details><summary><b><code>Lxde Desktop</code></b></summary></br>

```
apt install udisks2 -y ; echo "" > /var/lib/dpkg/info/udisks2.postinst ; apt-mark hold udisks2
```
```
apt install lxde lxterminal -y ; apt install tigervnc-standalone-server dbus-x11 -y ; mv /usr/bin/lxpolkit /usr/bin/lxpolkit.bak
```
</details>

<details><summary><b><code>Lxqt Desktop</code></b></summary></br>

```
apt install udisks2 -y ; echo "" > /var/lib/dpkg/info/udisks2.postinst ; apt-mark hold udisks2
```
```
apt install lxqt qterminal -y ; apt install tigervnc-standalone-server dbus-x11 -y
```
</details>

<details><summary><b><code>Kde- Desktop</code></b></summary></br>

```
apt install udisks2 -y ; echo "" > /var/lib/dpkg/info/udisks2.postinst ; apt-mark hold udisks2
```
```
apt install kde-plasma-desktop konsole -y ; apt install tigervnc-standalone-server dbus-x11 -y
```
</details>

---
Feature
- [x] Fixed Sound Output
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Add New Username     | [Click Here >](https://github.com/wahasa/Parrot/blob/main/Patch/AddUser.md#add-username-on-parrot)
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Parrot/blob/main/Apps/Firefoxfix.md#fixed-firefox-on-parrot)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Parrot/tree/main/Apps#list-applications)

Visit problems now in : [Issues](https://github.com/wahasa/Parrot/issues)

---
### Run Desktop Environments
- [x] With Termux-X11  | [Click Here >](https://github.com/wahasa/Parrot/blob/main/Patch/Termux-X11.md#termux-x11-on-parrot)
- [x] With Rvnc Viewer | [Click Here >](https://github.com/wahasa/Parrot/blob/main/Patch/RvncViewer.md#rvnc-viewer-on-parrot)
- [x] With Bvnc Viewer | [Click Here >](https://github.com/wahasa/Parrot/blob/main/Patch/BvncViewer.md#bvnc-viewer-on-parrot)
</br>

---
<p align="center">Good Luck</p>

---
