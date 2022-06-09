#!/bin/bash - 
#===============================================================================
#
#          FILE: for_loop.sh
# 
#         USAGE: ./for_loop.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/02/2021 11:43
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Command subsitution
for fileName in $(ls -a ./) 
do
    echo "Hello X $fileName"
done

#for i in $(seq 1 2 20)
#do
#    echo "Welcome $i times"
#done

#for ((c=1; c<=4; c++ ))
#do
#    echo "Wecome $c times"
#done

#for (( ; ; ))
#do
#    echo "Infinite Loop [hit CTRL+c to stop"
#done

for file in /etc/*
do
    if [ "${file}" == "/etc/resolv.conf" ]
    then
	countNameservers=$(grep -c nameserver /etc/resolv.conf)
	echo "Total ${countNameservers} nameservers defined in ${file}"
	break
    fi
done

ips="$(host -t a google.com | awk '{ print $4}')"
for i in $ips; do ping -q -c 4 "$i"; done
