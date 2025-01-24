# This page is for issues that we have discovered and potential workarounds if available. 

- [Motors Turn in the Wrong Direction](#motors-turn-in-the-wrong-direction)  
- [Motors Won't turn in either direction](#motors-wont-turn-in-either-direction)  
- [KlipperScreen Issues](#klipperscreen-issues)  
- [External Resources](#external-resources)

## Motors Turn in the wrong direction

Klipper Solution:

```markdown
    Edit your printer.cfg on the machine and find the axis that is moving in the wrong direction 
    [stepper_x], [stepper_y], [stepper_z], [extruder]
    find the dir_pin: entry 
    If there is a ! remove it, if there is not a ! add it to the front of the pin assignment. This tells the Klipper firmware to invert the direction based on how the wires are run.
    !PC1 => PC1
    PC1 => !PC1  
```

Marlin Solution:

```markdown
    This is slightly trickier because it requires changing the physical pin order on your cable or recompiling the firmware
    If you are comfortable recompiling find the line in question that says
        #define INVERT_<axis>_DIR false (or true)
    and change its value
        #define INVERT_X_DIR true => #define INVERT_X_DIR false

    If you are not comfortable recompiling firmware, you can change the direction of your motor by changing it's wiring order. 
    Please refer to the documentation of your stepper motor to ensure you are performing this step correctly. 
    
    (De-pin/Re-pin the end that plugs into your board)
    If you are unsure how, please check the External Resources section for the Re-Pin JST Video
    If your motor is wired as such
    A1 A2 B1 B2
    Then simply swap A1 and A2 so it is wired as
    B2 B1 A2 A1
    and the motor direction will change.
```

## Motors won't turn in either direction

```markdown
    Your Coil wires are mixed up my dude.... 
    When referencing your motor's documentation they probably look something like this
    A1 B1 A2 B2
    Coil pairs need to be together like this
    A1 A2 B1 B2
```

## KlipperScreen Issues

### Emergency Stop on Left Menu Instead of Power Options while not printing  
This is an issue that has been found when using a pre-built image where Klipper / KlipperScreen / etc has been pre-installed. The solution is simply to install [KIAUH](https://github.com/dw-0/kiauh) and use it to remove and re-install KlipperScreen with the default options. 

## External Resources
[Re-Pin JST YouTube Video](https://www.youtube.com/watch?v=JPkvHr-mIdc)