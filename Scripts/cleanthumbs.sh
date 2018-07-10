#!/bin/bash

# When you have thousands of images on a Raspberry Pi the file system may get full from image thumbnails if you use a graphical interface. This script should be run every week using cron.

rm -rf /home/pi/.thumbnails/normal/*
sleep 2
rm -rf /home/pi/.thumbnails/large/*