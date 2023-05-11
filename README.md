
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Parrot on Termux Android

---
• Install Apps on Android
- [x] [Termux](https://apkcombo.com/id/termux/com.termux)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux :
> pkg update && pkg upgrade

* Install Parrot
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/install.sh ; chmod +x install.sh ; ./install.sh
```

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
rm -rf parrot-(arm64/armhf/amd64)
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
## Desktop Environment

on Ubuntu, run this command :
> apt update && apt upgrade

<details></br>
<summary><b><code>Install Desktop Xfce</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Ubuntu/main/Images/xfce.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```

<details></br>
<summary><b><code>Install Desktop Lxde</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Ubuntu/main/Images/lxde.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-lxde.sh ; chmod +x de-lxde.sh ; ./de-lxde.sh
```

<details></br>
<summary><b><code>Install Desktop Lxqt</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Ubuntu/main/Images/lxqt.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```

<details></br>
<summary><b><code>Install Desktop Kde</code></b></summary>
<p align="center"><img src="https://raw.githubusercontent.com/wahasa/Ubuntu/main/Images/kde.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Parrot/main/Desktop/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```

---
Note :
- [x] Sound fix
- [x] Browser fix

Visit problems now in : [Issues](https://github.com/wahasa/Parrot/issues)

---
## VNC Viewer

* Start VNC Server

on Parrot, run this command to start :
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

on Parrot, run this command to stop :
```
vnc-stop
```

</br>

---
<p align="center">Good Luck</p>

---
