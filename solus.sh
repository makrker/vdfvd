#!/bin/bash

#This is made by Mark 
#how he stand on 400 ping lolaoalaoalaao
#PRobably one of the worst shell but it works so shut the fuck up #i think no one cares lol
echo This will install all shit that i like inn this computer named "$USER" at "$HOSTNAME"

now=$(date +"%r")

echo -e "\033[33;34m Current time : $now"
sleep 1s

sudo eopkg install flatpak xdg-desktop-portal-gtk -y
sudo eopkg update -y;sudo eopkg upgrade -y
sudo eopkg install flatpak -y
sudo eopkg install fonts-noto-color-emoji -y 
sudo eopkg update --fix-missing -y
sudo eopkg install -f -y
sudo eopkg install make -y 
sudo eopkg install cmake -y 
sudo eopkg autoremove -y
sudo eopkg install perl -y
sudo eopkg install figlet -y 
sudo eopkg install keepassxc -y 
sudo eopkg install git curl gcc  -y
sudo eopkg install git -y 
 sudo eopkg install rust -y  
sudo flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 
sudo eopkg install wget make  -y.
sudo eopkg install build-essential -y
sudo eopkg update -y;sudo eopkg upgrade -y

flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub com.github.wwmm.pulseeffects -y
 flatpak install org.gnome.Platform/x86_64/3.38 -y
sudo eopkg update -y;sudo eopkg upgrade -y

flatpak install flathub io.atom.Atom -y

 

sudo eopkg update -y;sudo eopkg upgrade -y
 cd "$HOME" || exit
git clone https://github.com/makrker/based.git
cd based 
  sudo mv Firacode.ttf /usr/share/fonts/truetype
  cd # 
  

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
 echo eval "$(oh-my-posh --init --shell bash --config ~/based/asees.omp.json)" >> .bashrc
sudo eopkg update -y;sudo eopkg upgrade -
sudo eopkg update -y


sudo eopkg update --fix-broken -y
sudo eopkg install -f -y

sudo eopkg autoremove -y

PS3='Please enter your choice: '
options=("KDE Plasma" "Gnome" "MATE" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "KDE Plasma")
             git clone https://github.com/vinceliuice/ChromeOS-kde.git
            cd ChromeOS-kde || exit
            ./install.sh
            git clone https://github.com/vinceliuice/Tela-icon-theme.git
            cd Tela-icon-theme || exit || exit
            ./install.sh
            sudo eopkg update
            sudo eopkg upgrade
            echo "this will install rhythmbox"
            sudo eopkg --fix-broken install
            sudo eopkg --fix-missing install
            sudo eopkg update
            sudo eopkg upgrade
            sudo eopkg install rhythmbox -y
            
            echo "this will install cursor"
            echo "select in global theme in settings!"
            sleep 2s
            break 
            ;;
        "Gnome")
git clone https://github.com/vinceliuice/Orchis-theme.git
            cd Orchis-theme || exit || exit
            ./install.sh
             git clone https://github.com/vinceliuice/Tela-icon-theme.git
            cd Tela-icon-theme || exit
            ./install.sh
             echo "this will install cursors"
            git clone https://github.com/vinceliuice/Vimix-cursors.git
            cd Vimix-cursors || exit
            ./install.sh
            sudo eopkg install gnome-tweak-tool 
            sudo eopkg --fix-missing install 
            gsettings set org.gnome.desktop.background picture-uri  file:///home/"$USER"/based/wallpaper.jpg
             break
            ;;
        "MATE")
            
            gsettings set org.mate.background picture-filename "$(find ~/based/wallpaper.jpg -type f | shuf -n1)"
            break 
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


cd "$HOME" || exit
cd /home/$USER/Desktop 
wget https://addons.mozilla.org/firefox/downloads/file/3763728/dark_reader-4.9.32-an+fx.xpi
wget https://addons.mozilla.org/firefox/downloads/file/3669496/trace-3.0.5-an+fx.xpi
echo "drag n drop these nuts"
cd # 
echo "Do you like to install spotify?"
PS3='Please enter your choice: '
options=("Yes" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Yes")
          flatpak install flathub com.spotify.Client -y
           
            sudo eopkg --fix-broken install -y
            sudo eopkg update
            sudo eopkg --fix-broken install -y
            sudo eopkg install gcc -y
            sudo eopkg install make -y d
             git clone https://github.com/abba23/spotify-adblock.git
             cd spotify-adblock-linux || exit
               sudo make install
               
               break
              ;;
	          "Quit")
	          echo "User requested exit"
	           break
               	    ;;
             *) echo "invalid option  stooped $REPLY";;
    esac
