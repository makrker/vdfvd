#!/bin/bash

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

      esac
done
