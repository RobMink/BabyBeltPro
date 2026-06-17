# Change Log

## 2026-06-20
 - BabyBeltPro v2.6
    - Changed from 3 MGN7H rails (2X 1Y) to 1 MGN9C(Y) and 1 MGN12C(X)
    - Removed 2mm screws (2.5s still needed for steppers and some hotend parts)
    - Added M3x6 BHCS (Y Gantry to MGN12 rail) and M3x30 SHCS (new X gantry to frame)
    - enhanced X gantry components for increased stability
        - X gantry now uses heatsets M3x4x5 (Voron style)
        - Backwards compatible with 2.5 BOM rails (mgn7H)
    - Improved hole and screw insertion patterns for easier installation on Y axis
    - Revised X/Y stepper mounting for easier install/maintenance
 - Added 2.6 and 2.6 to 2.5 diff BOM links
 - Updated build guide for 2.6 


## 2026-04-28
 - New profile for klipper FW and KiriMoto Slicer
 - Updated y-axis macros to include a -/+ 1mm move (community request)
 - New optional config to enable loop printing (M808)
 - Add M808/loop printing guide
 - New optional config to mask bed heater commands
 - New Slicer setup guide with KiriMoto instructions
 - Update main docs readme
 - Fix typo in build guide

## 2026-01-29
 - Documentation revamp
    - Added a Documentation Index to clean up main readme
    - Updated printed parts guide with roller recommendations
    - Removed print settings recommendations from anywhere outside of the printed parts guide.  If you find any let us know.
    - Added a new markdown format build guide.  This is a combination of the older Google Doc, the fabreeko kit guide, and community contributed updates based on the LDO kit
    - Added link to LDO/West3D Kit
    - Fixed printcepts page link
    - Ran a spell checker against new docs

### 2025-09-29  
- Added a markdown printer parts list similar to the old google doc

### 2025-08-25  

- Created this new fancy pants Change log! (and linked to it from the readme)
- Updated Bed/Underbed to the latest model field tested at RMRRF! Now with better adjustability and cable routing!  
    - 3x M3X16 SHCS should be used to have no threads protruding from the underbed.
    - 4x M3x20 SHCS - For Bed height adjustment
    - 7x M3 Nut
    - If for some reason you still need / want to use the old one you can download it [Here](https://github.com/RobMink/BabyBeltPro/blob/938c1f90842c4cdaf9e164276722ffa35ede7eaa/STLs/ZBeltDrive/%5BHT%5D_BBProV25fl_UnderbedOrBed.stl)
- Added **\*NEW\*** folder where applicable for 3MF Files for MMU Painted and/or AMS painted files (We will slowly be adding these over time)
- Formatted README.MD to be cleaner
- Added the "Printcepts Ethos" (Our Guiding principles)
- Added Links to Belt Slicers in Readme
- Added LDO Kit Marlin Firmware
- Added LDO Kit Toolhead Board Mount stl