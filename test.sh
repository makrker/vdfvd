#!/bin/bash

if ! hyper -v COMMAND &> /dev/null
then
    echo "COMMAND could not be found"
   echo "you have installed COMMAND"
fi