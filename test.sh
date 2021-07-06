#!/bin/bash

type apt >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; exit 1; }

sudo apt-get update