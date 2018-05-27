#!/bin/bash

# Wait before starting Syncthing. Otherwise any attached USB memory isn't mounted and Syncthing fails with permission errors (if you're using the USB memory for syncing that is).
sleep 1m
syncthing