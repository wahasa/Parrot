<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### BVNC Viewer on Parrot
<img src="https://raw.githubusercontent.com/wahasa/Arch/refs/heads/main/Patch/BVNC-Viewer.jpg">

- App BVNC Viewer

- [x] [Link Download](https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC)

---
Commands in Termux

- Install Package
```
apt install tigervnc xorg-xhost -y
```

- Add script
```
echo "vncserver -geometry 1600x900 -listen tcp :1 && DISPLAY=:1 xhost +" > $PREFIX/bin/vncstart
```
```
echo "vncserver -kill :1" > $PREFIX/bin/vncstop
```

- Activate script
```
chmod +x $PREFIX/bin/vncstart
```
```
chmod +x $PREFIX/bin/vncstop
```
#### Run BVNC Viewer
- Start VNC Server

In session 1(termux), run this command
```
vncstart
```
---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
In session 2 (linux), run this commands
```
export DISPLAY=:1
```
```
export PULSE_SERVER=127.0.0.1
```

---
XFCE Desktop
```
startxfce4
```
LXDE Desktop
```
startlxde
```
LXQT Desktop
```
startlxqt
```
KDE- Desktop

> startplasma-x11


---
- Open BVNC Viewer

Add (+) VNC Client to connect, fill with :

VNC Connection Settings

Vnc Server
> 127.0.0.1

Port
> 5901

Vnc Password
> (Your vnc password)

---
- Stop VNC Server

Close BVNC Viewer

In session 2 (linux), run this command
> Click Ctrl+c, enter (2X)

In session 1(termux), run this command
> vncstop
</br>

---
<p align="center">Good Luck</p>

---
