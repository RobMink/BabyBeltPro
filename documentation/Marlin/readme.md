# Programming/Tuning

>[!NOTE]
>This guide is pretty old but should still work for the most part.

The default build is Marlin, but Klipper is great!  A full klipper guide is TODO

For Marlin, download the pre-compiled firmware file that matches your situation.  [Marlin Firmware](/Software/Firmware/Marlin/) rename the file to firmware.bin and stick it on a FAT32 formatted MicroSD card  (Note that FAT32 format only supports 32 GB and smaller microSD cards or partitions on a bigger card smaller than 32GB.  If this is confusing find a SD card 16 GB or smaller and try that.

Stick the card into the printer main board on the side, then power up the printer by plugging it in and flipping the switch.  If all goes well a little blinking red light on the board will flash rapidly, the screen will turn on and go “No Printer Connected” in the upper right.

After 30 seconds or so the red light will change, the screen should now say BabyBelt Pro with the “No Printer Connected” prompt gone.


## TroubleShooting Flashing the Firmware
	If you don't get any picture on the screen but you get a red light on the main board, verify the screen is plugged in correctly. 
	If you get Ender3 on the screen and no “No Printer Connected” you did not flash.  Check the SD card for a firmware.cur file.  If you still have firmware.bin try formatting the card or a different card, then turn the printer off, install the card, power up and try again.
	


## Testing and Tune
Home your printer using the screen.  You should get a clean move Left, then down, then the belt will jiggle.
 If using a kit you should not need to adjust the motor currents, directions, or TMC bump sensitivity.  It is still strongly recommended to verify the motors do not get too warm when they are active and adjust as needed using the current adjustment in the menu.  Same with the Sensorless homing settings.  255 is most sensitive for homing, 0 is least.

Warm up the hot end and make sure the fan on the heatsink spins.  If it does not turn on immediately after 50 degrees turn off the printer and check your fan wiring.  No hot end fan can melt your printer.

After the warm up, see if the printer will push filament by loading and running the extruder.  

Test the parts cooling fan.

It is always a good idea to tune your extruder.  The default firmware is set up for a BMG, but it should be considered a good ball park if you want to get high quality prints.  
https://ellis3dp.com/Print-Tuning-Guide/articles/extruder_calibration.html



I would also recommend a PID tune.
https://marlinfw.org/docs/gcode/M303.html

On a belt printer the first lawyer squish is set with the Y axis, not the Z axis.  Because the printer is set to several gantry angles if your Y home is too aggressive the gantry can flex a little when homing causing your first layer to be too squished.  This can be offset by adjusting the sensitivity on the Y axis as well as setting an offset to your start Gcode.

You should be ready to push plastic with a test print now!


Default settings:

X steps 100
Y steps 100
Z steps 364
E steps (depends on your extruder!  420 ish for a bondtech style)

As always, the discord channel is here to help.  Just ask and Rob or someone in the community will respond.  Also, feed back is super helpful.  Don’t be shy!  If you have a question it means that you are awesome and found a new opportunity to teach something, or the documentation is lacking(usually this).  I know this is a long manual and it is also possible that an error was made in my writing or your reading, so reread this and let us know!