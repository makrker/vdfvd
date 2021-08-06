#!/bin/bash

#This is made by Mark 
#how he stand on 400 ping lolaoalaoalaao
#PRobably one of the worst shell but it works so shut the fuck up #i think no one cares lol
echo This will install all shit that i like inn this computer named "$USER" at "$HOSTNAME"

now=$(date +"%r")

echo -e "\033[33;34m Current time : $now"
sleep 1s


sudo apt update -y;sudo apt upgrade -y
sudo apt install flatpak -y
sudo apt install fonts-noto-color-emoji -y 
sudo apt update --fix-missing -y
sudo apt install -f -y
sudo apt install make -y 
sudo apt install cmake -y 
sudo apt autoremove -y
sudo apt install perl -y
sudo apt install figlet -y 
sudo apt install keepassxc -y 
sudo apt install git curl gcc  -y
sudo apt install git -y
sudo apt install cargo -y 
 wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i  zoom_amd64.deb        
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 
sudo apt install wget make  -y
sudo apt install build-essential -y
sudo apt update -y;sudo apt upgrade -y

flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub com.github.wwmm.pulseeffects -y
 flatpak install org.gnome.Platform/x86_64/3.38 -y
sudo apt update -y;sudo apt upgrade -y


 

sudo apt update -y;sudo apt upgrade -y
 cd "$HOME" || exit
git clone https://github.com/makrker/based.git

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
 echo eval "$(oh-my-posh --init --shell bash --config ~/based/asees.omp.json)" >> .bashrc
 echo eval "$(oh-my-posh --init --shell zsh --config ~/jandedobbeleer.omp.json)" >>.zshrc
sudo apt update -y;sudo apt upgrade -
sudo apt update -y


sudo apt update --fix-broken -y
sudo apt install -f -y

sudo apt autoremove -y

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
            sudo apt update
            sudo apt upgrade
            echo "this will install rhythmbox"
            sudo apt --fix-broken install
            sudo apt --fix-missing install
            sudo apt update
            sudo apt upgrade
            sudo apt install rhythmbox -y
            
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
            sudo apt install gnome-tweak-tool 
            sudo apt --fix-missing install 
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
            wget http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.1.55.498.gf9a83c60_amd64.deb
            sudo dpkg -i spotify-client_1.1.55.498.gf9a83c60_amd64.deb
            sudo apt --fix-broken install -y
            sudo apt update
            sudo apt --fix-broken install -y
            sudo apt install gcc -y
            sudo apt install make -y d
              git clone https://github.com/abba23/spotify-adblock.git
              cd spotify-adblock
               make
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
Name=Spotify (free mod apk no root premium no virus)
GenericName=Music Player
Icon=spotify-client
TryExec=spotify
Exec=env LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify %U
Terminal=false
MimeType=x-scheme-handler/spotify;
Categories=Audio;Music;Player;AudioVideo;
StartupWMClass=spotify" >> Spotify.desktop
chmod +x Spotify.desktop 

cd /home/$USER/.local/share/applications
touch Spotify.desktop
 echo "[Desktop Entry]
Type=Application
Name=Spotify (free mod apk no root premium no virus)
GenericName=Music Player
Icon=spotify-client
TryExec=spotify
Exec=env LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify %U
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
     y) if wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
           sudo dpkg -i steam_latest.deb
           
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
     y) if wget https://discord.com/api/download?platform=linux&format=deb
        sleep 360s    
         sudo dpkg -i download?platform=linux
        sudo apt --fix-broken install
           then echo "Discord is installed"
        else echo "Something is wrong or broken exiting.." ; break
        fi ;;
     n) echo "user requested no" ;break ;;
    esac
fi

 sudo mv Firacode.ttf /usr/share/fonts/truetype

if [ ! -x /opt/Hyper ]
then echo "Hyper is not installed, perform this?(y/n)"
    read -r ops
    case $ops in
     y) if https://github-releases.githubusercontent.com/62367558/6387d7b9-07a3-451e-a558-504674267f97?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210806%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210806T135334Z&X-Amz-Expires=300&X-Amz-Signature=c8343ae6939beb8def94cb35097f30e4ac7055a95895a0f88aa6884e3ff3416d&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=62367558&response-content-disposition=attachment%3B%20filename%3Dhyper_3.1.2_amd64.deb&response-content-type=application%2Foctet-stream
            sudo dpkg -i hyper_3.1.2_amd64.deb
            rm -rf .hyper.js
            cd based || exit 
            git pull
            mv hyper.js /home/"$USER"/.hyper.js
           

           then echo "Hyper is installed"
        else echo "Something is wrong or broken exiting.." ; break
        fi ;;
     n) echo "user requested no" ;break ;;
    esac
fi
 sudo apt autoremove -y

sudo apt --fix-broken install -y 
wget https://az764295.vo.msecnd.net/stable/c3f126316369cd610563c75b1b1725e0679adfb3/code_1.58.2-1626302803_amd64.deb
sudo dpkg -i code_1.58.2-1626302803_amd64.deb
sudo apt update -y 
sudo apt upgrade -y 
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
sudo apt autoremove
sudo apt  --fix-broken install -y
sudo apt update 
sudo apt upgrade -y

figlet -f big "DONE INSTALLING PRECONFIGURED SHELLS

THANK YOU FOR USING MY SHELLS goodbye"

