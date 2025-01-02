<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### RVNC Viewer on Parrot
<img src="https://raw.githubusercontent.com/wahasa/Arch/refs/heads/main/Patch/RVNC-Viewer.jpg">

- App RVNC Viewer

- [x] [Link Download](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

---
Commands in Termux (session 1)

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

---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
Commands in Linux (session 2)
> apt install nano

- Edit script
```
nano /usr/local/bin/vncstart
```

- Add script
```
#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1

# --XFCE-- #
#startxfce4

# --LXDE-- #
#startlxde

# --LXQT-- #
#startlxqt

# --KDE-- #
#startplasma-x11

# --END-- #
```

Save : ctrl + x, click Y enter.

Note :</br>
Remove the sign (#) on the desktop you are installing now.

- Activate script
```
chmod +x /usr/local/bin/vncstart
```

#### Run RVNC Viewer
- Start VNC Server

In session 1(termux), run this command
```
vncstart
```

In session 2 (linux), run this command
```
vncstart
```

---
- Open RVNC Viewer

Add (+) VNC Client to connect, fill with :

Address
> localhost:1 

Name
> Desktop

To disconnect VNC Client, click (X) on the right.
</br>

---
- Stop VNC Server

Close RVNC Viewer

In session 2 (linux), run this command
> Click Ctrl+c, enter (2X)

In session 1(termux), run this command
> vncstop
</br>

---
<p align="center">Good Luck</p>

---
