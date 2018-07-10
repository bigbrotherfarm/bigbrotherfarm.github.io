#!/bin/bash

cp -p "`ls -dtr1 /media/pi/USB32/Cams/Cam1/* | tail -1`" /media/pi/USB32SYNC/CamsUpdate/Cam1/
find /media/pi/USB32SYNC/CamsUpdate/Cam1/ -name cam1-*.jpg -type f -mmin +360 -delete