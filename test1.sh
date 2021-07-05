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
    esachttps://adclick.g.doubleclick.net/pcs/click?xai=AKAOjssSmWycPldifettUy5ncDom67CWPNi4QLowjB51lGN0ZY8NodNKHINacJsE8RwsLZBzYzmLEuXfPEjTF9JeeaZ3is0FQZxn3KLAPAQWWw87xWfDdtc7vscBeYr3nIMu7zoudzqMdF7usV6giqXCst3dCqy1gf-80u8_2z7tyb2liWe7AESGq7Mig8McaBohyMWcvdwgW999gLV6h0B03piD_LW93APDLD1zX5EJ8LzZm-JNV3We3VxsnxQl5EqcA7I_nD_ZnmYp4CvXoXJtQGSSdEwU_KaTVZUmRLtWNRoJTd7Kr6khXGMwp1tIdN5-It09CVsq4Q&sai=AMfl-YQ8qCnTYaL5gJVaj79-dt0gn_ZsHZD5J1PW9EYiHXafq9YJhzHrraECiu6ujJHz_k2ivfJbo66lx2ZH3-7Ymruj7uKOII58OnLn6FmVERBEycWD-pUXZcT0PIP1BNMM&sig=Cg0ArKJSzLZR1yQua4vkEAE&fbs_aeid=[gw_fbsaeid]&urlfix=1&adurl=https://www.cnet.com/health/sleep/?ftag=CAD-01-10acb0e