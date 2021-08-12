#!/bin/bash

if getent passwd sysop
then
	echo "Nope"
else
	useradd sysop
fi

if [[ $(id -ng sysop) == "sysop" ]]
then
	echo "User sysop is in group sysop"
else
	usermod -g sysop
fi

