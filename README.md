# SHRP Recovery Device configuration for Sony Xperia X (suzu)

Copyright 2020 - The OmniROM Project

For building SHRP Recovery for Sony Xperia X (suzu) ONLY.

### Kernel Source
Check here: https://github.com/sonyxperiadev/kernel

### SHRP Recovery Source
SHRP Recovery Source: https://github.com/SKYHAWK-Recovery-Project

### How to build recovery
###-----First,Sync source

mkdir SHRP

cd SHRP

repo init -u git://github.com/SKYHAWK-Recovery-Project/platform_manifest_twrp_omni.git -b 9.0

repo sync -j8 --force-sync

mkdir -p device/sony

cd device/sony

git clone https://github.com/Remim7/SHRP_device_sony_suzu.git -b shrp_9.0 suzu

###-----Next,Build Recovery
cd SHRP

source build/envsetup.sh

export ALLOW_MISSING_DEPENDENCIES=true

export LC_ALL="C"

lunch omni_suzu-eng && mka recoveryimage

### Device specifications
=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Hexa-Core (2x1.8 GHz & 4x1.4 GHz)
CHIPSET | Qualcomm MSM8956 Snapdragon 650
GPU     | Adreno 510
Memory  | 3GB
Shipped Android Version | 6.0 (Marshmallow)
Storage | 64GB
Battery | 2620 mAh
Dimensions | 143 x 69 x 7.7 mm
Display | 1920 x 1080 pixels/5" LCD
Rear Camera  | 23 MP
Front Camera | 13 MP
