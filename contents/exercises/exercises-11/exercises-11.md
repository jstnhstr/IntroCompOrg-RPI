# Arithmetic Errors-Signed Integers Exercises

## 1. Use the "Decoder Ring" in Figure.3.6.2 to perform the following arithmetic. Indicate whether the result is "right" or "wrong."

  <ol class="alpha-sub-list">
    <li>1 + 3 = **4, right**</li>
    <li>3 + 4 = **7, right**</li>
    <li>5 + 6 = **3, wrong**</li>
    <li>(+1) + (+3) = **+2, wrong**</li>
    <li>(-3) - (+3) = **+2, wrong (V=1)**</li>
    <li>(+3) - (+4) = **-1, right**</li>
  </ol>

## 2. Add the following paris of 8-bit numbers (show in hexadecimal) and indicate whether your result is "right " or wrong. First treat them as unsigned values, then as signed values (stored in two's complement format).

  <ol class="alpha-sub-list">
    <li>55 + aa = **ff<sub>16</sub>, unsigned=right, signed=wrong**</li>
    <li>55 + f0 = **45<sub>16</sub>, unsigned=wrong, signed=right**</li>
    <li>80 + 7b = **fb<sub>16</sub>, unsigned=right, signed=right**</li>
    <li>63 + 7b = **de<sub>16</sub>, unsigned=right, signed=wrong**</li>
    <li>0f + ff = **0e<sub>16</sub>, unsigned=wrong, signed=right**</li>
    <li>80 + 80 = **00<sub>16</sub>, unsigned=wrong, signed=wrong**</li>
  </ol>

## 3. Add the following pairs of 16-bit numbers (shown in hexadecimal) and indicate whether your result is "right" or "wrong." First treat them as unsigned values, then as signed values (stored in two's complement format).

  <ol class="alpha-sub-list">
    <li>1234 + edcc = **0000<sub>16</sub>, unsigned=wrong, signed=right**</li>
    <li>1234 + fedc = **1110<sub>16</sub>, unsigned=wrong, signed=right**</li>
    <li>8000 + 8000 = **0000<sub>16</sub>, unsigned=wrong, signed=wrong**</li>
    <li>0400 + ffff = **03ff<sub>16</sub>, unsigned=wrong, signed=right**</li>
    <li>07d0 + 782f = **7fff<sub>16</sub>, unsigned=right, signed=right**</li>
    <li>8000 + ffff = **7fff<sub>16</sub>, unsigned=wrong, signed=wrong**</li>
  </ol>

<style type="text/css">
  .alpha-sub-list {
    list-style-type: lower-alpha;
  }
</style>
