Good, Good... let the speed flow through you...

This guide was written using the SKR mini E3 V3. For users flashing Klipper for the first time, please see the manufacturer's documentation [here](https://github.com/bigtreetech/BIGTREETECH-SKR-mini-E3/blob/master/firmware/V3.0/Klipper/README.md)
Additionally, it is recommended to use a pre-built Klipper image to have many of the Klipper related items preinstalled and preconfigured for you. We don't judge if you use Fluidd or Mainsail either 😉

---

# Where did you get your kit? / Which Kit do you have?

| Self Sourced |                                       Fabreeko                                        | 
|:------------|:-------------------------------------------------------------------------------------:|
| [![Self Sourced](../images/kit_sources/oshw-logo-outline.svg)](./kits/self-sourced/readme.md) | [![Fabreeko](../images/kit_sources/fabreeko_text_sm.webp)](./kits/fabreeko/readme.md) |

---

# Pre Built Firmware Images  
| Board          | Klipper Version | USB  | Serial |
|:---------------|:---------------:|:----:|:------:|
| SKR Mini E3 V3 | v0.12.0-416 | [klipper_USB.bin](../../Software/Firmware/klipper/binary/SKR%20Mini%20E3%20V3/klipper_USB.bin) | [klipper_uart_PA3_PA2_250000_baud.bin](../../Software/Firmware/klipper/binary/SKR%20Mini%20E3%20V3/klipper_uart_PA3_PA2_250000_baud.bin) |

### Alternate option

If you prefer flashing via **DFU mode**, instructions are here:  
🔗 [3dApothecary-xyz / SKR_Mini_E3_V3_DFU](https://github.com/3dApothecary-xyz/SKR_Mini_E3_V3_DFU)

> ⚠️ **Caution:** Using DFU mode incorrectly can overwrite the bootloader and disable SD card flashing. Proceed only if you are familiar with the process.

---

# 🧭 Y Offset Calibration Macro

This macro helps you fine-tune your **Y offset** for accurate bed alignment on belt or traditional 3D printers running **Klipper**.

## 📂 File Inclusion

In your `printer.cfg`, include this file: [Y_OFFSET.cfg](../../Software/Firmware/klipper/options/Y_OFFSET.cfg)

```ini
[include Y_OFFSET.cfg]
```


## ⚙️ Temporary Extruder Adjustment

Temporarily allow cold extrusion by setting:

```ini
[extruder]
min_temp: 0
```

## 🧰 Required Test Object

Load the calibration STL from: [95mm_wide_flat_test.stl](../../STLs/Tools/95mm_wide_flat_test.stl)

## 🧩 Preparation Steps

1. **Start with no offset:**

   ```ini
   [homing_override]
   ...
   SET_GCODE_OFFSET Y=0
   ```

2. **Ensure:**
   - No filament loaded  
   - Extruder and bed temperature at **0 °C**  
   - Empty toolhead  

3. Slice and load the **flat_test** object.

## 🧾 Calibration Process

While printing the test object:

- Run the macros from `Y_OFFSET.cfg`  
- Use the **Y_PLUS** and **Y_MINUS** macros to adjust until the nozzle just **barely touches the belt** (or bed surface).  
- Once satisfied, **update your `printer.cfg`** with the final Y offset value.

## 🔥 Final Tuning (with Heat and Filament)

1. Re-slice the test object using your filament’s normal printing temperatures.  
2. Load filament.  
3. Run the print again and fine-tune the **Y offset** using the macros.  
4. Update and save the tuned value in your `printer.cfg`.


## 🧮 Macro Reference

| Macro Name          | Adjustment   | Description            |
|---------------------|--------------|------------------------|
| `Y_PLUS1`           | +0.1 mm      | Coarse increase        |
| `Y_PLUS01`          | +0.01 mm     | Medium increase        |
| `Y_PLUS005`         | +0.005 mm    | Fine increase          |
| `Y_MINUS1`          | −0.1 mm      | Coarse decrease        |
| `Y_MINUS01`         | −0.01 mm     | Medium decrease        |
| `Y_MINUS005`        | −0.005 mm    | Fine decrease          |


## ✅ Summary

Once the optimal offset is found:
- Update `printer.cfg`
- Save and restart Klipper
- Enjoy consistent first-layer performance 🎯
