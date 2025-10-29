# ideaMaker
ideaMaker is the slicer typically used by Rob.  It is hard to learn, but pretty powerful.
Download here- [ideaMaker](https://www.raise3d.com/ideamaker/)

# Printer Profiles and Slicing Templates
ideaMaker slicing has 3 parts similar to most slicers printer, filament, and print/template.  There is a "premium PLA 1.75mm" filament profile that works well with generic PLA.  To slice a model you will need to import a printer config (.printer file) and then import a template (.bin file) selecting your imported printer and usually the "Premium PLA" material.

## Klipper Macro dependent profiles and template
These profiles and template make use of the klipper macros PRINT_START and PRINT_END from [macros.cfg](../../Firmware/klipper/macros.cfg) to handle setting bed/ext temps, prime/purging the hotend, and validating gantry angle if detection switch is enabled. The macros.cfg file must be present in your klipper install or you should get a bunch of errors when it tries to print cold or a bunch of grinding sounds from your extruder.
- [BabyBelt-Pro-V2-45deg.printer](BabyBelt-Pro-V2-45deg.printer)
- [BabyBelt-Pro-V2-30deg.printer](BabyBelt-Pro-V2-30deg.printer)
- [BabyBelt-Pro-V2-PLA-klipper-macros.bin](BabyBelt-Pro-V2-PLA-klipper-macros.bin)
**If you change the angle in one of the printer profiles after importing it, be sure to update the Printer Type Abbreviation in the General tab as well.  There is no gcode placeholder for the belt gantry angle setting so the abbreviation filed is being used.

## General use profiles and templates
These profiles and templates are standalone and should mostly yeild a print attempt when used to generate a gcode file.  use the klipper files if you use klipper, the marlin file if you use marlin.

### Profiles
- [BB-Pro-30-export.printer](BB-Pro-30-export.printer)
- [BB_Pro-45-export.printer](BB_Pro-45-export.printer)

### Templates
- [bb pro pla-klipper-export.bin](<bb pro pla-klipper-export.bin>)
- [bb_pro_pla_MARLIN-export.bin](bb_pro_pla_MARLIN-export.bin)

