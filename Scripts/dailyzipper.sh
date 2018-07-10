#!/bin/bash

prevday=$(date +%Y%m%d -d "yesterday")

# Cam1
zipfileone="/media/pi/USB32SYNC/Cams/Cam1/cam1-$prevday.zip"
jpegsone="/media/pi/USB32/Cams/Cam1/cam1-$prevday*.jpg"

zip -j $zipfileone $jpegsone
sleep 5
rm -f $jpegsone

# Cam2
zipfiletwo="/media/pi/USB32SYNC/Cams/Cam2/cam2-$prevday.zip"
pics="/media/pi/USB32/Cams/Cam2/SomeCamera_X_123456/pics/*$prevday*.jpg"
video="/media/pi/USB32/Cams/Cam2/SomeCamera_X_123456/video/*$prevday*.mkv"

zip -r $zipfiletwo $pics $video
sleep 5
rm -f $pics
rm -f $video