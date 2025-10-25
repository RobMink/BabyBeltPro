## 🧮 Solving for Max Height

**Preface:**  
The height of your bed affects the total usable Y-axis range of your printer.

Once your bed is leveled and your Y-offset is properly configured:

1. Temporarily increase your Y travel limit in `printer.cfg` to a higher value (e.g. `150`):
   ```
   [stepper_y]
   position_max: 150
   ```
2. Home all axes (`G28`).
3. Using **small incremental movements**, move the Y axis to its maximum safe position.
4. Record the final Y position before any mechanical limit or belt tension increase.
5. Update `[stepper_y].position_max` in your `printer.cfg` with this measured value.
6. Use the formulas below to calculate your `max_height`, and enter that value in your slicer settings.

---

### 30° Gantry

Let:  
- `C` = maximum Y travel (hypotenuse)  
- `A` = maximum vertical height  
- `B` = usable Z-axis range  

**Formula:**  
`A = C / 2`

or  
`max_height = y_max / 2`  

---

### 45° Gantry

Let:  
- `C` = maximum Y travel (hypotenuse)  
- `A` = `B` (equal vertical and horizontal components)

**Formula:**  
`A = B = C / √2`  

or  
`max_height = y_max / √2`  