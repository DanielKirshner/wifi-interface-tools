#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo -e "\t\tRun as root"
  exit 1
fi

INTERFACE=$1

systemctl mask wpa_supplicant
systemctl stop wpa_supplicant
ip link set dev $INTERFACE down
iwconfig $INTERFACE mode monitor
ip link set dev $INTERFACE up
