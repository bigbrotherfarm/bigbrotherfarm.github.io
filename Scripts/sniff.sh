#!/bin/bash
today=`date '+%Y%m%d-%H%M'`;
hcitool scan | tee -a /media/pi/USB32/Bluetooth/bl$today.txt