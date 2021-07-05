#!/bin/bash
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
