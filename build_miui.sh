#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchromv542
. build/envsetup.sh
cd m3
make fullota