done
cd /home/$USER/Desktop
 touch Spotify.desktop
 echo "[Desktop Entry]
Type=Application
Name=Spotify (adblock)
GenericName=Music Player
Icon=com.spotify.Client
Exec=flatpak run --file-forwarding --command=sh com.spotify.Client -c 'eval "$(sed s#LD_PRELOAD=#LD_PRELOAD=$HOME/.spotify-adblock/spotify-adblock.so:#g /app/bin/spotify)"' @@u %U @@
Terminal=false
MimeType=x-scheme-handler/spotify;
Categories=Audio;Music;Player;AudioVideo;
StartupWMClass=spotify" >> Spotify.desktop
chmod +x Spotify.desktop 

cd /home/$USER/.local/share/applications
touch Spotify.desktop
 echo "[Desktop Entry]
Type=Application
Name=Spotify (adblock)
GenericName=Music Player
Icon=com.spotify.Client
Exec=flatpak run --file-forwarding --command=sh com.spotify.Client -c 'eval "$(sed s#LD_PRELOAD=#LD_PRELOAD=$HOME/.spotify-adblock/spotify-adblock.so:#g /app/bin/spotify)"' @@u %U @@
Terminal=false
MimeType=x-scheme-handler/spotify;
Categories=Audio;Music;Player;AudioVideo;
StartupWMClass=spotify" >> Spotify.desktop
chmod +x Spotify.desktop 

cd #
if [ ! -x /usr/bin/steam ]
then echo "Steam is not installed, perform this?(y/n)"
    read -r ops
    case $ops in
     y) if 
         sudo eopkg steam -y 
           
           then echo "Steam is installed"
        else echo "Something is wrong or broken exiting.." ; break
        fi ;;
     n) echo "Cancelled by $USER" ; break ;;
    esac
fi

if [ ! -x /usr/share/discord ]
then echo "Discord is not installed, perform this?(y/n)"
    read -r ops
    case $ops in
     y) if flatpak install flathub com.discordapp.Discord -y
           then echo "Discord is installed"
        else echo "Something is wrong or broken exiting.." ; break
        fi ;;
     n) echo "user requested no" ;break ;;
    esac
fi



if [ ! -x /opt/Hyper ]
then echo "Hyper is not installed, perform this?(y/n)"
    read -r ops
    case $ops in
     y) if wget get https://github.com/vercel/hyper/releases/download/3.1.0/hyper_3.1.0_amd64.deb
            sudo dpkg -i hyper_3.1.0_amd64.deb
            rm -rf .hyper.js
            cd based || exit 
            git pull
            mv hyper.js /home/"$USER"/.hyper.js
            sudo mv Firacode.ttf /usr/share/fonts/truetype

           then echo "Hyper is installed"
        else echo "Something is wrong or broken exiting.." ; break
        fi ;;
     n) echo "user requested no" ;break ;;
    esac
fi
 sudo eopkg autoremove -y

sudo eopkg --fix-broken install -y 
sudo eopkg update -y 
sudo eopkg upgrade -y 
echo "Do you like to remove all deb files?"
PS3='Please enter your choice: '
options=("Yes" "No")
select opt in "${options[@]}"
do
    case $opt in
        "Yes")
            sudo rm -rf spotify-client_1.1.55.498.gf9a83c60_amd64
                sudo rm -rf   hyper_3.1.0_amd64.deb
               sudo rm -rf  download?platform=linux
               sudo rm -rf   steam_latest.deb
               sudo rm -rf  wget-log
	       sudo rm -rf zoom_amd64.deb 
               break
              ;;
	          "No")
	          echo "User requested exit"
	           break
               	    ;;
             *) echo "invalid option  stooped $REPLY";;
    esac
done

sudo eopkg  --fix-broken install -y
sudo eopkg update 
sudo eopkg upgrade -y

figlet -f big "DONE INSTALLING PRECONFIGURED SHELLS

THANK YOU FOR USING MY SHELLS goodbye"

