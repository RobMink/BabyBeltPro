# Klipper on BabyBeltPro

This guide was written using the SKR mini E3 V3. For users flashing Klipper for the first time, please see the manufacturer's documentation [here](https://github.com/bigtreetech/BIGTREETECH-SKR-mini-E3/blob/master/firmware/V3.0/Klipper/README.md)
If you are following this section, please use the configuration files from the [Angle Switch Included](../Software/Firmware/klipper/angle_switch_included) Klipper Folder

Table o' Contents
- [BOM Differences](#bom-differences)
- [Build Changes - Overview](#build-changes)
- [Degree Sensor Switch Wiring](#degree-sensor-switch)
- [Installing the Switch](#installing-the-switch)

## BOM Differences
- Remove BTT-TFT35-E3-V3.0 screen
- Add BTT Pi TFT50 (Preferrably v2.1)
- Add 1 Omron D2F-5L (or similar)
- Add 2x M2x10 Self Tapping Screws
- Add 3x M3x5x4 Heat set inserts
- Add 3x M3x14 SHCS
- Add 1x (300mm) Pi TFT Cable (Prefer Adafruit as the cable backer is shorter) 
  - Stock has a 5mm tall Backer, Amazon Special has 7mm Backer. You can trim this yourself if you are INCREDIBLY careful when both peeling up from the back and cutting, I take no responsibility if you damage your cable by modification.
- Approximately 160mm of 24AWG stranded wire
- JST-XH Female Crimp ends (SXH-001T-P0.6 or SXH-001T-P0.6N)
- JST-XH 3-wire housing (XHP-3)
- For the new X Belt Clamp (if the original BOM has not been updated)
  - 4 M3x10 (You can use whatever cap you like, I think BHCS looks best) * These are for the X Axis Belt Clamps
  - 4 M3x20 SHCS (These are to adjust your tension on both sides & to act as a pivot arm)
  - 6 M3 Normal Nuts

## Build Changes
There are a few key differences in the assembly of the Baby Belt Pro for Klipper, the main differences are the front screen mount and a sensor switch. 

[Front Screen](../STLs/Frame/Mods/Klipper%20PiTFT50%20Screen/Klipper%20Screen%20Mount.stl)  
[Screen Cartridge](../STLs/Frame/Mods/Klipper%20PiTFT50%20Screen/Screen%20Cartridge%20-%20BTT%20PI%20TFT50%20v2%20cover.stl)

## Degree Sensor Switch
Take the 28AWG wire and strip a small portion of it, solder a wire to each of the outer legs of the switch as seen here.  
After you have connected them, add your crimp ends then gently twist the two wires to keep things nice and tidy. When you have reached the end of the wires, grab the JST 3 pin Wire housing and insert them in the right two spots if viewing the connector in a "pins up" orientation [see here](#xhp-3-wiring).   
![Switch Wiring Image](./images/angle_switch_wiring.png)

## XHP-3 wiring

![XHP-3 image](./images/xhp-3_wiring.png)

## Installing the switch
Next, on [Side A](../STLs/Frame/BBProV25fl_Side-A.stl) if you are using an existing part, take the D2F-5L switch and place it so that the face of the plastic is aligned with the front face of the case and the protruding side of the lever is closer to you.  

Front View
![Front View](./images/switch_mount_front_view.png)  
Outside View  
![Outside View](./images/switch_mount_outside_view.png)  
Inside View  
![Inside View](./images/switch_mount_inside_view.png)  