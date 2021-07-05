#!/bin/bash

#This is made by Mark 
#how he stand on 400 ping lolaoalaoalaao
#PRobably one of the worst shell but it works so shut the fuck up #i think no one cares lol
echo This will install all shit that i like inn this computer named $USER at $HOSTNAME

now=$(date +"%r")

echo -e "\033[33;34m Current time : $now"
sleep 1s
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install git curl gcc  -y
 hostnamectl set-hostname xzxs --static
sudo apt install wget make  -y
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"



echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USER/.bashrc 
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt install build-essential -y
brew update 
brew upgrade
brew install gcc 



sudo apt update -y;sudo apt upgrade -y

 cd $HOME
 
 flatpak install org.gnome.Platform/x86_64/3.38 
 
 sleep 1s 

git clone https://github.com/makrker/based.git

 sed -i '1i eval "$(oh-my-posh --init --shell bash --config ~/based/asees.omp.json)" ' .bashrc

sudo apt update -y;sudo apt upgrade -y

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

 cd $HOME

wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb



wget https://github.com/vercel/hyper/releases/download/3.0.2/hyper_3.0.2_amd64.deb

sudo dpkg -i hyper_3.0.2_amd64.deb
sudo dpkg -i steam_latest.deb
sudo apt update 
sleep 2s

rm -rf .hyper.js
cd based
mv hyper.js /home/$USER/.hyper.js
gsettings set org.gnome.desktop.background picture-uri file file:///home/$USER/based/blue-texture-background-blue-paint-texture-painted-wall-stone-texture.jpg
sudo mv Firacode.ttf /usr/share/fonts/truetype
cd #

flatpak install flathub io.gitlab.librewolf-community
flatpak install flathub com.github.wwmm.pulseeffects


sudo apt autoremove -y
sudo apt install perl -y



PS3='Please enter your choice: '
options=("KDE Plasma" "Gnome" "Taco" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "KDE Plasma")
             git clone https://github.com/vinceliuice/ChromeOS-kde.git
            cd ChromeOS-kde
            ./install.sh
            git clone https://github.com/vinceliuice/Tela-icon-theme.git
            cd Tela-icon-theme
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
            cd Orchis-theme
            ./install.sh
             git clone https://github.com/vinceliuice/Tela-icon-theme.git
            cd Tela-icon-theme
            ./install.sh
             echo "this will install cursors"
            git clone https://github.com/vinceliuice/Vimix-cursors.git
            cd Vimix-cursors
            ./install.sh
            sudo apt install gnome-tweak-tool 
            sudo apt --fix-missing install 
             break
            ;;
        "Taco")
            echo "Tacos Are Really, Really Old While there is some debate over when exactly the first taco was created, most experts state that the first taco was actually invented somewhere between 1,000 and 500 B.C. At the time, the taco was more about having an edible spoon and since has morphed into the dish that we know today."
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


cd $HOME
cd Desktop
wget https://addons.mozilla.org/firefox/downloads/file/3763728/dark_reader-4.9.32-an+fx.xpi
wget https://addons.mozilla.org/firefox/downloads/file/3669496/trace-3.0.5-an+fx.xpi
wget https://addons.cdn.mozilla.net/user-media/addons/839767/clearurls-1.21.0-an+fx.xpi?filehash=sha256%3Aeb0b199cd478b21bc1fab59be627603946d1474070aa4eb482c44d18c041d974
echo "drag n drop these nuts"
echo -e "\E[31m' drop da extenstion to yer firefox ye!!?!?!?!"
sleep 2s

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
            sudo apt install make -y
             git clone https://github.com/abba23/spotify-adblock-linux.git
               cd spotify-adblock-linux
              wget -O cef.tar.bz2 https://cef-builds.spotifycdn.com/cef_binary_88.1.6%2Bg4fe33a1%2Bchromium-88.0.4324.96_linux64_minimal.tar.bz2
             tar -xf cef.tar.bz2 --wildcards '*/include' --strip-components=1
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
