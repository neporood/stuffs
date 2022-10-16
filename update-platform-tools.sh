#!/bin/bash

# First, change to the "Home" directory
cd ~

# Get the latest platform tools from Google
wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip

# Unzip it
unzip \platform-tools-latest-linux.zip

# Move latest adb and fastboot to current platform tools directory
sudo mv platform-tools/adb /usr/lib/android-sdk/platform-tools/adb
sudo mv platform-tools/fastboot /usr/lib/android-sdk/platform-tools/fastboot

# Clean up so there's no duplicates when we update again
sudo rm -rf platform-tools platform-tools-latest-linux.zip
