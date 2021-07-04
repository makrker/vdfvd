#!/bin/bash

#This is made by Mark 
#how he stand on 400 ping lolaoalaoalaao

echo This will install all shit that i like inn this computer named $USER at $HOSTNAME

now=$(date +"%r")

echo -e "\033[33;34m Current time : $now"
sleep 1s

sudo apt install git curl gcc  -y
 hostnamectl set-hostname xzx --static

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USER/.bashrc 
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt install build-essential -y
brew update 
brew upgrade
brew install gcc 
 brew tap jandedobbeleer/oh-my-posh
 brew install oh-my-posh
 brew install node

 sed -i '1i eval "$(oh-my-posh --init --shell bash --config ~/based/asees.omp.json)" ' .bashrc

sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo apt update -y;sudo apt upgrade -y
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
 cd $HOME
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
flatpak install flathub io.gitlab.librewolf-community
wget https://github-releases.githubusercontent.com/62367558/9e207200-7299-11e9-9741-51b46b359795?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210704%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210704T141740Z&X-Amz-Expires=300&X-Amz-Signature=97cfc45a581a1e3ff3d87cd6039a904ceb198e8de0c2dc10620ce0cb58eb4bf2&X-Amz-SignedHeaders=host&actor_id=86200419&key_id=0&repo_id=62367558&response-content-disposition=attachment%3B%20filename%3Dhyper_3.0.2_amd64.deb&response-content-type=application%2Foctet-stream

dpkg -i hyper_3.0.2_amd64.deb
hyper
sleep 1s
killall hyper
rm -rf .hyper.js
cd based
mv hyper.js /home/$USER/.hyper.js
cd #


 npm i seti-hyper
hyper i seti-hyper

cd node_modules 
hyper i seti-hyper
cd #


echo "y"
flatpak install flathub com.github.wwmm.pulseeffects
flatpak run com.github.wwmm.pulseeffects
 echo "y"
sudo apt autoremove
sudo apt install perl -y
foods=("KDE plasma" "GNOME" "Tacos facts" "Quit")
select fav in "${foods[@]}"; do
    case $fav in
        "KDE plasma")
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
            break
            ;;
        "GNOME")
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
            break
            ;;
        "Tacos facts ")
            echo "According to NationalTacoDay.com, Americans are eating 4.5 billion $fav each year."
            ;;
	"Quit")
	    echo "bye bye you look cute today!"
	    break
	    ;;
        *) echo "invalid option man,uwu maybe you can try again? uwu $REPLY";;
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
PS3='Do you want to install spotify with adblockers?: '
foods=("Yes" "Quit")
select fav in "${foods[@]}"; do
    case $fav in
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
               LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify
               break
              ;;
	          "Quit")
	          echo "User requested exit"
	           break
               	    ;;
             *) echo "invalid option $REPLY";;
    esac
done
