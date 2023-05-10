
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
pkg install wget -y && wget https://raw.githubusercontent.com/wahasa/Parrot/main/Install/Install ; chmod +x Install ; ./Install
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
rm -rf parrot-fs
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
Note :
- [x] Sound fix
- [x] Browser fix

Visit problems now in : [Issues]()

---
## VNC Viewer

1. Start VNC Server

on Parrot, run this command to start :
```
vnc-start
```

2. Open Vnc Viewer

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

3. Stop VNC Server

on Parrot, run this command to stop :
```
vnc-stop
```

</br>

---
<p align="center">Good Luck</p>

---
