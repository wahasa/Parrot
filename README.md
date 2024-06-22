
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Parrot on Termux Android
![parrot6 1](https://github.com/wahasa/Project/assets/69626847/2390a223-5620-4ce6-b561-0d6b508e72ff)

---
• Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation
Copy and paste this commands to Termux
> pkg update

#### Install Parrot

* Parrot 6.1 (Lorikeet)

Rootfs : Armhf, Arm64, i386, Amd64
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Install/parrot6.1.sh ; chmod +x parrot6.1.sh ; ./parrot6.1.sh
```

---
* Start Parrot
```
parrot
```

* Stop Parrot
```
exit
```

* Remove Parrot
```
rm -rf parrot-* .parrot $PREFIX/bin/$linux/parrot
```

---
Basic commands Parrot
> apt update : Update list package.</br>
> apt upgrade : Upgrade package.</br>
> apt search (pkg) : Search package.</br>
> apt install (pkg) : Install package.</br>
> apt autoremove (pkg) : Delete pkg.</br>
> apt -h : Help all commands.

---
## Desktop Environments
In Parrot, run this commands
> apt update

<details><summary><b><code>Install Xfce Desktop</code></b></summary>

![P-Xfce](https://github.com/wahasa/Fedora/assets/69626847/8cddc54a-65b1-4dce-a07b-b7ccb45978eb)
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```
</details>

<details><summary><b><code>Install Lxde Desktop</code></b></summary>

![P-Lxde](https://github.com/wahasa/Fedora/assets/69626847/ad4f0c9b-702e-4983-8c0c-d544e4aabc7f)
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-lxde.sh ; chmod +x de-lxde.sh ; ./de-lxde.sh
```
</details>

<details><summary><b><code>Install Lxqt Desktop</code></b></summary>

![P-Lxqt](https://github.com/wahasa/Fedora/assets/69626847/188018fe-cf8a-4879-a634-145eb242caf5)
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```
</details>

<details><summary><b><code>Install Kde Desktop</code></b></summary>

![P-Kde](https://github.com/wahasa/Fedora/assets/69626847/2e60f0a5-d554-4107-b4e1-9517a1e77c35)
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```
</details>

---
Feature
- [x] Fixed Sound
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Parrot/tree/main/Note)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Parrot/tree/main/Apps)

Visit problems now in : [Issues](https://github.com/wahasa/Parrot/issues)

---
## VNC Viewer
<details></br>
<summary><b><code>VNC Viewer Android</code></b></summary>

* Start VNC Server

In Parrot, run this command to start
```
vnc-start
```

* Open Vnc Viewer

Add (+) VNC Client to connect, fill with :

Address
```
localhost:1
```

Name
```
Parrot Desktop
```

To disconnect VNC Client, click (X) on the right.

* Stop VNC Server

In Parrot, run this command to stop
```
vnc-stop
```
</details>

---
## Termux-x11
<details></br>
<summary><b><code>Termux-x11 Android</code></b></summary>

[> Click Here <](https://github.com/wahasa/Parrot/blob/main/Note/Termux-x11fix.md)
</details>
</br>

---
<p align="center">Good Luck</p>

---
