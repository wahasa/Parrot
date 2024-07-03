
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Parrot on Termux Android
![Parrot](https://github.com/wahasa/Project/assets/69626847/5913c3ce-56f1-4b7f-bae2-04142ddb0cf2)

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
rm -rf parrot-* .parrot $PREFIX/bin/parrot
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

![xfce](https://github.com/wahasa/Project/assets/69626847/8a5d72d8-d08b-491f-a209-80e2fa68786a)
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```
</details>

<details><summary><b><code>Install Lxde Desktop</code></b></summary>

![lxde](https://github.com/wahasa/Project/assets/69626847/d7e1579d-cd75-4151-832f-f869a892eeeb)
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-lxde.sh ; chmod +x de-lxde.sh ; ./de-lxde.sh
```
</details>

<details><summary><b><code>Install Lxqt Desktop</code></b></summary>


![lxqt](https://github.com/wahasa/Project/assets/69626847/e6290702-c845-4a95-b555-65e27d36c234)
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```
</details>

<details><summary><b><code>Install Kde Desktop</code></b></summary>

![kde](https://github.com/wahasa/Project/assets/69626847/efaf0ab7-2891-4314-bded-f9d9a25b4721)
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
