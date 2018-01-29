# Arithmetic Errors-Unsigned Integers and Signed Integers Exercises

## 1. Develop an algorithm to convert signed decimal integers to 2's complement binary.

    If the integer is greater than or equal to zero,
      then convert binary to decimal and return.
    Otherwise,
      Subtract one.
      Flip binary bits.
      Return negative of binary converted to decimal.

## 2. Develop an algorithm to convert integers in 2's complement binary to signed decimal.

    If sign bit is zero,
      then convert binary to signed decimal.
    Otherwise,
      Subtract one.
      Flip binary bits.
      Return negative of binary converted to signed decimal.

## 3. The following 8-bit hexadecimal values are stored in two's complement code. What the equivalent signed decimal numbers?

  <ol class="alpha-sub-list">
    <li>55<sub>16</sub> = 0101 0101<sub>2</sub> = **+85<sub>10</sub>**</li>
    <li>ab<sub>16</sub> = 1010 1011<sub>2</sub> --reverse-2sc--> 0101 0101<sub>2</sub> = **-85<sub>10</sub>**</li>
    <li>f0<sub>16</sub> = 1111 0000<sub>2</sub> --reverse-2sc--> 0001 0000<sub>2</sub> = **-16<sub>10</sub>**</li>
    <li>0f<sub>16</sub> = 0000 1111<sub>2</sub> = **+15<sub>10</sub>**</li>
    <li>80<sub>16</sub> = 1000 0000<sub>2</sub> --reverse-2sc--> 1000 0000<sub>2</sub> = **-128<sub>10</sub>**</li>
    <li>63</sub>16</sub> = 0110 0011<sub>2</sub> = **+99<sub>10</sub>**</li>
    <li>7b<sub>16</sub> = 0111 1011<sub>2</sub> = **+123<sub>10</sub>**</li>
  </ol>

## 4. The following 16-bit hexadecimal values are stored in two's complement code. What are the equivalent signed decimal numbers?

  <ol class="alpha-sub-list">
    <li>1234<sub>16</sub> = 0001 0010 0011 0100<sub>2</sub> = **+4660<sub>10</sub>**</li>
    <li>8765<sub>10</sub><br>
      = 1000 0111 0110 0101<sub>2</sub><br>
      1000 0111 0110 0100<sub>2</sub> (Subtract 1)<br>
      0111 1000 1001 1011<sub>2</sub> (Flip bits)<br>
      = -789b<sub>16</sub> = **-30875<sub>10</sub>**<br></li>
    <li>5678<sub>16</sub> = 0101 0110 0111 1000<sub>2</sub> = **+22136<sub>10</sub>**</li>
    <li>edcc<sub>16</sub><br>
      = 1110 1101 1100 1100<sub>2</sub><br>
      1110 1101 1100 1011<sub>2</sub> (Subtract 1)<br>
      0000 0001 0010 0100<sub>2</sub> (Flip bits)<br>
      0124<sub>16</sub> = **-292<sub>10</sub>**<br></li>
    <li>fedc<sub>16</sub><br>
      = 1111 1110 1101 1100<sub>2</sub><br>
      1111 1110 1101 1011<sub>2</sub> (Subtract 1)<br>
      0000 0001 0010 0100<sub>2</sub> (Flip bits)<br>
      0124<sub>16</sub> = **-292<sub>10</sub>**<br></li>
    <li>07e0<sub>16</sub> = 0000 0111 1110 0000<sub>2</sub> = **+2016<sub>10</sub>**</li>
    <li>8000<sub>16</sub><br>
      = 1000 0000 0000 0000<sub>2</sub><br>
      0111 1111 1111 1111<sub>2</sub> (Subtract 1)<br>
      1000 0000 0000 0000<sub>2</sub> (Flip bits)<br>
      = **-32768<sub>10</sub>**<br></li>
    <li>7fff<sub>10</sub> = 0111 1111 1111 1111<sub>2</sub> = **+32767<sub>10</sub>**</li>
    <li>8001<sub>16</sub><br>
      = 1000 0000 0000 0001<sub>2</sub><br>
      1000 0000 0000 0000<sub>2</sub> (Subtract 1)<br>
      0111 1111 1111 1111<sub>2</sub> (Flip bits)<br>
      = 7fff<sub>16</sub> = **-32767<sub>10</sub>**<br></li>
  </ol>

## 5. Show how each of the following signed decimal integers would be stored in 8-bit two's complement code. Give your answer in hexadecimal.

  <ol class="alpha-sub-list">
    <li>+100 = 0110 0100<sub>2</sub> = **64<sub>16</sub>**</li>
    <li>-1 = 1111 1111<sub>2</sub> = **ff<sub>10</sub>**</li>
    <li>-10 = 1111 1111<sub>2</sub> = **f6<sub>16</sub>**</li>
    <li>+88 = 0101 1000<sub>2</sub> = **58<sub>16</sub>**</li>
    <li>-127 = 1000 0001<sub>2</sub> = **81<sub>16</sub>**</li>
    <li>-16 = 1111 0000<sub>2</sub> = **f0<sub>16</sub>**</li>
    <li>-32 = 110 0000<sub>2</sub> = **e0<sub>16</sub>**</li>
    <li>-128 = 1000 0000<sub>2</sub> = **80<sub>16</sub>**</li>
  </ol>

## 6. Show how each of the following signed, decimal integers would be stored in 6-bit two's complement format. Give your answer in hexadecimal.

  <ol class="alpha-sub-list">
    <li>+31693<sub>10</sub> = **7bcd<sub>16</sub>**</li>
    <li>-252<sub>10</sub> = 1111 1111 0000 0100<sub>2</sub> = **ff04<sub>16</sub>**</li>
    <li>+1024<sub>10</sub> = **0400<sub>16</sub>**</li>
    <li>-1024<sub>10</sub> = 1111 1100 0000 0000<sub>2</sub> = **fc00<sub>16</sub>**</li>
    <li>-1<sub>10</sub> = **ffff<sub>16</sub>**</li>
    <li>-32768<sub>10</sub> = **8000<sub>16</sub>**</li>
    <li>+32767<sub>10</sub> = 0111 1111 1111 1111<sub>2</sub> = **7ffff<sub>16</sub>**</li>
    <li>-256<sub>10</sub> = 1111 1111 0000 0000<sub>2</sub> = **ff00<sub>16</sub>**</li>
    <li>-32767<sub>10</sub> = 1000 0000 0000 0001<sub>2</sub> = **8001<sub>16</sub>**</li>
    <li>-128<sub>10</sub> = 1111 1111 1000 0000<sub>2</sub> = **ff80<sub>16</sub>**</li>
  </ol>



<style type="text/css">
  .alpha-sub-list {
    list-style-type: lower-alpha;
  }
</style>
