#!/bin/bash

username=sda


line=$(grep $username /etc/passwd | tr ":" " ")

arr=($line)

echo ${arr[4]}
echo ${arr[5]}
echo ${arr[6]}
