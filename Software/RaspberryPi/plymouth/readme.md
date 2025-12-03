# Raspberry Pi boot screen for BabyBeltPro

This is a `plymouth` theme to really jazz up your BabyBeltPro.

- [Hardware Required](#hardware-required)
- [Install Steps](#install-steps)
- [Troubleshooting](#troubleshooting)
- [Errata](#errata)
- [Credits / License](#credits--license)
- [AI Disclosure](#ai-disclosure)

## Hardware Required
- Raspberry Pi
  - _other SBCs / computers **should** work, provided they run a debian derived linux or support `plymouth`_
- BigTreeTech Pi TFT50
  - Any other screen will work, if it shows you output from your linux machine
  - Resolutions might be wonky? This hasn't been tested on anything else (except a 4k monitor)
  - But really, why wouldn't you just use the TFT50? There is already an [excellent mod](../../../documentation/Klipper/mods/TFT50.md)

## Prerequisites
You have a functioning system that display output on boot.
Ideally, this would be a Raspberry Pi with TFT50, that displays boot messages, and takes you some place useful like KlipperScreen. 

You are willing to potentially b0rk your system. Seriously, maybe have a backup, or at least the (unearned?) confidence to trust this code to make a bunch of changes to your boot environment. #yolo


## Install Steps
There are two ways of doing this, the easy **DANGEROUS** way, and the harder, slightly less dangerous, way.

##### Easy Way:
From your RaspberryPi, login via SSH or local terminal and run:

`curl -s https://raw.githubusercontent.com/RobMink/BabyBeltPro/main/Software/RaspberryPi/plymouth/install.sh | bash`

##### Slightly Harder way:
Copy `install.sh` from this directory to your RaspberryPi, then 

`bash ./install.sh`

## Troubleshooting
As things comes up, the answers will be added here.

## Errata
_Nothing yet... just a place for random odds/ends_

## Credits / License
The plymouth theme is a wholesale copy with minor tweaks of HerbFargus' [Retropie Theme](https://github.com/HerbFargus/plymouth-themes/tree/master)
This work is available under GPLv3, same as the BabyBeltPro project. 

## AI Disclosure
Generative AI was used in the creation of the images. The originator [mrchristian / hanzov69](https://github.com/hanzov69) with full commercial/unrestricted usage rights, and releases them under the same license(s) covering the BabyBeltPro project.