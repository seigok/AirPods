#!/bin/bash

# Switch to real path
cd $(dirname $(readlink $0))
pwd

# Read setting
. ./setting.txt
echo "Connecting..."
echo $AP_ADDRESS
echo $AP_NAME

#BT connection
bluetoothconnector -c $AP_ADDRESS

# Trying to switch audio source
for ((i=0 ; i<10 ; i++))
do
  if [ 'Connected' == $(bluetoothconnector -s $AP_ADDRESS) ]; then
    sleep 1
    SwitchAudioSource -s "$AP_NAME"
    sleep 1
    say -v samantha Connected
    break
  fi
  sleep 1
done
