# Using the TFT35-E3 on Klipper 

Please note that the TFT35-E3 is the stock screen that comes with the Fabreeko Kit  
As of this writing, you can simply uncomment / add 
```aiignore
[include options/BTT_TFT35.cfg]
```

to the top area of your printer.cfg 

For wiring, you just need to use the EXP Cable that comes with the screen and connect from EXP1 on the BTT SKR Mini E3 V3 to EXP3 on the BTT TFT35-E3  
No serial connection is required for this setup. If you want to add this to a already built / configured Klipperized Baby Belt, be sure to copy both "BTT_TFT35.cfg" **AND** "BTT_TFT35_menu.cfg"

You will need to change the mode of the screen from "Touch" to "Marlin".
Touch and HOLD your finger on the screen for 3 seconds.  Tap the icon labeled "Marlin", the screen will say Marlin Mode at the top.
To revert, repeat the process and tap the "Touch" icon.


Credit to Allen @West3D for getting this working!
