#!/bin/bash

if ! command -v apt &> /dev/null
then
    echo "COMMAND could not be found"
   exit
 else 
   echo "you have installed command -v"
   exit

fi

sudo apt update -y