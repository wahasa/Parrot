### Fixed Firefox Parrot
![Screenshot_2024-02-25-12-14-31-587_com realvnc viewer android](https://github.com/wahasa/Kali-Nethunter/assets/69626847/2fe3c8bc-a5d9-4a59-ac74-a0f756d9ebd7)

---
* Install Firefox
> apt install firefox-esr -y

* Uninstall Firefox
> apt autoremove firefox-esr -y

---
#### Fixed firefox crash

* Open Firefox, fill address with :
```
about:config
```

* Click Button :
> Accept the Risk and Continue

* Search in box, fill with :
```
media.cubeb.sandbox
```

Click on the right to change 'true' to 'false'.

* Search in box again, fill with :
```
security.sandbox.content.level
```

Click edit on the right, change the number '4' to '0' and press again to save.

* Close and open again firefox.
</br>

---
<p align="center">Good Luck</p>

---
