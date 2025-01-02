<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### Termux-x11 on Parrot
<img src="https://raw.githubusercontent.com/wahasa/Manjaro/refs/heads/main/Patch/Termux-X11.jpg">

- App Termux-x11

- [x] [Link Download](https://github.com/termux/termux-x11/releases)

---
Commands in Termux (session 1)

- Install Package
```
apt install termux-x11-nightly -y
```

- Add script
```
echo "termux-x11 :1" > $PREFIX/bin/start-x11
```
```
echo "pkill -f com.termux.x11" > $PREFIX/bin/stop-x11
```

- Activate script
```
chmod +x $PREFIX/bin/start-x11
```
```
chmod +x $PREFIX/bin/stop-x11
```

- Edit Properties
```
nano ~/.termux/termux.properties
```

Example :
> #allow-external-apps = true

To

> allow-external-apps = true

Save : ctrl + x, click Y enter.

---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
Commands in Linux (session 2)
> pacman -S nano

- Edit script
```
nano /usr/local/bin/start-x11
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
chmod +x /usr/local/bin/start-x11
```

---
#### Run Termux-x11
- Start Termux-x11

In session 1(termux), run this command
```
start-x11
```

In session 2 (linux), run this command
```
start-x11
```

Open Termux-x11
</br>

---
- Stop Termux-x11

Close Termux-x11

In session 2 (linux), run this command
> Click Ctrl+c, enter (2X)

In session 1(termux), run this command
> stop-x11
</br>

---
<p align="center">Good Luck</p>

---
