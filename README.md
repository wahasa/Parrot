
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Parrot on Termux Android

---
• Install Apps on Android
- [x] [Termux](https://apkcombo.com/id/termux/com.termux)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this commands to Termux
> pkg update

<details></br>
<summary><b><code>Install Parrot</code></b></summary>

* Parrot 5.3 (Electro Ara)
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Install/Parrot5.3.sh ; chmod +x Parrot5.3.sh ; ./Parrot5.3.sh
```

* Parrot 6.0 (Dev-Lorikeet)
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Install/ParrotDev.sh ; chmod +x ParrotDev.sh ; ./ParrotDev.sh
```
</details>

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
rm -rf parrot-*
```

---
Basic commands Parrot
> apt update : Update list package.</br>
> apt upgrade : Upgrade package.</br>
> apt search (pkg) : Search package.</br>
> apt install (pkg) : Install package.</br>
> apt autoremove (pkg) : Delete package.</br>
> apt -h : Help all commands.


---
## Desktop Environments

on Parrot, run this commands
> apt update

<details></br>
<summary><b><code>Install Desktop Xfce</code></b></summary>

![xfce](https://github.com/wahasa/Parrot/assets/69626847/2d5e0156-6f30-4518-9b8a-ccae486b7910)

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```
</details>

<details></br>
<summary><b><code>Install Desktop Lxde</code></b></summary>

![lxde](https://github.com/wahasa/Parrot/assets/69626847/f73189ed-b0d6-4d56-8efb-103604de5aad)

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-lxde.sh ; chmod +x de-lxde.sh ; ./de-lxde.sh
```
</details>

<details></br>
<summary><b><code>Install Desktop Lxqt</code></b></summary>

![lxqt](https://github.com/wahasa/Parrot/assets/69626847/c4f59008-78da-4ad9-ba72-4c7f1b9a2a75)

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```
</details>

<details></br>
<summary><b><code>Install Desktop Kde</code></b></summary>

![kde](https://github.com/wahasa/Parrot/assets/69626847/44482c3d-5946-4882-bcad-941a6f1e1dad)

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```
</details>

---
Feature
- [x] Fixed Sound
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Fixed Browser Crash  | [Click here,.](https://github.com/wahasa/Parrot/tree/main/Note)
- [x] Install Applications | [Click here,.](https://github.com/wahasa/Parrot/tree/main/Apps)

Visit problems now in : [Issues](https://github.com/wahasa/Parrot/issues)

---
## VNC Viewer
<details></br>
<summary><b><code>VNC Viewer Android</code></b></summary>

* Start VNC Server

on Parrot, run this command to start
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

on Parrot, run this command to stop
```
vnc-stop
```
</details>

---
## Termux-x11
<details></br>
<summary><b><code>Termux-x11 Android</code></b></summary>

[> Click Here<](https://github.com/wahasa/Parrot/blob/main/Note/Termux-x11fix.md)
</details>
</br>

---
<p align="center">Good Luck</p>

---
