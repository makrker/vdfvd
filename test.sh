#!/bin/bash



if [ ! -x /opt/Hyper ]
then echo "Hyper is not installed, perform this?(y/n)"
    read -r ops
    case $ops in
     y) if wget get https://github.com/vercel/hyper/releases/download/3.0.2/hyper_3.0.2_amd64.deb
            sudo dpkg -i hyper_3.0.2_amd64.deb
           then echo "Hyper is installed"
        else echo "unable to install the axel. you are using sudo?" ; exit
        fi ;;
     n) echo "user requested no" ;exit ;;
    esac
fi
echo "are you interested in Hype?"