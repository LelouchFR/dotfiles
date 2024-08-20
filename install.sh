#!/usr/bin/env bash

if [[ $1 == "arch" ]]; then
    ./arch/install.sh $2
elif [[ $1 == "gentoo" ]]; then
    ./gentoo/install.sh $2
else
    echo -e "please use \033[1;32m./install.sh arch\033[0m or \033[1;32m./install.sh gentoo\033[0m"
fi
