#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo -e "\t\tRun as root"
  exit 1
fi