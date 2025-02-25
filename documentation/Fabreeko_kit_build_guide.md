# BabyBelt Pro V2 Physical Build Guide
BabyBelt Pro V2 by RobMink

Firmware guides by TheyCallMeZ aka BlueWyvern

Physical Build Guide by Brent Lieb and Dr. Mason McNair of the Plants X Tech Lab at Michigan State University

## Introduction
Hello! This is the build guide for the BabyBelt Pro V2 by RobMink. This guide was written with new builders in mind, so don't be intimidated if this is your first printer! The guide includes images when possible and assumes the user is building from the {Fabreeko build kit w/ link?}. 

How to read this guide:
 - *Printed Parts* will be in italics
 - **Kit Parts** will be bolded
 - Printed Parts will link to the specific file in the GitHub if clicked on
 - Printed part name prefixes include
   - [a] = accent color
   - [s] = needs supports
   - [HT] = should be printed in a strong heat tolerant material (PETG, ABS, ASA, PA) to avoid premature wearing

>[!TIP] 
>If you are not familiar with 3D Printers and their components, it is recommended that you leave the parts from the kit in their packaging until the guide instructs you to unpack them. This will help you keep track of them and avoid confusion later. 
## Tools Needed 
- 2.5mm Hexagonal Screwdriver
- 2mm Hexagonal Screwdriver
- 1.5mm Hexagonal Screwdriver
- Adjustable Wrench
- Wire Cutters
- Small Flathead Screwdriver
- Files (Good to have on hand if any parts print with slight imperfections)
- Scissors & Iron (For print belt)

## Printed Parts
### Printing Parts
Most of the parts of this kit can be printed out of normal PLA, allowing for a wide range of colors and stylistic choices! The parts that shouldn't be printed out of PLA are listed below. 

- [*NEMA17_ZGear*](../STLs/ZBeltDrive/[a]_BBProV25fl_Nema17_ZGear.stl)
- [*Roller_ZGear*](../STLs/ZBeltDrive/[a]_BBProV25fl_Roller_ZGear.stl)
- [*UnderbedOrBed*](../STLs/ZBeltDrive/[HT]_BBProV25fl_UnderbedOrBed.stl)

We recommend printing all parts with standard Voron style settings:

- Layer height: 0.2mm
- Extrusion width: 0.4mm, forced
- Infill percentage: 40%
- Infill type: grid, gyroid, honeycomb, triangle, or cubic
- Wall count: 4
- Solid top/bottom layers: 5

