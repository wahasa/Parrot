#!/data/data/com.termux/files/usr/bin/bash
pkg install root-repo x11-repo
pkg install proot xz-utils pulseaudio -y
termux-setup-storage
version=6.1
#Checking Architecture
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
                        echo "unknown architecture"; exit 1 ;;
                esac
folder=parrot-$device
if [ -d "$folder" ]; then
        first=1
        echo "Skipping Downloading"
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
                        echo "Unknown Architecture"; exit 1 ;;
                esac
                wget "https://deb.parrot.sh/direct/parrot/iso/${version}/Parrot-rootfs-${version}_${archurl}.tar.xz" -O $tarball
        fi
        cur=`pwd`
        echo "Decompressing Rootfs, please be patient."
        proot --link2symlink tar -xf ${cur}/${tarball}||:
        cp -rf lory-$device $folder
        rm -rf lory-$device
   fi
   echo "parrot" > ~/"$folder"/etc/hostname
   echo "127.0.0.1 localhost" > ~/"$folder"/etc/hosts
   echo "nameserver 8.8.8.8" > ~/"$folder"/etc/resolv.conf
mkdir -p $folder/binds
bin=.parrot
linux=parrot
echo "Writing launch script"
cat > $bin <<- EOM
#!/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
cd \$(dirname \$0)
## unset LD_PRELOAD in case termux-exec is installed
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
command+=" -b /proc"
command+=" -b /data/data/com.termux/files/usr/tmp:/tmp"
command+=" -b $folder/root:/dev/shm"
#Uncomment the following line to have access to the home directory of termux
#command+=" -b /data/data/com.termux/files/home:/root"
#Uncomment the following line to mount /sdcard directly to /
command+=" -b /sdcard"
command+=" -w /root"
command+=" /usr/bin/env -i"
command+=" HOME=/root"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=\$TERM"
command+=" LANG=C.UTF-8"
command+=" /bin/bash --login"
com="\$@"
if [ -z "\$1" ];then
    exec \$command
else
    \$command -c "\$com"
fi
EOM
   #Fixing shebang of $linux"
   termux-fix-shebang $bin
   #Making $linux executable"
   chmod +x $bin
   #Removing image for some space"
   #rm $tarball
#Repositories
#echo "#Parrot Repositories
#deb https://deb.parrot.sh/direct/parrot lory main contrib non-free non-free-firmware
#deb https://deb.parrot.sh/direct/parrot lory-updates main contrib non-free non-free-firmware
#deb https://deb.parrot.sh/direct/parrot lory-security main contrib non-free non-free-firmware
#deb https://deb.parrot.sh/direct/parrot lory-backports main contrib non-free non-free-firmware" > ~/"$folder"/etc/apt/sources.list.d/parrot.list
echo "export PULSE_SERVER=127.0.0.1" >> $folder/root/.bashrc
echo "bash .parrot" > $PREFIX/bin/$linux
chmod +x $PREFIX/bin/$linux
   clear
   echo ""
   echo "Updating Parrot,.."
   echo ""
echo "#!/bin/bash
#apt install dialog nano sudo -y
apt update && apt upgrade -y
apt autoremove udev -y
apt install dialog -y
rm -rf ~/.bash_profile
exit" > $folder/root/.bash_profile
bash $linux
   clear
   echo ""
   echo "You can login to Parrot with 'parrot' script next time"
   echo ""
#rm parrot6.1.sh

#
##Script edited by 'WaHaSa', Script V3-revision.
#
