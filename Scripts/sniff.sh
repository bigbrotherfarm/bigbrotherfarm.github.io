#!/bin/bash
today=`date '+%Y%m%d-%H%M'`;
hcitool scan | tee -a /media/pi/USB32/Bluetooth/bl$today.txt

# This script is under development and needs a lot of work.