<a id="top"></a>  

# BabyBelt Pro V2.5 - Printer Buy and Build Guide
BabyBelt Pro V2.5 by RobMink

Jump To...

- [Pre-Purchase and Print Decisions](#pre-purchase-and-print-decisions)
- [Tools Needed](#Tools-Needed)
- [Printed and Made Parts](#Printed-and-Made-Parts)
- [Purchased Parts](#Purchased-Parts)
- [Physical Build](#Physical-Build)
    - [Frame](#frame)
        - [Base Assembly](#base-assembly)
        - [Board Prep and Mount](#board-prep-and-mount)
        - [Power Switch and Jack](#power-switch-and-jack)
        - [Screen Mount](#screen-mount)
        - [Extruder](#extruder)
        - [Belt Tensioner](#belt-tensioners)
        - [Rollers](#rollers)
        - [Z-Motor](#z-motor)
        - [Scraper Install](#scraper-install)
    - [Gantry](#Gantry)
        - [X Carriage](#X-Carriage)
        - [Y Carriage](#Y-Carriage)
        - [Hotend Electronics](#Hotend-Electronics)
        - [Heatbreak Fan](#Heatbreak-fan)
        - [Y Tensioner](#Y-Tensioner)
        - [Y Axis](#Y-Axis)
        - [Bowden Connector](#bowden-connector)
        - [Y Axis GT2 Belt](#y-axis-gt2-belt)
        - [LDO Toolboard](#ldo-toolboard)
        - [X Axis GT2 Belt](#x-axis-gt2-belt)
        - [Gantry Completion](#gantry-completion)
    - [Heated Bed](#heated-bed)
        - [No Heated Bed](#no-heated-bed)
        - [LDO Kit Heated Bed](#ldo-kit-heated-bed)
        - [Fabreeko Kit Heated Bed](#fabreeko-kit-heated-bed)
    - [Wiring](#wiring)
    - [Belt and Bed](#belt-and-bed)
    - [Build Complete](#build-complete)

- [Complete](#Complete)

## Pre-Purchase and Print Decisions
There are a few decisions that have an impact on the parts that need purchased and printed.

1. Hotend Choice - Bambu X1 or Revo
    - A Bambu X1 style hotend is the "default" included in both commercial kits and is a cheaper solution.
        - To use a bambu X1 style hotend print the bambu carriage parts, purchase a X1 style hotend such as the [Triangle Lab TZ 2.0 for Bambu X1](https://trianglelab.net/products/tz-20-hotend-for-bambu-lab-x1-p1p?VariantsId=11766), and a 25mm 24v fan for parts cooling.  If buying a kit only the printed parts are needed outside of what is included.
    - A Revo hotend can also be used.  This is a more expensive hotend but some folks opt for this solution for ease of nozzle changes and the [Revo Belt & Non Planar Nozzles](http://e3d-online.com/products/revo-belt-nozzles).
        - To use a Revo hotend print the revo carriage parts, purchase a Revo Micro 24v full hotend kit, a revo belt & non-planar nozzle, and a 3010 brushless 24v fan for parts cooling.

1. Bowden to carriage connection - Coupler or ECAS
    - The default carriage files are for a bowden coupler shown below.  If you are self sourcing or have one of these laying around use the [*YCar_Bam_SideA*](../STLs/Gantry/Carriage/Bambu/[a]_BBProV25fl_YCar_Bam_SideA.stl) and [*YCar_Bam_SideB*](../STLs/Gantry/Carriage/Bambu/[a]_BBProV25fl_YCar_Bam_SideB.stl) in the Bambu carriage folder
         
      <img src="./images/build_guide/bowden-coupler.png" width="50"/>
    - LDO Kits include an ECAS connector shown below. If you need to use this connector print [*YCar_Bam_SideA_ECAS*](../STLs/Gantry/Carriage/Bambu/ECAS%20version/[a]_BBProV25fl_YCar_Bam_SideA_ECAS.stl) and either [*YCar_Bam_SideA_ECAS-Tight*](../STLs/Gantry/Carriage/Bambu/ECAS%20version/[a]_BBProV25fl_YCar_Bam_SideB_ecas-Tight.stl) or [*YCar_Bam_SideA_ECAS-Looser*](../STLs/Gantry/Carriage/Bambu/ECAS%20version/[a]_BBProV25fl_YCar_Bam_SideB_ecas-Looser.stl) depending on your desired fit.
    
     
      <img src="./images/build_guide/bowden-ecas.png" width="50"/>

1. Firmware - Marlin or Klipper
    - Marlin Firmware - can be run with the basic BOM or either commercial kits with no additional hardware outside of a Micro SD card.  The screen will be the primary interface, firmware and gcode files are moved to the printer using the SD card or something external like Octoprint.
<a id="klipper-firmware"></a> 
    - Klipper firmware - is a bit more popular but does require additional hardware.  The Baby Belt Pro v2.5 is designed with mounts for a Raspberry Pi 3/4/5 or CM 3/4 and a mount for a 24v to 5v buck converter to keep the setup internal.
        - Raspberry Pi or other SBC
        - Second Micro SD card or other boot media for the SBC
        - Power source for the SBC
            - A second external PSU can be run into the tub or a [Buck converter](https://www.amazon.com/dp/B0CRVVWL4Y) can be spliced to the power jack and keep all the power inside the tub.
        - The USB cable included with the SKR Mini can be used to connect the Pi to the SKR or 3 [~20CM female to female jumper wires](https://www.amazon.com/dp/B0BRTJQGS6) can be used to make a serial/uart connection inside the tub.  Follow the [uart connection guide](./Klipper/mods/uart_connection.md) for more detail.

[Jump to Top](#top)

## Tools Needed
- 2.5mm Hex Key or Driver
- 2mm Hex Key or Driver
- 1.5mm Hex Key or Driver
- Small Flathead Screwdriver
- Adjustable Wrench
- Wire Cutters
- File, knife, and/or deburring tool (Good for making slight adjustments to plastic parts if needed.)

[Jump to Top](#top)

## Printed and Made Parts
- Fabric Belt - Included in LDO/Fabreeko kits OR follow the [Fabric Belt Guide](belt_guide.md) to make one.
- Printed Parts - Check out the [Printed Parts Guide](printed_parts_guide.md) for parts description and print settings.
    - NOTE: Print EITHER the Bambu (LDO/Fabreeko kits) OR the Revo carriage parts.
    - NOTE: [Printed Parts Guide](printed_parts_guide.md) assumes BOM parts. Mods like SFS of TFT50 will require some additional/replaced parts.

[Jump to Top](#top)

## Purchased Parts
### SD Card
- One MicroSD card is needed for the SKR board (klipper or marlin) and is not included on the BOM or in any kit. The SKR can only read FAT32 so anything larger than a 32gb card will not be usable.
- If using Klipper and booting a pi from microSD get a second card of any size.
### Klipper extras
If Klipper will be used, remember to purchase the necessary extra parts listed in the [Klipper Firmware](#klipper-firmware) decision.
### Ways to Purchase
There are 3 main paths to getting the purchased parts. Kits are the easiest option and come with all non-printed parts needed to build a functional Baby Belt Pro v2.5 running Marlin.  
1. Self Source - [BB Pro v2.5 BOM](https://docs.google.com/spreadsheets/d/19PbR3nFbQ4-eIOTU0kmoTl5-mHv_KsTnUdfFXekWg-I/edit)
2. LDO Systems and West3D Kit - [LDO Kit BOM](./images/ldo_kit/unboxing/bom.jpg) - Buy the LDO System Kit @ [West3D](https://west3d.com/products/baby-belt-pro-v2-5-complete-diy-belt-printer-kit-by-ldo-systems-and-west3d) - In Stock as of Dec 2025
3. Fabreeko and HoneyBadger Kit - [Fabreeko/HoneyBadger Kit](https://www.fabreeko.com/products/baby-belt-pro-kit-by-honeybadger) - Out of Stock as of Dec 2025

[Jump to Top](#top)

# Physical Build 
>[!TIP]
>There are several times during this build when a component will be secured with multiple screws. It is generally recommended to NOT fully tighten a screw before the rest have been started, to make sure parts line up correctly and don't crack. 
## Frame
### Base Assembly
Start by constructing the base. 
- Place an **M3 Nut** into the hole indicated by the arrow in [*Side-B*](../STLs/Frame/BBProV25fl_Side-B.stl)
<img src="./images/fabreeko_kit_build/3.jpg" width="600"/>

- Join the two sides together and place one **M3x20 screw** into the indicated hole in [*Side-A*](../STLs/Frame/BBProV25fl_Side-A.stl) and tighten. 
<img src="./images/fabreeko_kit_build/4.jpg" width="600"/>

The base should now look like this.

<img src="./images/fabreeko_kit_build/5.jpg" width="600"/>

[Jump to Top](#top)

### Board Prep and Mount

- Unpack the board and locate the included jumpers.

<img src="./images/build_guide/board-prep-1.png" width="500"/>

- Install 3 jumpers as shown to enable sensorless homing.

<img src="./images/build_guide/board-prep-2.png" width="500"/>

- Install the SKR board by the power switch using 3, **M3x10mm**
>[!NOTE]
>Ignore the power wires for now, images were re-used.
<img src="./images/fabreeko_kit_build/10.jpg" width="500"/>

- Make sure the Micro-USB and MicroSD ports line up with the holes for them in the side panel.  If needed use a file/knife/debur tool to widen the openings to allow access.

<img src="./images/fabreeko_kit_build/11.jpg" width="400"/>

[Jump to Top](#top)

### Power Switch and Jack
>[!NOTE]
>Exact wiring of the switch and jack may differ.  Some switches take an extra hot in to power a LED.

>[!CAUTION]
>LDO kits often have 2 power jacks included due to an original BOM mix up.  One will be loose the other will be in one of the boxes. Only one will fit the included power supply.  Test fit the jacks to the power supply to ensure you install the correct part, the other will not be needed.

Next install the **power jack** and **switch**. 

<img src="./images/fabreeko_kit_build/6.jpg" width="400"/>

- There are two circular holes next to each other on [*Side-B*](../STLs/Frame/BBProV25fl_Side-B.stl) of the printer. 
- The black rubber cover for the power jack is optional
- Secure the power jack with the supplied nut
- The power switch will lock into place once pushed in
  
<img src="./images/fabreeko_kit_build/7.jpg" width="400"/>

Here is what it should look like from the other side. 

Newer Kits

<img src="./images/build_guide/power-switch-1.png" width="400"/>

Older Kits

<img src="./images/fabreeko_kit_build/8.jpg" width="400"/>


- If needed wire the two components as shown below.  Be sure to cover all conductive parts with shrink wrap or electrical tape (not supplied) to insulate the connections and avoid accidental shorting
- We opted to solder the wires to the connectors for this build

<img src="./images/fabreeko_kit_build/9.jpg" width="400"/>

>[!TIP]
>If you are planning to install a buck converter to power a pi for [klipper firmware](#klipper-extras) or octoprint for marlin this is a good time to add wago 221 connectors and optionally crimp on ferrules for splicing.

- Connect the wires from the power switch & power jack to the SKR board as shown below

<img src="./images/fabreeko_kit_build/12.jpg" width="400"/>

<img src="./images/fabreeko_kit_build/13.jpg" width="400"/>

[Jump to Top](#top)

### Screen Mount

Next we will install the screen. 

- Double check that all support material has been cleaned off of the screen mount.

<img src="./images/fabreeko_kit_build/14.jpg" width="500"/>

- Slide the screen into the inside of the [*Screenmount*](../STLs/Frame/%5Bs%5D_BBProV24fl_Screenmount.stl).  Using the holes in the bottom to allow your driver to reach, secure from the back with 4 M3x10 screws.  Do not fully tighten the screws until you have all 4 in.  Make sure the knob does not bind in click mode as this will happen if the screen is not aligned properly.  Use 4, **M3x10mm** to connect the screen to the 

<img src="./images/fabreeko_kit_build/15.jpg" width="500"/>

- Turn the mount around and attach the knob by pushing it onto the silver dial beneath the screen

<img src="./images/fabreeko_kit_build/18.jpg" width="500"/>

- Plug the wire into the port labeled RS232 on the back of the screen using the black plastic connector that combines all the wires into one.

<img src="./images/fabreeko_kit_build/19.jpg" width="300"/>

<img src="./images/build_guide/screen-rs232.png" width="300"/>

- Take the printer base and flip it over.  Line up the [*screen mount*](../STLs/Frame/%5Bs%5D_BBProV24fl_Screenmount.stl) to the end pf the from with the control board. Insert an **M3 Nut** into the hole on the bottom of the frame, next to where it slots into the base.

<img src="./images/fabreeko_kit_build/21.jpg" width="500"/>

- Insert one **M3x20mm** into the hole on the side of the frame and use it to secure the [*screen mount*](../STLs/Frame/%5Bs%5D_BBProV24fl_Screenmount.stl)

<img src="./images/fabreeko_kit_build/22.jpg" width="500"/>

Next use 2, **M3x10mm screws** and 2, **M3 Nuts** to attach the screen mount with the two holes in the top. 

<img src="./images/fabreeko_kit_build/23.jpg" width="500"/>

<img src="./images/fabreeko_kit_build/24.jpg" width="500"/>

[Jump to Top](#top)

### Extruder
- Check your extruder manual for any particular installation considerations. 

- Attach the **gear** to the **NEMA 17 stepper motor** ensuring that the **grub screw** is tight against the flat part of the motor shaft. Make sure the gear fits properly with the rest of the gears in the extruder.  For BMG style extruders the grub screw faces AWAY from the motor body.

<img src="./images/fabreeko_kit_build/25.jpg" width="300"/>

- Line up the motor with the mounting holes in the side of the frame.  Pay attention to the direction the motor connector is facing inside the tub.  Facing away from the screen towards the back is usually best for cleaner wiring.

<img src="./images/fabreeko_kit_build/26.jpg" width="300"/>

- Attach the extruder, with the exit path pointing towards the screen, to the outside of the frame with 3 or 4, **M3x10mm** screws depending on your extruder.

<img src="./images/fabreeko_kit_build/27.jpg" width="300"/>

<img src="./images/build_guide/bowden-install-2.png" width="300"/>

[Jump to Top](#top)

### Belt Tensioners

Next we will build and install the belt tensioners. 
>[!NOTE]
>There are two of these, so do each step twice.

<img src="./images/fabreeko_kit_build/28.jpg" width="500"/>

- Fit a **M8 Nut** into [*PrintBelt_Pusher-A*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Pusher-A.stl)/[*PrintBelt_Pusher-B*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Pusher-B.stl)

<img src="./images/fabreeko_kit_build/29.jpg" width="300"/>

- Secure it with a **M8x70mm** Screw 

<img src="./images/fabreeko_kit_build/30.jpg" width="500"/>

- Fit a **M8 Nut** into each of the [*PrintBelt_Nut*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Nut(2x).stl).

<img src="./images/fabreeko_kit_build/31.jpg" width="500"/>

- Line up holes on each [*PrintBelt_Frame-A*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Frame-A.stl)/[*PrintBelt_Frame-B*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Frame-B.stl) with the M8 inside the [*PrintBelt_Nut*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Nut(2x).stl).


<img src="./images/fabreeko_kit_build/32.jpg" width="400"/>

- Screw the frames onto the pushers.  Make sure that the frames are facing the correct way (thicker part on back with M3 hole further away from the pusher part.

<img src="./images/fabreeko_kit_build/33.jpg" width="500"/>

- There are spots for the tensioners to fit on either side of the base. 

<img src="./images/fabreeko_kit_build/34.jpg" width="500"/>

- Use a **M3x20mm screw** to install both of the tensioners with the curved portion facing downward. 

<img src="./images/fabreeko_kit_build/35.jpg" width="500"/>
<img src="./images/fabreeko_kit_build/36.jpg" width="500"/>

[Jump to Top](#top)

### Rollers
- Check both ends of both rollers and cleanup the openings if needed.
- Wrap both [*rollers*](../STLs/ZBeltDrive/%5Ba%2Cs%5D_BBProV25fl_Roller%5Bx2%5D.stl) in electrical tape to maintain a better grip on the belt
- We recommend 2 wraps, with the 2nd one helping to hold the first in place 
- Place a **M8 Nut** into the side slot and then inserting a **M8x70 Hex Screw** with a **608ZZ bearing** fully into the [*roller*](../STLs/ZBeltDrive/%5Ba%2Cs%5D_BBProV25fl_Roller%5Bx2%5D.stl).

<img src="./images/fabreeko_kit_build/37.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/38.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/39.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/40.jpg" width="600"/>

- On one of the rollers, install the [*Roller_ZGear*](../STLs/ZBeltDrive/%5Ba%5D_BBProV25fl_Roller_ZGear.stl) on the screw, before the bearing.

<img src="./images/fabreeko_kit_build/41.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/42.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/43.jpg" width="600"/>

[Jump to Top](#top)

### Z Motor

<img src="./images/fabreeko_kit_build/44.jpg" width="500"/>

- Make sure the wire port on the motor is facing towards the screen 

<img src="./images/fabreeko_kit_build/46.jpg" width="500"/>

- Attach the Z motor to the frame using 4, **M3x10mm screws** 

<img src="./images/fabreeko_kit_build/45.jpg" width="500"/>

- Install the [*NEMA 17_Z Gear*](../STLs/ZBeltDrive/%5Ba%5D_BBProV25fl_Nema17_ZGear.stl) onto the motor and then check to make sure it lines up with the gear on the [*Roller_ZGear*](../STLs/ZBeltDrive/%5Ba%5D_BBProV25fl_Roller_ZGear.stl) we installed on one of the rollers earlier

<img src="./images/fabreeko_kit_build/47.jpg" width="250"/>
<img src="./images/fabreeko_kit_build/48.jpg" width="500"/>

- Proper fit

<img src="./images/fabreeko_kit_build/50.jpg" width="500"/>

- Improper fit

<img src="./images/fabreeko_kit_build/49.jpg" width="450"/>

- Take the roller back out and move on to the next step.

[Jump to Top](#top)

### Scraper Install

- If not already completed or included in a kit, follow the [Fabric Belt Guide](belt_guide.md) to make a belt.

- Place a **M3 Nut** into the slot on the side of the frame right above the motor. Repeat on the other side

<img src="./images/fabreeko_kit_build/51.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/52.jpg" width="500"/>

- Slide the belt over the geared roller.
- Put the roller back into position, making sure the gears line up properly.
- Flip/position the belt towards the screen side of the printer.
- Use 2 **M3x10mm** to attach the scraper below the roller, securing into the nuts we previously inserted. 

<img src="./images/fabreeko_kit_build/56.jpg" width="375"/>

- Use a **M3 Nut** and **M3x20mm** screw to attach the [*scraper*](../STLs/Frame/BBProV25fl_scraper.stl) to the frame in the same manner the screen mount.


<img src="./images/fabreeko_kit_build/53.jpg" width="500"/>
<img src="./images/fabreeko_kit_build/54.jpg" width="450"/>

- Flip the belt back over the scraper so it is out of your way for the next few steps.

[Jump to Top](#top)

The main body or "tub" is assembled.

## Gantry

[Jump to Top](#top)

### X Carriage

>[!CAUTION]
> DO NOT REMOVE THE RUBBER STOPPERS from the linear rail until it is necessary.  When the stoppers need to be removed to attach the rail move them down a few holes.  Be sure the carriage stays on the rail or the bearing balls will fall out making a mess and the installer miserable. 


>[!Note]
> We highly recommend lubricating **all** the linear rail bearings (visible in the photo below) using something like Mobil EP1 or EP2 grease prior to installation. Nero3D has a [great guide providing explanations and how-tos for this](https://youtu.be/UYvhYjkBFTY?si=frlAKNLAvElEVHFv) 

- Position [*X-Carriage*](../STLs/Gantry/X/BBProV25fl_X-Carriage.stl)  line up the **smooth idlers** with the indicated holes and secure in place with 2, **M3x20 screws**

<img src="./images/fabreeko_kit_build/90.jpg" width="400"/>

- The gantry should now look like this. The yellow boxes indicate where the gantry will be attached to the pair of **linear rails** in the coming steps.

<img src="./images/fabreeko_kit_build/92.jpg" width="400"/>

- Put the last two MGN7 rails into the  [*XRailSpacerV2*](../STLs/Tools/[any]_BBPro_XRailSpacerV2[x2].stl).  This will help hold the rails in the proper orientation.

<img src="./images/build_guide/x-carriage-1.png" width="700"/>


- Attach the gantry to the linear rails using 8 **M2x6 screws** (4 for each linear rail) 

<img src="./images/build_guide/x-carriage-2.png" width="600"/>

- Loosely attach [*X_RailMount_Side-A*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_XrailMount-SideA.stl) and [*X_RailMount_Side-B*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_XrailMount-SideB.stl) to the linear rails using 4 **M2x8mm screws** and 4 **M2 Nuts** on each side.

- Slide the  [*XRailSpacerV2*](../STLs/Tools/[any]_BBPro_XRailSpacerV2[x2].stl) out against the X_RailMounts to hole the rails square and properly spaced while tightening the nuts.

<img src="./images/build_guide/x-carriage-3.png" width="600"/>

- 2025 revision parts shown below.

<img src="./images/build_guide/x-carriage-4.png" width="600"/>

[Jump to Top](#top)


### Y Carriage
 - Attach the [*YCar_Bam_Fan*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_Fan.stl) to the [*YCar_Bam_BeltHolder*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_BeltHolder.stl) by inserting 2, **M3x10 screws** into the holes indicated in the first image, and through the whole in the second image
- Secure with **M3 Nuts** 

<img src="./images/fabreeko_kit_build/59.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/60.jpg" width="300"/>

<img src="./images/build_guide/carriage-1.png" width="700"/>

- Orient the fan so that the air flow will move towards the air duct on the fan mount, then secure where indicated with zip ties 

<img src="./images/fabreeko_kit_build/62.jpg" width="500"/>

- Use a zip tie to secure the wires to the side of the carriage 

<img src="./images/build_guide/part-fan-1.png" width="500"/>

>[!CAUTION]
> DO NOT REMOVE THE RUBBER STOPPERS from the linear rail until it is necessary.  When the stoppers need to be removed to attach the rail move them down a few holes.  Be sure the carriage stays on the rail or the bearing balls will fall out making a mess and the installer miserable. 


>[!Note]
> We highly recommend lubricating **all** the linear rail bearings (visible in the photo below) using something like Mobil EP1 or EP2 grease prior to installation. Nero3D has a [great guide providing explanations and how-tos for this](https://youtu.be/UYvhYjkBFTY?si=frlAKNLAvElEVHFv) 

- Insert a **M3 Nut** into this slot on the [*YCar_Bam_Side-A*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_SideA.stl)

<img src="./images/fabreeko_kit_build/63.jpg" width="400"/>

- Attach the carriage to the **linear rail** using 4, **M2x6mm screws**

<img src="./images/fabreeko_kit_build/64.jpg" width="400"/>

- Insert a **M3 Nut** into the still exposed slot on the [*YCar_Bam_Side-A*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_SideA.stl)

<img src="./images/fabreeko_kit_build/65.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/66.jpg" width="400"/>

- It should line up with the hotend fan like so:

<img src="./images/fabreeko_kit_build/67.jpg" width="400"/>

- Insert **M3 Nuts** into the slots indicated on the [*YCar_Bam_Side-B*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_SideB.stl)

<img src="./images/fabreeko_kit_build/68.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/69.jpg" width="400"/> 

Next we will install the hotend to the [*YCar_Bam_Side-B*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_SideB.stl)

<img src="./images/fabreeko_kit_build/70.jpg" width="400"/>

- Use a **M3x20mm screw** and a **M3 Nut** to attach the hotend to the [*YCar_Bam_Side-B*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_SideB.stl)
through the hole shown at the top

<img src="./images/fabreeko_kit_build/71.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/72.jpg" width="400"/>

- Make sure the screw goes through the correct hole on the hotend

<img src="./images/fabreeko_kit_build/73.jpg" width="400"/>

- Insert **M3 Nuts** into the holes pictured 

<img src="./images/fabreeko_kit_build/74.jpg" width="400"/> 
<img src="./images/fabreeko_kit_build/75.jpg" width="400"/> 
<img src="./images/fabreeko_kit_build/76.jpg" width="400"/>

- Attach the hotend fan assembly to the rail carriage (this is easier to do one half at a time)
- Use **M3x8mm screws** for the top holes and **M3x10mm screws** for the holes nearest the nozzle. 

<img src="./images/fabreeko_kit_build/77.jpg" width="400"/> 
<img src="./images/fabreeko_kit_build/78.jpg" width="400"/> 
<img src="./images/fabreeko_kit_build/79.jpg" width="400"/> 
<img src="./images/fabreeko_kit_build/80.jpg" width="400"/>

[Jump to Top](#top)

### Hotend Electronics
- Locate the hotend heater cartridge, thermistor, and clip. 

<img src="./images/fabreeko_kit_build/81.jpg" width="500"/>

- Insert the **thermistor** into the small hole in the block right above the nozzle and run the wire through the channel built into the black **heat break**. 

<img src="./images/fabreeko_kit_build/84.jpg" width="400"/>

- Place the **heater cartridge** on the front of the block and run the wires through the same channel as the thermistor
- Secure it and the thermistor in place with the **metal clip** 

<img src="./images/fabreeko_kit_build/85.jpg" width="400"/>

[Jump to Top](#top)

### Heatbreak Fan

- Locate the **heatbreak fan**. 

<img src="./images/fabreeko_kit_build/86.jpg" width="600"/>

- Insert **M3 nuts** into these slots of the current assembly 

<img src="./images/fabreeko_kit_build/87.jpg" width="400"/>

- Using 2, **M3x20mm screws** in the top hole into the captive nuts

<img src="./images/fabreeko_kit_build/88.jpg" width="400"/>

- Use 2 **M2.5x12mm** screws in the bottom holes to secure the fan to the heat break.  These screw will cut into the metal.

<img src="./images/fabreeko_kit_build/89.jpg" width="400"/>

[Jump to Top](#top)

### Y Tensioner
- Gather the [*TensionIdlerHolder*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerIdlerHolder.stl), [*TensionBody*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerBody.stl), [*TensionIdlerHolder*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerIdlerHolder.stl), and an idler.

<img src="./images/build_guide/y-tensioner-1.png" width="600"/>

- Insert the [*TensionIdlerHolder*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerIdlerHolder.stl) into the [*TensionBody*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerBody.stl) with the larger hole (to accommodate for the screw head) on the same side as the circular indentation on the body

<img src="./images/build_guide/y-tensioner-2.png" width="600"/>

- Make sure the orientation matches the following picture and insert the idler as shown.

<img src="./images/build_guide/y-tensioner-3.png" width="600"/>

- Keep the [*TensionIdlerHolder*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerIdlerHolder.stl)  in place with a **M3x20mm screw**

<img src="./images/build_guide/y-tensioner-4.png" width="600"/>

>[!CAUTION]
>Make sure the configuration of your [*TensionIdlerHolder*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerIdlerHolder.stl)  and [*TensionBody*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerBody.stl) are correct before proceeding.

[Jump to Top](#top)

### Y Axis

- Attach the linear rail of the Y axis to the inside of the Y Tensioner using 2, **M2x8mm screws** and 2, **M2 Nuts**.  Insert the screws in on the rail side.  If your Hex key/driver is long enough go through the holes on the opposite side to get them tight.

- Attach the linear rail of the Y axis to the X gantry as shown below, using 2, **M2x8mm screws** and 2, **M2 Nuts**

<img src="./images/fabreeko_kit_build/98.jpg" width="600"/>

- Attach the [*LinearRailReplacement*](../STLs/Gantry/Y/BBProV25fl_LinearRailReplacement.stl) on the other side of the Y axis in the same way 

<img src="./images/fabreeko_kit_build/99.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/100.jpg" width="600"/>

[Jump to Top](#top)

### Bowden Connector

- Depending on the choice made in item 2 of [Pre-Purchase and Print Decisions](#pre-purchase-and-print-decisions) install either:
  -  A Bowden coupler into [*YCar_Bam_SideB*](../STLs/Gantry/Carriage/Bambu/[a]_BBProV25fl_YCar_Bam_SideB.stl)
  
      <img src="./images/build_guide/bowden-coupler.png" width="75"/>
      
      <img src="./images/build_guide/bowden-coupler-1.png" width="400"/>

  
  - LDO Kit ECAS connector into [*YCar_Bam_SideA_ECAS-Tight*](../STLs/Gantry/Carriage/Bambu/ECAS%20version/[a]_BBProV25fl_YCar_Bam_SideB_ecas-Tight.stl) or [*YCar_Bam_SideA_ECAS-Looser*](../STLs/Gantry/Carriage/Bambu/ECAS%20version/[a]_BBProV25fl_YCar_Bam_SideB_ecas-Looser.stl)
         
      <img src="./images/build_guide/bowden-ecas.png" width="50"/>
      
      **Add Picture of EACS Connector installed **

[Jump to Top](#top)

### Y Axis GT2 Belt

>[!NOTE]
>When installing the GT2 belts, try to get them as tight as possible when you first install them. This will make it easier to get the right tension later. You can pre-cut the belts to 480mm (Y axis) and 290mm (X axis) and trim down when finishing, or you can run a much longer length (even the full uncut belt) to make sure you don't cut your belt too short. Either way you will have some leftover. 
 
- Run the belt through the Y stop, teeth facing toward the idler, and secure the first 3 teeth into the Y gantry

<img src="./images/fabreeko_kit_build/102.jpg" width="600"/>

<img src="./images/fabreeko_kit_build/103.jpg" width="280"/>

- Locate the a **NEMA11 motor** and **toothed pulley**. 

<img src="./images/fabreeko_kit_build/104.jpg" width="600"/>

- Install the **pulley** onto the motor shaft so there is about 7.5mm between the motor block and toothed section of the pulley. Also make sure one **grub screw** is on the flat face of the shaft.

<img src="./images/fabreeko_kit_build/105.jpg" width="220"/>
<img src="./images/build_guide/nema11-pulley-1.png" width="400">
<img src="./images/fabreeko_kit_build/106.jpg" width="400"/>

- Install the motor onto the X gantry in the position that is closest to the hotend using 4, **M2.5x8mm** screws. Align the wires from the motor as shown in the picture. There are openings on the opposite side of the gantry to allow allen keys to reach the screws.

<img src="./images/fabreeko_kit_build/108.jpg" width="500"/>

<img src="./images/build_guide/y-motor-1.png" width="500"/>

- Run the belt through the X gantry and around the pulley

<img src="./images/fabreeko_kit_build/109.jpg" width="600"/>

- If not already trimmed to the correct length, cut the belt so that it fits into the remaining teeth and secure in place with a zip tie

<img src="./images/fabreeko_kit_build/110.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/111.jpg" width="300"/>


[Jump to Top](#top)

### LDO Toolboard

- If building from an LDO kit locate the printed [*LDO Toolboard mount*](../STLs/Gantry/Y/LDO%20Kit%20-%20Toolboard%20Mount%20v1.stl) and install it by removing the top two screws from the **Y Carriage**, align  the mount as shown and replace the screws.  

- Use a pair of **M3(maybe M2.5) screws** to fasten the toolboard to the mount.

- Connect the Parts Fan, Hotend Fan, Hotend Thermistor, and Hotend Heater wires to the labeled ports on the board.

<img src="./images/build_guide/ldo-toolboard-1.png" width="400"/>

[Jump to Top](#top)

### X Axis GT2 Belt

>[!Caution]
>The belt ends will hang loose on the outside of the the Rail mounts for this step, belt will be attached with the tensioners later.

- Run the belt for the X axis with teeth facing up as seen below, through the slots in each of the rail mounts.

<img src="./images/build_guide/x-axis-1.png" width="600"/>

- Push the belt to make space for the pulley on the X axis motor (prepared identically to the Y axis motor)

<img src="./images/build_guide/x-axis-2.png" width="600"/>

- Install the X axis Motor using 4 **M2.5x8mm** screws inserted from the underside like the Y axis motor.

<img src="./images/build_guide/x-axis-3.png" width="600"/>

- Locate the two sets of [*X_PivotArm*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_pivotArm(2x).stl) and [*X_Pivot Clamp*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_XPivotClamp(2x).stl).  Loosely assemble the two pieces using 2 **M3x10 screws** and **M3 Nuts**.

<img src="./images/build_guide/x-axis-4.png" width="200"/>

- On the right side, paying attention the the orientation of the belt teeth, feed the belt between the two pieces and out through the opening nearest the screws on the [*X_Pivot Clamp*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_XPivotClamp(2x).stl).  Pull 5 or 6 teeth worth of belt through and tighten the 2 **M3x10 screws** to secure the belt.

<img src="./images/build_guide/x-axis-5.png" width="400"/>

- Attach the [*X_PivotArm*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_pivotArm(2x).stl) on the right side of the assembly using a **M3x20 screw** 

<img src="./images/build_guide/x-axis-6.png" width="400"/>

- Repeat feeding the belt through loosely on the left side, again paying attention the the orientation of the belt teeth.  Pull most of the remaining belt through.

<img src="./images/build_guide/x-axis-7.png" width="400"/>

- Attach the [*X_PivotArm*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_pivotArm(2x).stl) on the left side of the assembly using a **M3x20 screw** 

<img src="./images/build_guide/x-axis-8.png" width="400"/>

- Before applying tension, double check that the **M3x10 screws** on the right side tensioners are secure.

- Pull any remaining slack from the belt through the left side tensioner.  

- Move the gantry back and forth slightly on the x axis to be sure the belt is seated on the pulley.

- Give the belt another tug to get the last bit of slack on the left side and tighten the **M3x10 screws**.

- On both sides insert a **M3x20 screw** through the [*X_PivotArm*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_pivotArm(2x).stl) and X Gantry side into a **M3 nut**.  Note there is a space for the nut to seat into.

<img src="./images/build_guide/x-axis-9.png" width="400"/>

- Alternate between sides tightening the **M3x20 screw** until the belt is tight.

- Clip off the excess belt from the left side, leaving 5 or 6 teeth exposed to match the right side.

[Jump to Top](#top)

### Gantry Completion

- Before the gantry is attached it is helpful to pre-place a couple zip ties.  Install them in a VERY loose loop,  NOT cinch then down.  One zip tie goes inside the screen mount, pointed out by the key in the image below.  This will hold the wires coming from the X and Y Motors.

<img src="./images/build_guide/zip-tie-1.png" width="400"/>

- Install another zip tie, again in a VERY loose, in one of the holes to the opening on the right side of the screen mount.  This will hold the wires coming from the hotend.

<img src="./images/build_guide/zip-tie-2.png" width="400"/>

- Install the bowden tube in the carriage and install the locking clip behind the collet.  It might be easier to loosen the Y belt a little so you can get fingers in there.  Sometimes a pair of needle-nose can assist in installing the clip.  It is a little tight.  

<img src="./images/build_guide/bowden-install-1.png" width="400"/>

- Move the gantry on both the X and Y axis.  There should be smooth motion in both directions for the full range.  There should be no slippage of the belt on any pulleys. Adjust X or Y Tensioners as needed.

- On both Side A and Side B insert a total of 4 **M3 nuts** into the gantry mounting holes on the front of the pan.

<img src="./images/build_guide/gantry-mount-1.png" width="400"/>

- If needed, push the nuts completely into the holes using a M2.5 Hex key.  Then, use the key to make sure the nuts are aligned by pushing it through the frame openings.

<img src="./images/build_guide/gantry-mount-2.png" width="400"/>

- Slide the gantry over top of the frame, line up the upper gantry mounting holes with the top (Pointy end) holes on the gantry. Install a **M3x20 screw** into this hole on each side.  Do not tighten completely.

<img src="./images/build_guide/gantry-mount-3.png" width="400"/>

- Tilting the gantry to line up the other gantry mounting hole in the frame with the hole marked 45 install a second **M3x20 screw** in each side.
>[!NOTE]
>This is easy to change later if printing at 30 degrees, 45 gives more room to complete the build.

- Tighten down all 4 gantry mounting bolts.

- Put the bowden tube into the extruder, secure with a clip.

<img src="./images/build_guide/bowden-install-2.png" width="400"/>

- The gantry and frame assemblies are now complete and joined.

[Jump to Top](#top)

## Heated Bed

Having a heated bed is completely optional.  This step may vary depending on how the bed is sourced.  Three options will be listed out 1) No bed heater, 2) LDO Kit , 3) Fabreeko Kit.  Assemble the bed using the appropriate steps below and then set it aside to complete most of the wiring before putting the bed and belt in place and covering everything up.

>[!NOTE]
>Newer versions of the bed plates have holes and nut capture reliefs in each of the 4 wings the bed plate uses to rest in the tub.  These screws are used to level the bed if needed.  A **M3x20 screw** is placed through the hole pointing down, a **M3 nut** is spun on to the bottom of the screw.  The nut will fit into the capture relief and as the screw is turned to the right the nut moves up the screw lifting that section of the bed up.

### No Heated Bed

- Find the [[HT]_BBProV25fl_UnderbedOrBed](../STLs/ZBeltDrive/[HT]_BBProV25fl_UnderbedOrBed.stl) part. Flip it flat side up, insert a **M3x20 screw** into the hole in each of the 4 wings.  Spin a **M3 nut** on the bottom of each screw.

### LDO Kit Heated Bed

- Find the [[HT]_BBProV25fl_UnderbedOrBed](../STLs/ZBeltDrive/[HT]_BBProV25fl_UnderbedOrBed.stl) part. Flip it channel side up, insert a **M3x20 screw** into the hole in each of the 4 wings.  Spin a **M3 nut** on the bottom of each screw.

<img src="./images/printed_parts/ZBeltDrive/%5BHT%5D_BBProV25fl_UnderbedOrBed.jpg" width="500">

- Find the heatbed and heatbed thermistor from the electronics box.
- Thread the thermistor into the hole in the middle of the bottom side of the heatbed.
- Insert 3 **M3x20 screws** into the holes in the heatbed. Line up the screws to the raised posts on the [[HT]_BBProV25fl_UnderbedOrBed](../STLs/ZBeltDrive/[HT]_BBProV25fl_UnderbedOrBed.stl).  Guide the heatbed and thermistor wires along the channel before securing the two parts together with the screws and 3 **M3 nuts**.


### Fabreeko Kit Heated Bed
<img src="./images/fabreeko_kit_build/122.jpg" width="600"/>

- Stick the **bed heater** onto the **aluminum bed** like so
  
>[!CAUTION]
>Make sure you stick the pad onto the correct side. There should be no indents around the holes for the screw heads. 

<img src="./images/fabreeko_kit_build/123.jpg" width="400"/>

- Attach the **aluminum bed** using 3, **M3x10mm** to the [*UnderbedOrBed*](../STLs/ZBeltDrive/%5BHT%5D_BBProV25fl_UnderbedOrBed.stl) using 3, **M3 Nuts** on each screw as spacers

<img src="./images/fabreeko_kit_build/124.jpg" width="400"/>

- The bed will fit into the base like this:

<img src="./images/fabreeko_kit_build/125.jpg" width="400"/>


[Jump to Top](#top)

## Wiring
>[!CAUTION]
>There can be a lot of variation for running wires depending on how parts were sourced.  The most important piece is connecting the right component to the right connector on the board.

### Control Board and Axis Diagrams
This is the connection diagram for the recommended BTT SKR Mini E3 control board.  The pinout, except for the screen is the same for Marlin or Klipper and all provided configs assume this diagram is followed. 
>[!CAUTION]
>Take a moment to ensure the 3 jumpers are installed as noted on the diagram. 
<img src="./images/build_guide/skr_mini_e3_wiring.png" width="800"/>

In this image the Motors and Axis are labeled in color match to the pinout diagram above.
<img src="./images/build_guide/wiring-axis-map.png" width="800"/>

### Tub wiring

- The screen, Z axis motor, and extruder motor wires are already in the tub.  
- Connect the Z axis motor to the port labeled with the green Z.
- Connect the extruder motor to the port labeled with the pink E.
- The screen wire is going from the RS232 port on the screen to the TFT header on the board with the single wire in the bundle on the pin closest to the center of the printer.

### Toolhead wiring

- Kit builders will have an advantage during wiring as everything should be the correct length.  If self sourcing splicing, adapters, or extensions may be necessary to achieve necessary lengths.

- LDO builders have the easy way. Take the pre-made printhead cable, wrap the nylon cable sleeve around the bundle, connect the single connector end to the LDO toolboard, then feed the wires through the opening on the right side of the screen mount going through the zip tie.

- Fabreeko Kit builders will have a similar task but with separate sets of wires.

- Be sure to allow enough slack for the toolhead to move in all directions and that the cable sleeve enters into the tub to keep things neat.

<img src="./images/build_guide/zip-tie-2.png" width="400"/>

- Once all the toolhead wires are in go ahead and connect them to the control board using the diagram above.  This group should include 1) Hotend Heater, 2) Hotend thermistor, 3) Hotend fan, and 4) Parts cooling fan.

>[!NOTE]
>When connecting the Bed and Hotend heaters polarity/which wires goes in which spot does not matter.

### XY wiring

- Guide the wires form the X and Y motors through the loose zip tie attached to the inside of the screen mount.

<img src="./images/build_guide/zip-tie-1.png" width="400"/>

- Use a couple zip ties to join the wires together for a tidy look.

- Make sure the wire path allows for full unrestricted range of motion on the x axis and then snug up the zip tie holding the wires to the screen mount.

- Connect the X and Y motor cables to the proper ports on the control board.

- At this point everything but the heatbed heater and thermistor should be connected.  Verify the connections once more and do any cable management necessary.
>[!CAUTION]
>Try to keep all of the wires nice and low.  The belt will be just below the bottom of the curved channels on each side of the tub.  Avoid having any wires sticking up in the area to prevent them from being damaged or tangled with the belt while it moves.

### Heatbed Wiring

- The belt should still be flopped towards the back of the printer around the rear roller.

- Take the previously assembled heatbead and slid it into the inside of the belt with the square shaped wings pointing toward the rear of the printer.

<img src="./images/build_guide/heatbed-wiring-1.png" width="600"/>

- Guide the heatbed and bed thermistor wires around the side of the belt and connect them to the control board using the pinout diagram.  LDO Kit users will have a bed heater extension cable to connect as well.

<img src="./images/build_guide/heatbed-wiring-2.png" width="600"/>

[Jump to Top](#top)

## Belt and Bed

>[!NOTE]
>The Bed/Roller/Belt is a mildly tight fit, so there might be a need to stack, slide, twist or push things around a little bit.  Don't overthink the process as the roller and bed are guided to position with the belt around them.  Things should fall into place with a bit of wiggling.

- Grab the bed and move it towards the front of the printer letting the belt slide forward with it.

- Slide the second roller inside the belt and push it towards the front. Ensure the bed wires are below the roller.

<img src="./images/build_guide/belt-bed-1.png" width="600"/>

- Keep moving the bed forward and slightly up while guiding the roller bearings into the slots on the frame.

<img src="./images/build_guide/belt-bed-2.png" width="600"/>

- Line up the wings of the bed with the slots in the tub.

<img src="./images/build_guide/belt-bed-3.png" width="600"/>

- Push the roller forward on both sides while lowering the bed fully into the slots.

<img src="./images/build_guide/belt-bed-4.png" width="600"/>

- Once the bed is fully seated in the tub, on both sides push the roller forward and swing the tensioners into place cupping the bearings.

<img src="./images/build_guide/belt-bed-5.png" width="600"/>

- Evenly tighten both side tensioners until the belt is nice and tight.  If the belt is too long the **M8x80 bolts** can be swapped for longer length.

- Use the screws on the 4 wings to level the bed.  This can be finely tuned during calibrations with M3 keys. The bed should be as close as possible to the height of the top of the rollers. If it is too low the print belt will be floppy and print quality will suffer.  If the bed is too tall, long prints will cause a defect or even failure when coming off the end of the belt.

## Build Complete

Congratulations!!  Your Baby Belt Pro v2 should now be completely assembled!
>[!NOTE]
>The printer below is an LDO kit build with a couple options like filament sensor, pi, and alternative X/Y Cable routing.

<img src="./images/build_guide/complete-1.png" width="600"/>

<img src="./images/build_guide/complete-2.png" width="600"/>

<img src="./images/build_guide/complete-3.png" width="600"/>

<img src="./images/build_guide/complete-4.png" width="600"/>


[Jump to Top](#top)
