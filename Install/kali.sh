#!/data/data/com.termux/files/usr/bin/bash
pkg install root-repo x11-repo
pkg install proot xz-utils neofetch pulseaudio -y
#termux-setup-storage
echo ""
parrot=kali
build=2024
neofetch --ascii_distro Kali -L
case `dpkg --print-architecture` in
      aarch64)
              device="arm64" ;;
      arm*)
              device="armhf" ;;
      i386)
              device="i386" ;;
      x86_64)
              device="amd64" ;;
      *)
              echo "Unknown Architecture."; exit 1 ;;
esac
folder=parrot-$device
if [ -d "$folder" ]; then
        first=1
        echo "Skipping Downloading."
fi
tarball="parrot-rootfs.tar.xz"
if [ "$first" != 1 ];then
        if [ ! -f $tarball ]; then
                echo "Download Rootfs, this may take a while base on your internet speed."
                case `dpkg --print-architecture` in
                aarch64)
                        archurl="arm64" ;;
                arm*)
                        archurl="armhf" ;;
                i386)
                        archurl="i386" ;;
                x86_64)
                        archurl="amd64" ;;
                *)
                        echo "Unknown Architecture."; exit 1 ;;
                esac
                wget -q --show-progress "https://github.com/EXALAB/Anlinux-Resources/raw/refs/heads/master/Rootfs/Kali/${archurl}/kali-rootfs-${archurl}.tar.xz" -O $tarball
                #wget -q --show-progress "https://deb.parrot.sh/direct/parrot/iso/${parrot}/Parrot-rootfs-${parrot}_${archurl}.tar.xz" -O $tarball
         fi
         mkdir -p $folder
         echo "Decompressing Rootfs, please be patient."
         proot --link2symlink tar -xpf ~/${tarball} -C ~/$folder/ --exclude='dev'||:
         #proot --link2symlink tar -xpf ~/${tarball} --exclude='dev'||:
         #cp -rf lory-$device $folder
         #rm -rf lory-$device
    fi
    mkdir -p $folder/binds
    echo "localhost" > $folder/etc/hostname
    echo "127.0.0.1 localhost" > $folder/etc/hosts
    echo "nameserver 8.8.8.8" > $folder/etc/resolv.conf
bin=.kali
linux=kali
echo ""
echo "Writing launch script"
cat > $bin <<- EOM
#!/data/data/com.termux/files/usr/bin/bash
cd \$(dirname \$0)
## Start pulseaudio
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
## Unset LD_PRELOAD in case termux-exec is installed
unset LD_PRELOAD
command="proot"
command+=" --kill-on-exit"
command+=" --link2symlink"
command+=" -0"
command+=" -r $folder"
if [ -n "\$(ls -A $folder/binds)" ]; then
   for f in $folder/binds/* ;do
       . \$f
   done
fi
command+=" -b /dev"
command+=" -b /dev/null:/proc/sys/kernel/cap_last_cap"
command+=" -b /dev/null:/proc/stat"
command+=" -b /dev/urandom:/dev/random"
command+=" -b /proc"
command+=" -b /proc/self/fd:/dev/fd"
command+=" -b /proc/self/fd/0:/dev/stdin"
command+=" -b /proc/self/fd/1:/dev/stdout"
command+=" -b /proc/self/fd/2:/dev/stderr"
command+=" -b /sys"
command+=" -b /data/data/com.termux/files/usr/tmp:/tmp"
command+=" -b $folder/root:/dev/shm"
## Uncomment the following line to have access to the home directory of termux
#command+=" -b /data/data/com.termux/files/home:/root"
## Uncomment the following line to mount /sdcard directly to /
command+=" -b /sdcard"
command+=" -b /mnt"
command+=" -w /root"
command+=" /usr/bin/env -i"
command+=" HOME=/root"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=\$TERM"
command+=" LC_ALL=C"
command+=" LANG=C.UTF-8"
command+=" /bin/bash --login"
com="\$@"
if [ -z "\$1" ];then
   exec \$command
else
   \$command -c "\$com"
fi
EOM
     echo ""
     echo "Fixing shebang of $linux"
     termux-fix-shebang $bin
     echo "Making $linux executable"
     chmod +x $bin
     echo "Fixing permissions for $linux"
     #chmod -R 755 $folder
     echo "Removing image for some space"
     #rm $tarball
echo ""
echo "#Kali Repositories
deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" > $folder/etc/apt/sources.list.d/parrot.list
echo "" > $folder/root/.hushlogin
echo "export PULSE_SERVER=127.0.0.1" >> $folder/etc/skel/.bashrc
echo 'bash .kali' > $PREFIX/bin/$linux
chmod +x $PREFIX/bin/$linux
     clear
     echo ""
     echo "Updating Package,.."
     echo ""
echo "#!/bin/bash
apt update && apt upgrade -y
apt install apt-utils dialog nano sudo tzdata -y
cp .bashrc .bashrc.bak ; cp /etc/skel/.bashrc .
echo "Asia/Jakarta" > /etc/timezone
ln -fs /usr/share/zoneinfo/`cat /etc/timezone` /etc/localtime
dpkg-reconfigure -f noninteractive tzdata
rm -rf ~/.bash_profile
exit" > $folder/root/.bash_profile
bash $bin
     clear
     echo ""
     echo "You can login to Linux with 'kali' script next time"
     echo ""
     #rm kali.sh
#
## Script edited by 'WaHaSa', Script revision-5.
#