The design inspiration for the printer built for this guide was to make a printer out of "wood", "stone", and "glass" which is why we selected [Timberfill](https://fillamentum.com/collections/timberfill-filament/) as the primary filament, [Marble PLA](https://us.polymaker.com/products/panchroma-marble?variant=43612877946937) for the accent color, and [Fiberon PA6-GF](https://us.polymaker.com/products/fiberon-pa6-gf25) for the heat tolerant components. 

### Part List

Coming Soon!

>[!NOTE]
>If you are using a Revo-style Hot End and not the Bamboo nozzle that comes with the Fabreeko kit, then the gantry-carriage parts will be slightly different and can be found in the "Mods" folder.

## Kit Parts
This is what the box will look like when you receive it.  

<img src="./images/fabreeko_kit_build/1.jpg" width="600"/> 

This is all the parts that will be inside the box, spread out for visibility.  

![Baby Belt Kit Parts](./images/fabreeko_kit_build/2.jpg)


### Part List

Coming Soon! In the meantime [see the BOM here](https://docs.google.com/spreadsheets/d/19PbR3nFbQ4-eIOTU0kmoTl5-mHv_KsTnUdfFXekWg-I/edit?gid=0#gid=0)

## Physical Build
>[!NOTE]
>There are several times during this build when a component will be secured with multiple screws. It is generally recommended to NOT fully tighten a screw before the rest have been started, to make sure parts line up correctly and don't crack. 
### Base
> I mean I prefer treble but okay

Start by constructing the base. 
- Place an **M3 Nut** into the hole indicated by the arrow in [*Side-B*](../STLs/Frame/BBProV25fl_Side-B.stl)
<img src="./images/fabreeko_kit_build/3.jpg" width="600"/>

- Join the two sides together and place one **M3x20 screw** into the indicated hole in [*Side-A*](../STLs/Frame/BBProV25fl_Side-A.stl) and tighten. 
<img src="./images/fabreeko_kit_build/4.jpg" width="600"/>

The base should now look like this.

<img src="./images/fabreeko_kit_build/5.jpg" width="600"/>

### Power Switch and Jack
> Who's Jack? I don't know any Jack

Next install the **power jack** and **switch**. 

<img src="./images/fabreeko_kit_build/6.jpg" width="400"/>

- There are two circular holes next to each other on [*Side-B*](../STLs/Frame/BBProV25fl_Side-B.stl) of the printer. 
- The black rubber cover for the power jack is optional
- Secure the power jack with the supplied nut
- The power switch will lock into place once pushed in
  
<img src="./images/fabreeko_kit_build/7.jpg" width="400"/>

Here is what it should look like from the other side. 

<img src="./images/fabreeko_kit_build/8.jpg" width="400"/>

- Wire the two components as such
- Wrap in electrical tape or use heat-shrink tubing (not supplied) to insulate the connections and avoid accidental shorting
- We opted to solder the wires to the connectors for this build

<img src="./images/fabreeko_kit_build/9.jpg" width="400"/>

### Board
> All aboard!

- Install the SKR board by the power switch using 3, **M3x10mm**

<img src="./images/fabreeko_kit_build/10.jpg" width="500"/>

- Make sure the Micro-USB and MicroSD ports line up with the holes for them in the side panel

<img src="./images/fabreeko_kit_build/11.jpg" width="400"/>

- Connect the wires from the power switch & power jack to the SKR board as shown below
<img src="./images/fabreeko_kit_build/12.jpg" width="400"/>

<img src="./images/fabreeko_kit_build/13.jpg" width="400"/>

### Screen
> AAAAAAAAAAAHHHHHHHHH, oh sorry I thought you said scream

Next we will install the screen.

<img src="./images/fabreeko_kit_build/14.jpg" width="500"/>

- Use 4, **M3x10mm** to connect the screen to the [*Screenmount*](../STLs/Frame/%5Bs%5D_BBProV24fl_Screenmount.stl)

<img src="./images/fabreeko_kit_build/15.jpg" width="500"/>

Here is what it should look like. 

<img src="./images/fabreeko_kit_build/16.jpg" width="500"/>

- Attach the knob by pushing it onto the silver dial beneath the screen

<img src="./images/fabreeko_kit_build/17.jpg" width="500"/>

<img src="./images/fabreeko_kit_build/18.jpg" width="500"/>

- Plug the wire into the port labeled RS232 on the back of the screen using the black plastic connector that combines all the wires into one

<img src="./images/fabreeko_kit_build/19.jpg" width="300"/>

<img src="./images/fabreeko_kit_build/20.jpg" width="300"/>

- Attach the [*screen mount*](../STLs/Frame/%5Bs%5D_BBProV24fl_Screenmount.stl) to the frame by inserting one **M3 Nut** into the hole on the bottom of the frame, next to where it slots into the base 

<img src="./images/fabreeko_kit_build/21.jpg" width="500"/>

- Insert one **M3x20mm** into the hole on the side of the frame and use it to secure the [*screen mount*](../STLs/Frame/%5Bs%5D_BBProV24fl_Screenmount.stl)

<img src="./images/fabreeko_kit_build/22.jpg" width="500"/>

Next use 2, **M3x10mm screws** and 2, **M3 Nuts** to attach the screen mount with the two holes in the top. 

<img src="./images/fabreeko_kit_build/23.jpg" width="500"/>

<img src="./images/fabreeko_kit_build/24.jpg" width="500"/>

Tada! You have installed the screen!

### Extruder
> I barely know 'er!
- Attach the **gear** to the **NEMA 17 stepper motor** ensuring that the **grub screw** is tight against the flat part of the motor shaft
>[!NOTE]
> Make sure the gear fits properly with the rest of the gears in the extruder

<img src="./images/fabreeko_kit_build/25.jpg" width="300"/>

- Line up the motor with the mounting holes in the side of the frame

<img src="./images/fabreeko_kit_build/26.jpg" width="300"/>

- Attach the extruder to the outside of the frame with 4, **M3x10mm** screws

<img src="./images/fabreeko_kit_build/27.jpg" width="300"/>

### Belt Tensioner
> Consider loosening or removing after big holiday meals

Next we will build and install the belt tensioners. 
>[!NOTE]
>There are two of these, so do each step twice.

<img src="./images/fabreeko_kit_build/28.jpg" width="500"/>

- Fit a **M8 Nut** into [*PrintBelt_Pusher-A*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Pusher-A.stl)/[*PrintBelt_Pusher-B*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Pusher-B.stl)
- Secure it with a **M8x70mm** Screw 

<img src="./images/fabreeko_kit_build/29.jpg" width="300"/>
<img src="./images/fabreeko_kit_build/30.jpg" width="500"/>

- Fit another **M8 Nut** into the [*PrintBelt_Nut*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Nut(2x).stl) and line up with the hole on the [*PrintBelt_Frame-A*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Frame-A.stl)/[*PrintBelt_Frame-B*](../STLs/PrintBelt/%5Ba%5D_BBProV25fl_PrintBelt-Frame-B.stl).

<img src="./images/fabreeko_kit_build/31.jpg" width="500"/>
<img src="./images/fabreeko_kit_build/32.jpg" width="400"/>

Congratulations! You have built your tensioners! They should look like this.

<img src="./images/fabreeko_kit_build/33.jpg" width="500"/>

- There are spots for the tensioners to fit on either side of the base. 

<img src="./images/fabreeko_kit_build/34.jpg" width="500"/>

- Use a **M3x20mm screw** to install both of the tensioners with the curved portion facing downward. 

<img src="./images/fabreeko_kit_build/35.jpg" width="500"/>
<img src="./images/fabreeko_kit_build/36.jpg" width="500"/>

### Rollers
> Not the kind your grandma used to wear

- Wrap both [*rollers*](../STLs/ZBeltDrive/%5Ba%2Cs%5D_BBProV25fl_Roller%5Bx2%5D.stl) in electrical tape to maintain a better grip on the belt
- We recommend 2 wraps, with the 2nd one helping to hold the first in place 
- Place a **M8 Nut** into the side slot and then inserting a **M8x70 Hex Screw** with a **608ZZ bearing** fully into the [*roller*](../STLs/ZBeltDrive/%5Ba%2Cs%5D_BBProV25fl_Roller%5Bx2%5D.stl)

<img src="./images/fabreeko_kit_build/37.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/38.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/39.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/40.jpg" width="600"/>

- On one of the rollers, install the [*Roller_ZGear*](../STLs/ZBeltDrive/%5Ba%5D_BBProV25fl_Roller_ZGear.stl) on the screw, before the bearing
<img src="./images/fabreeko_kit_build/41.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/42.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/43.jpg" width="600"/>

### Print Belt
> Personally I prefer leopard

Follow the guide below to make the printbelt. <br>
https://docs.google.com/document/d/13pu9LH_nKmDJY-V2nZXMY8CHur7INB6-9V5sKlAuCuE/edit?usp=sharing

### Z Motor
> Which one? OOOOHHHH you mean like the axis

<img src="./images/fabreeko_kit_build/44.jpg" width="500"/>

- Attach the Z motor to the frame using 4, **M3x10mm screws** 

<img src="./images/fabreeko_kit_build/45.jpg" width="500"/>

- Make sure the wire port on the motor is facing towards the screen 

<img src="./images/fabreeko_kit_build/46.jpg" width="500"/>

- Install the [*NEMA 17_Z Gear*](../STLs/ZBeltDrive/%5Ba%5D_BBProV25fl_Nema17_ZGear.stl) onto the motor and then check to make sure it lines up with the gear on the [*Roller_ZGear*](../STLs/ZBeltDrive/%5Ba%5D_BBProV25fl_Roller_ZGear.stl) we installed on one of the rollers earlier

<img src="./images/fabreeko_kit_build/47.jpg" width="250"/>
<img src="./images/fabreeko_kit_build/48.jpg" width="500"/>

Improperly fitting vs Properly fitting gears

<img src="./images/fabreeko_kit_build/49.jpg" width="450"/>
<img src="./images/fabreeko_kit_build/50.jpg" width="500"/>

- Place a **M3 Nut** into the slot on the side of the frame right above the motor. Repeat on the other side

<img src="./images/fabreeko_kit_build/51.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/52.jpg" width="500"/>

- Use a **M3 Nut** and **M3x20mm** screw to attach the [*scraper*](../STLs/Frame/BBProV25fl_scraper.stl) in the same manner the screen mount was attached previously
- Use a **M3x10mm** to attach the scraper below the roller, securing into the nuts we previously inserted 

<img src="./images/fabreeko_kit_build/53.jpg" width="500"/>
<img src="./images/fabreeko_kit_build/54.jpg" width="450"/>

>[!NOTE]
>To complete this guide, we decided to leave the belt off during this step to make it easier to get clear images of the build as it progressed. Even once the printer is built, removing the scraper and replacing the belt is quick and easy. At this point, we suggest you install the Z roller with the belt so it looks like the picture on the right. 

<img src="./images/fabreeko_kit_build/55.jpg" width="500"/>
<img src="./images/fabreeko_kit_build/56.jpg" width="375"/>

### Y Stop
> Because we said so

- Insert the [*TensionIdlerHolder*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerIdlerHolder.stl) into the [*TensionBody*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerBody.stl) with the larger hole (to accommodate for the screw head) on the same side as the circular indentation on the body
- Make sure your orientation matches the following pictures
- Keep the [*TensionIdlerHolder*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerIdlerHolder.stl)  in place with a **M3x20mm screw**

<img src="./images/fabreeko_kit_build/57.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/58.jpg" width="400"/>

>[!CAUTION]
>Make sure the configuration of your [*TensionIdlerHolder*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerIdlerHolder.stl)  and [*TensionBody*](../STLs/Gantry/Y/%5Ba%5D_BBProV25fl_RockMonsterNo1YTentionerBody.stl) are correct before proceeding.

### Hotend Fan
> For the printer not you ;)

Attach the [*YCar_Bam_Fan*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_Fan.stl) to the [*YCar_Bam_BeltHolder*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_BeltHolder.stl) by inserting 2, **M3x10 screws** into the holes indicated in the first image, and through the whole in the second image
- Secure with **M3 Nuts** 

<img src="./images/fabreeko_kit_build/59.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/60.jpg" width="300"/>

Your part should now look like this. 

<img src="./images/fabreeko_kit_build/61.jpg" width="400"/>

- Orient the fan so that the air flow will move towards the air duct on the fan mount, then secure where indicated with zip ties 
<img src="./images/fabreeko_kit_build/62.jpg" width="400"/>

- Use a zip tie to secure the wires to the side of the carriage 

### Y Gantry
> well it sounds better than support, platform, or bracket

- Insert a **M3 Nut** into this slot on the [*YCar_Bam_Side-A*](../STLs/Gantry/Carriage/Bambu/%5Ba%5D_BBProV25fl_YCar_Bam_SideA.stl)

>[!CAUTION]
> We highly recommend lubricating **all** the linear rail bearings (visible in the photo below) using something like Mobil EP1 or EP2 grease prior to installation. Nero3D has a [great guide providing explanations and how-tos for this](https://youtu.be/UYvhYjkBFTY?si=frlAKNLAvElEVHFv) 

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

### Hotend
> Again talking about the printer, not yours

Next we will install the electrical components to the hotend. 

<img src="./images/fabreeko_kit_build/81.jpg" width="600"/>

- Insert the **thermistor** into the small hole in the block right above the nozzle

<img src="./images/fabreeko_kit_build/82.jpg" width="400"/>

The thermistor

<img src="./images/fabreeko_kit_build/83.jpg" width="200"/>

- Run the wire through the channel built into the black **heat break**. 

<img src="./images/fabreeko_kit_build/84.jpg" width="600"/>

- Place the **heater cartridge** on the front of the block and run the wires through the same channel as the thermistor
- Secure it and the thermistor in place with the **metal clip** 

<img src="./images/fabreeko_kit_build/85.jpg" width="600"/>

### Parts Fan
> Not to be confused with a whole fan. I mean it is a whole fan, but it's for cooling parts.

Time to install the **part cooling fan** to the front of the **hotend heatbreak**. 

<img src="./images/fabreeko_kit_build/86.jpg" width="600"/>

- Insert **M3 nuts** into these slots of the current assembly 

<img src="./images/fabreeko_kit_build/87.jpg" width="400"/>

- Using 2, **M3x20mm screws** on top and 2, **M2.5x12mm** screws on bottom to secure the hotend fan

<img src="./images/fabreeko_kit_build/88.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/89.jpg" width="384"/>

### X Gantry
> The breakup was hard on everyone

- Line up the **smooth idlers** with the indicated holes and secure in place with 2, **M3x20 screws**
<img src="(https://github.com/user-attachments/assets/e96993ae-0902-4b96-b806-d7710f0146ad" width="600"/>
<img src="https://github.com/user-attachments/assets/514bbd8f-24d2-4797-9810-8d411b986082" width="600"/>

- Your gantry should now look like this. The yellow boxes indicate where the gantry will be attached to the pair of **linear rails**
- Attach the gantry to the linear rails using 8 **M2x6 screws** (4 for each linear rail) 

<img src="https://github.com/user-attachments/assets/ce6b942d-3be2-42fb-a343-3d55f489169e" width="600"/>
<img src="https://github.com/user-attachments/assets/af106214-e4c4-4e9e-b750-12450851296f" width="600"/>

>[!CAUTION]
> Last chance to lubricate the remaining linear rails!

Here's what it should look like with the rails attached. 

<img src="https://github.com/user-attachments/assets/c467dfec-9481-4607-829e-a9c057e60abd" width="600"/>

>[!Note]
>Unfortunately, we missed taking photos installing the [*X_RailMount_Side-A*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_XrailMount-SideA.stl) and [*X_RailMount_Side-B*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_XrailMount-SideB.stl)
>Attach these printed parts using 4, **M2x8mm screws** and 4, **M2 Nuts**

<img src="./images/fabreeko_kit_build/95.png" width="600"/>

<img src="./images/fabreeko_kit_build/96.png" width="600"/>


### Combining Axes
> FUSION HA!
> <img src="./images/fabreeko_kit_build/draong-ball-z-fusion.gif"/>

<img src="./images/fabreeko_kit_build/97.jpg" width="600"/>

- Attach the linear rail of the Y axis to the X gantry as shown below, using 2, **M2x8mm screws** and 2, **M2 Nuts**

<img src="./images/fabreeko_kit_build/98.jpg" width="600"/>

- Attach the [*LinearRailReplacement*](../STLs/Gantry/Y/BBProV25fl_LinearRailReplacement.stl) on the other side of the Y axis in the same way 

<img src="./images/fabreeko_kit_build/99.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/100.jpg" width="600"/>

### GT2 Belts
> Gran Turismo 2 was the best one, not sure why people keep bringing up belts tho...

>[!NOTE]
>When installing the GT2 belts, try to get them as tight as possible when you first install them. This will make it easier to get the right tension later. You can pre-cut the belts to 480mm (Y axis) and 290mm (X axis) and trim down when finishing, or you can run a much longer length (even the full uncut belt) to make sure you don't cut your belt too short. Either way you will have some leftover. 
 
- Run the belt through the Y stop, teeth facing toward the idler, and secure the first 3 teeth into the Y gantry

<img src="./images/fabreeko_kit_build/101.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/102.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/103.jpg" width="280"/>

Next install the **Y motor** onto the X gantry. 

<img src="./images/fabreeko_kit_build/104.jpg" width="600"/>

- Install the **pulley** onto the motor shaft, making sure the **grub screw** is on the flat face of the shaft

<img src="./images/fabreeko_kit_build/105.jpg" width="220"/>
<img src="./images/fabreeko_kit_build/106.jpg" width="400"/>

- Install the motor onto the X gantry in the position that is closest to the hotend using 4, **M2.5x8mm** screws

<img src="./images/fabreeko_kit_build/107.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/108.jpg" width="600"/>

- Run the belt through the X gantry and around the pulley

<img src="./images/fabreeko_kit_build/109.jpg" width="600"/>

- Cut the belt so that it fits into the remaining teeth and secure in place with a zip tie

<img src="./images/fabreeko_kit_build/110.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/111.jpg" width="300"/>

>[!Caution]
>The printed parts shown for the X axis belt attachment steps are not the most current up-to-date versions, we will update the photos when we can. The main difference is that instead of mounting the GT2 belt directly to the X_RailMount_Side-A & X_RailMount_Side-B like in our instructions below you will attach the belt using the [*X_PivotArm*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_pivotArm(2x).stl) and [*X_Pivot Clamp*](../STLs/Gantry/X/%5Ba%5D_BBProV25fl_XPivotClamp(2x).stl)
>

- Run the belt for the X Axis as seen below, going through the lower hole on the right

<img src="./images/fabreeko_kit_build/112.jpg" width="600"/>

- Loop the belt around the outside, through the second hole, and then interlock the teeth and pull till it is firmly locked into the first hole (this can be a bit tricky and may take several tries to get it just right) 

<img src="./images/fabreeko_kit_build/113.jpg" width="400"/>

- Push the belt to make space for the pulley on the X axis motor (prepared identically to the Y axis motor)

<img src="./images/fabreeko_kit_build/114.jpg" width="600"/>
<img src="./images/fabreeko_kit_build/115.jpg" width="600"/>

- Attach the X belt tensioner on the left side of the assembly using a **M3x20 screw** 

<img src="./images/fabreeko_kit_build/116.jpg" width="600"/>

- Run the belt through the bottom slot and then through the top slot and secure with a zip tie

<img src="./images/fabreeko_kit_build/117.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/118.jpg" width="400"/>

- Insert a **M3x10mm screw** and **M3 Nut** to the hole in the top of the tensioner. This can be used to adjust the belt tension as needed. 

<img src="./images/fabreeko_kit_build/119.jpg" width="400"/>
<img src="./images/fabreeko_kit_build/120.jpg" width="380"/>
<img src="./images/fabreeko_kit_build/121.jpg" width="400"/>

### Heated Bed
> For those cold winter nights

<img src="./images/fabreeko_kit_build/122.jpg" width="600"/>

- Stick the **bed heater** onto the **aluminum bed** like so
  
>[!CAUTION]
>Make sure you stick the pad onto the correct side. There should be no indents around the holes for the screw heads. 

<img src="./images/fabreeko_kit_build/123.jpg" width="400"/>

- Attach the **aluminum bed** using 3, **M3x10mm** to the [*UnderbedOrBed*](../STLs/ZBeltDrive/%5BHT%5D_BBProV25fl_UnderbedOrBed.stl) using 3, **M3 Nuts** on each screw as spacers

<img src="./images/fabreeko_kit_build/124.jpg" width="400"/>

- The bed will fit into the base like this:

<img src="./images/fabreeko_kit_build/125.jpg" width="400"/>

### Wiring
> It's electric, Boogie woogie, woogie! Well, not yet but soon^TM^.

Let's get those wires connected!

>[!NOTE]
>This hole located on the right of the screen holder is where all wires from the outside of the base should be routed through. This includes the X and Y motors, both fans, the thermistor, and heater. <br>
><img src="./images/fabreeko_kit_build/126.jpg" width="400"/>

>[!TIP]
>Wire management can be difficult and can take some practice to get good at. The most important thing is making sure the wires are easily identifiable and are not in the way of any moving components. 

- Start by plugging in the motors
- There are 5 (slots) on the side of the board closest to the screen 

<img src="./images/fabreeko_kit_build/127.jpg" width="400"/>

- From left to right is the X motor, Y motor, Z motor, and Extruder. At this time you should also install the 3 red jumpers pictured in the bottom right

<img src="./images/fabreeko_kit_build/128.jpg" width="400"/>

- Plug both fans in. ***NOTE:*** *The wires in our kit were a bit short, and we had to extend them. This is now fixed in the kits so your wire colors likely will not match the photos.* The hotend fan is shown with blue and green wires, while the parts fan is shown with red and black 

<img src="./images/fabreeko_kit_build/129.jpg" width="400"/>

- Install the heater cartridge wires into the screw terminal located right next to them (orientation is not important)

<img src="./images/fabreeko_kit_build/130.jpg" width="400"/>

- Both thermistors are plugged in on the opposite side of the board. ***NOTE:*** *The wires in our kit were a bit short, and we had to extend them. This is now fixed in the kits so your wire colors likely will not match the photos.* The hotend thermistor is shown with blue and green wires, while the bed thermistor has red and black. 

<img src="./images/fabreeko_kit_build/131.jpg" width="400"/>

- The bed heater wires can be installed in the screw terminal next to where we installed the hotend (orientation does not matter)

<img src="./images/fabreeko_kit_build/132.jpg" width="400"/>

- Plug the screen wires into the freestanding pins located above the jumpers 

<img src="./images/fabreeko_kit_build/133.jpg" width="400"/>

### Print Belt
> The end of the road! I mean technically it's a loop so there is no end

Now that all the insides are done we can do final assembly of the belt. This is straightforward, but can be a bit tricky to make everything fit right. If things aren't fitting right or moving smoothly DO NOT force anything, try sanding at any pain points and try again.

<img src="./images/fabreeko_kit_build/56.jpg" width="600"/>

- Place the heatbed inside the belt, with the plastic prongs facing upwards and slot them into the frame

<img src="./images/fabreeko_kit_build/134.jpg" width="600"/>

- Slide the other roller into the belt and maneuver it into the curved slots in the frame
- Use the belt tensioners to get the belt tensioned just right

<img src="./images/fabreeko_kit_build/135.jpg" width="600"/>

### Finished Printer
- Attach the bowden tube from the extruder to the hotend and you have finished the physical build of your printer!

<img src="./images/fabreeko_kit_build/136.jpg" width="600"/>
