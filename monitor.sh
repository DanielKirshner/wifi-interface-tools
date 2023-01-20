#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo -e "\t\tRun as root"
  exit
fi

if [ $# -eq 0 ]
  then
    echo -e "No interface argument supplied\n\nUsage:\n\t./monitor.sh INTERFACE_NAME"
    exit 
fi

if [ $# -gt 1 ]
  then
    echo -e "Too many arguments supplied\n\nUsage:\n\t./monitor.sh INTERFACE_NAME"
    exit 
fi

INTERFACE=$1

systemctl mask wpa_supplicant
systemctl stop wpa_supplicant
ip link set dev $INTERFACE down
iwconfig $INTERFACE mode monitor
ip link set dev $INTERFACE up
