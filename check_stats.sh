#!/bin/bash

perms=$(stat -c %a $1 | grep -oP '(\d)$')
user=$(stat -c %U $1)
name=$(stat -c %n $1)

if [[ "$user" != "root" ]] 
then
	echo "File $name is owned by user $user!"

fi

if [[ "$perms" -ne 4 ]]
then
	echo "File $name other permissions are $perms"
fi

