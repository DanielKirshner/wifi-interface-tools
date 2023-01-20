#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo -e "\t\tRun as root"
  exit 1
fi

if [ $# -eq 0 ]
  then
    echo -e "No interface argument supplied\n\nUsage:\n\t./managed.sh INTERFACE_NAME"
    exit 
fi

if [ $# -gt 1 ]
  then
    echo -e "Too many arguments supplied\n\nUsage:\n\t./managed.sh INTERFACE_NAME"
    exit 
fi

INTERFACE=$1

ip link set dev $INTERFACE down
iwconfig $INTERFACE mode managed
ip link set dev $INTERFACE up
