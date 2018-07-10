#!/usr/bin/python
# -*- coding: utf-8 -*-

# This script will scp the latest farm cam images to the web

import os
import os.path
import sys
#import time
#from time import strftime
import datetime
from datetime import date, timedelta
import glob

#now = datetime.datetime.now()
#tanaan = now.strftime('%Y%m%d')
newestcamone = max(glob.iglob('/media/pi/USB32/Cams/Cam1/*.jpg'), key=os.path.getctime)
newestcamtwo = max(glob.iglob('/media/pi/USB32/Cams/Cam2/cam/snap/*.jpg'), key=os.path.getctime)
#newestcamthree = max(glob.iglob('/media/pi/USB32/Cams/Cam3/*.jpg'), key=os.path.getctime)

os.system('scp -i /home/pi/.ssh/farmcams ' + newestcamone + ' someone@server.com:/home/someone/public_html/farmcams/cam1.jpg')
os.system('scp -i /home/pi/.ssh/farmcams ' + newestcamtwo + ' someone@server.com:/home/someone/public_html/farmcams/cam2.jpg')