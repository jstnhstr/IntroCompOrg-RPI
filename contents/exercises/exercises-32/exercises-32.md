# Fractional numbers

1. Using IEEE 754 32-bit format, what decimal number would the bit pattern 00000000<sub>16</sub> represent, ignoring the special case of "zero value".

00000000<sub>16</sub> = 00000000000000000000000000000000<sub>2</sub><br>
s = 0<sub>2</sub><br>
e = 0<sub>10</sub> - 127<sub>10</sub> = -127<sub>10</sub><br>
f = 0<sub>10</sub><br>
N = (-1<sub>10</sub>)<sup>0</sup> x 1.0<sub>10</sub> x 2<sub>10</sub><sup>-127</sup><br>
**N = 1.0<sub>10</sub> x 2<sub>10</sub><sup>-127</sup>**

2. Convert the following decimal numbers to 32-bit IEEE 754 format by hand:

a. 1.0<sub>10</sub> = 1.0<sub>2</sub> = (-1<sub>10</sub>)<sup>0</sup> x1.00000000000000000000000<sub>2</sub> x 2<sub>10</sub><sup>0</sup><br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = 0<sub>10</sub> + 127<sub>10</sub> = 127<sub>10</sub> = 01111111<sub>2</sub><br>
f = 00000000000000000000000<sub>2</sub> <br>
**00111111100000000000000000000000<sub>2</sub> = 3f800000<sub>16</sub>**.<br>

b. -0.1<sub>10</sub><br>
First, convert the decimal fraction 0.1<sub>10</sub> into the binary format<br>
0.1<sub>10</sub> x 2<sub>10</sub> = 0.2<sub>10</sub><br>
0.2<sub>10</sub> x 2<sub>10</sub> = 0.4<sub>10</sub><br>
0.4<sub>10</sub> x 2<sub>10</sub> = 0.8<sub>10</sub><br>
0.8<sub>10</sub> x 2<sub>10</sub> = 1.6<sub>10</sub><br>
0.6<sub>10</sub> x 2<sub>10</sub> = 1.2<sub>10</sub><br>
0.2<sub>10</sub> x 2<sub>10</sub> = 0.4<sub>10</sub><br>
The last multiplier repeats the second multiplier, so this is an infinite binary fraction. By using the integer parts of the products and the repeating bit pattern 0011<sub>2</sub>, -0.1<sub>10</sub> = -0.00011001100110011001100<sub>2</sub> = (-1<sub>10</sub>)<sup>1</sup> x 1.10011001100110011001100<sub>2</sub> x 2<sub>10</sub><sup>-4</sup><br>
s = 1<sub>2</sub><br>
e + 127<sub>10</sub> = -4<sub>10</sub> + 127<sub>10</sub> = 123<sub>10</sub> = 01111011<sub>2</sub><br>
f = 10011001100110011001100<sub>2</sub><br>
**10111101110011001100110011001100<sub>2</sub> = bdcccccc<sub>16</sub>**.<br>

c. 2016.0<sub>10</sub> = 11111100000.0<sub>2</sub> = (-1<sub>10</sub>)<sup>0</sup> x  1.11111000000000000000000<sub>2</sub> x 2<sub>10</sub><sup>10</sup><br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = 10<sub>10</sub> + 127<sub>10</sub> = 137<sub>10</sub> = 10001001<sub>2</sub><br>
f = 11111000000000000000000<sub>2</sub><br>
**01000100111111000000000000000000<sub>2</sub> = 44fc0000<sub>16</sub>**.<br>

d. 0.00390625<sub>10</sub><br>
First, convert the decimal fraction 0.00390625<sub>10</sub> into the binary format<br>
0.00390625<sub>10</sub> x 2<sub>10</sub> = 0.0078125<sub>10</sub><br>
0.0078125<sub>10</sub> x 2<sub>10</sub> = 0.015625<sub>10</sub><br>
0.015625<sub>10</sub> x 2<sub>10</sub> = 0.03125<sub>10</sub><br>
0.03125<sub>10</sub> x 2<sub>10</sub> = 0.0625<sub>10</sub><br>
0.0625<sub>10</sub> x 2<sub>10</sub> = 0.125<sub>10</sub><br>
0.125<sub>10</sub> x 2<sub>10</sub> = 0.25<sub>10</sub><br>
0.25<sub>10</sub> x 2<sub>10</sub> = 0.5<sub>10</sub><br>
0.5<sub>10</sub> x 2<sub>10</sub> = 1.0<sub>10</sub><br>
and using the integer parts of the products, the binary format of 0.00390625<sub>10</sub> is 0.00000001<sub>2</sub> = (-1<sub>10</sub>)<sup>0</sup> x 1.00000000000000000000000<sub>2</sub> x 2<sub>10</sub><sup>-8</sup>.<br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = -8<sub>10</sub> + 127<sub>10</sub> = 119<sub>10</sub> = 01110111<sub>2</sub><br>
f = 00000000000000000000000<sub>2</sub><br>
**00111011100000000000000000000000<sub>2</sub> = 3b800000<sub>16</sub>**.<br>

e. -3125.3125<sub>10</sub><br>
The integer part 3125<sub>10</sub> is 110000110101<sub>2</sub>.<br>
To convert the decimal fraction 0.3125 into the binary format<br>
0.3125<sub>10</sub> x 2<sub>10</sub> = 0.625<sub>10</sub><br>
0.625<sub>10</sub> x 2<sub>10</sub> = 1.25<sub>10</sub><br>
0.25<sub>10</sub> x 2<sub>10</sub> = 0.5<sub>10</sub><br>
0.5<sub>10</sub> x 2<sub>10</sub> = 1.0<sub>10</sub><br>
and using the integer parts of the products, 0.3125<sub>10</sub> is 0.0101<sub>2</sub>.<br>
-3125.3125<sub>10</sub> = -110000110101.0101<sub>2</sub> = (-1<sub>10</sub>)<sup>1</sup> x 1.10000110101010100000000<sub>2</sub> x 2<sub>10</sub><sup>11</sup>.<br>
s = 1<sub>2</sub><br>
e + 127<sub>10</sub> = 11<sub>10</sub> + 127<sub>10</sub> = 138<sub>10</sub> = 10001010<sub>2</sub><br>
f = 10000110101010100000000<sub>2</sub><br>
**11000101010000110101010100000000<sub>2</sub> = c5c35500<sub>16</sub>**.<br>

f. 0.33<sub>10</sub><br>
First, convert the decimal fraction 0.33 into the binary format<br>
0.33<sub>10</sub> x 2<sub>10</sub> = 0.66<sub>10</sub><br>
0.66<sub>10</sub> x 2<sub>10</sub> = 1.32<sub>10</sub><br>
0.32<sub>10</sub> x 2<sub>10</sub> = 0.64<sub>10</sub><br>
0.64<sub>10</sub> x 2<sub>10</sub> = 1.28<sub>10</sub><br>
0.28<sub>10</sub> x 2<sub>10</sub> = 0.56<sub>10</sub><br>
0.56<sub>10</sub> x 2<sub>10</sub> = 1.12<sub>10</sub><br>
0.12<sub>10</sub> x 2<sub>10</sub> = 0.24<sub>10</sub><br>
0.24<sub>10</sub> x 2<sub>10</sub> = 0.48<sub>10</sub><br>
0.48<sub>10</sub> x 2<sub>10</sub> = 0.96<sub>10</sub><br>
0.96<sub>10</sub> x 2<sub>10</sub> = 1.92<sub>10</sub><br>
0.92<sub>10</sub> x 2<sub>10</sub> = 1.84<sub>10</sub><br>
0.84<sub>10</sub> x 2<sub>10</sub> = 1.68<sub>10</sub><br>
0.68<sub>10</sub> x 2<sub>10</sub> = 1.36<sub>10</sub><br>
0.36<sub>10</sub> x 2<sub>10</sub> = 0.72<sub>10</sub><br>
0.72<sub>10</sub> x 2<sub>10</sub> = 1.44<sub>10</sub><br>
0.44<sub>10</sub> x 2<sub>10</sub> = 0.88<sub>10</sub><br>
0.88<sub>10</sub> x 2<sub>10</sub> = 1.76<sub>10</sub><br>
0.76<sub>10</sub> x 2<sub>10</sub> = 1.52<sub>10</sub><br>
0.52<sub>10</sub> x 2<sub>10</sub> = 1.04<sub>10</sub><br>
0.04<sub>10</sub> x 2<sub>10</sub> = 0.08<sub>10</sub><br>
0.08<sub>10</sub> x 2<sub>10</sub> = 0.16<sub>10</sub><br>
0.16<sub>10</sub> x 2<sub>10</sub> = 0.32<sub>10</sub><br>
0.32<sub>10</sub> x 2<sub>10</sub> = 0.64<sub>10</sub><br>
The last multiplier repeats the third multiplier 0.32, so this is an infinite binary fraction.<br>
By using the integer parts of the products and the repeating bit pattern 01010001111010111000<sub>2</sub>, 0.33<sub>10</sub> = 0.0101010001111010111000010<sub>2</sub> = (-1<sub>10</sub>)<sup>0</sup> x 1.01010001111010111000010<sub>2</sub> x 2<sub>10</sub><sup>-2</sup>.<br>
s = 0<br>
e + 127<sub>10</sub> = -2<sub>10</sub> + 127<sub>10</sub> = 125<sub>10</sub> = 01111101<sub>2</sub><br>
f = 01010001111010111000010<sub>2</sub><br>
**00111110101010001111010111000010<sub>2</sub> = 3ea8f5c2<sub>16</sub>**.<br>

g. -0.67<sub>10</sub><br>
First, convert the decimal fraction 0.67 into the binary format<br>
0.67<sub>10</sub> x 2<sub>10</sub> = 1.34<sub>10</sub><br>
0.34<sub>10</sub> x 2<sub>10</sub> = 0.68<sub>10</sub><br>
0.68<sub>10</sub> x 2<sub>10</sub> = 1.36<sub>10</sub><br>
0.36<sub>10</sub> x 2<sub>10</sub> = 0.72<sub>10</sub><br>
0.72<sub>10</sub> x 2<sub>10</sub> = 1.44<sub>10</sub><br>
0.44<sub>10</sub> x 2<sub>10</sub> = 0.88<sub>10</sub><br>
0.88<sub>10</sub> x 2<sub>10</sub> = 1.76<sub>10</sub><br>
0.76<sub>10</sub> x 2<sub>10</sub> = 1.52<sub>10</sub><br>
0.52<sub>10</sub> x 2<sub>10</sub> = 1.04<sub>10</sub><br>
0.04<sub>10</sub> x 2<sub>10</sub> = 0.08<sub>10</sub><br>
0.08<sub>10</sub> x 2<sub>10</sub> = 0.16<sub>10</sub><br>
0.16<sub>10</sub> x 2<sub>10</sub> = 0.32<sub>10</sub><br>
0.64<sub>10</sub> x 2<sub>10</sub> = 1.28<sub>10</sub><br>
0.28<sub>10</sub> x 2<sub>10</sub> = 0.56<sub>10</sub><br>
0.56<sub>10</sub> x 2<sub>10</sub> = 1.12<sub>10</sub><br>
0.12<sub>10</sub> x 2<sub>10</sub> = 0.24<sub>10</sub><br>
0.24<sub>10</sub> x 2<sub>10</sub> = 0.48<sub>10</sub><br>
0.48<sub>10</sub> x 2<sub>10</sub> = 0.96<sub>10</sub><br>
0.96<sub>10</sub> x 2<sub>10</sub> = 1.92<sub>10</sub><br>
0.92<sub>10</sub> x 2<sub>10</sub> = 1.84<sub>10</sub><br>
0.84<sub>10</sub> x 2<sub>10</sub> = 1.68<sub>10</sub><br>
0.68<sub>10</sub> x 2<sub>10</sub> = 1.36<sub>10</sub><br>
The last multiplier repeats the third multiplier 0.68, so this is an infinite binary fraction.<br>
By using the integer parts of the products and the repeating pattern 1010111000101000111<sub>2</sub>, -0.67<sub>10</sub> = -0.101010111000101000111<sub>2</sub> = (-1<sub>10</sub>)<sup>1</sup> x 1.01010111000101000111101<sub>2</sub> x 2<sub>10</sub><sup>-1</sup>.<br>
s = 1<sub>2</sub><br>
e + 127<sub>10</sub> = -1<sub>10</sub> + 127<sub>10</sub> = 01111110<sub>2</sub><br>
f = 01010111000101000111101<sub>2</sub><br>
**10111111001010111000101000111101<sub>2</sub> = bf2b8a3d<sub>16</sub>**.<br>

h. 3.14<sub>10</sub><br>
The integer part 3<sub>10</sub> = 11<sub>2</sub>.<br>
Then, convert the decimal fraction 0.14 into the binary format<br>
0.14<sub>10</sub> x 2<sub>10</sub> = 0.28<sub>10</sub><br>
0.28<sub>10</sub> x 2<sub>10</sub> = 0.56<sub>10</sub><br>
0.56<sub>10</sub> x 2<sub>10</sub> = 1.12<sub>10</sub><br>
0.12<sub>10</sub> x 2<sub>10</sub> = 0.24<sub>10</sub><br>
0.24<sub>10</sub> x 2<sub>10</sub> = 0.48<sub>10</sub><br>
0.48<sub>10</sub> x 2<sub>10</sub> = 0.96<sub>10</sub><br>
0.96<sub>10</sub> x 2<sub>10</sub> = 1.92<sub>10</sub><br>
0.92<sub>10</sub> x 2<sub>10</sub> = 1.84<sub>10</sub><br>
0.84<sub>10</sub> x 2<sub>10</sub> = 1.68<sub>10</sub><br>
0.68<sub>10</sub> x 2<sub>10</sub> = 1.36<sub>10</sub><br>
0.36<sub>10</sub> x 2<sub>10</sub> = 0.72<sub>10</sub><br>
0.72<sub>10</sub> x 2<sub>10</sub> = 1.44<sub>10</sub><br>
0.44<sub>10</sub> x 2<sub>10</sub> = 0.88<sub>10</sub><br>
0.88<sub>10</sub> x 2<sub>10</sub> = 1.76<sub>10</sub><br>
0.76<sub>10</sub> x 2<sub>10</sub> = 1.52<sub>10</sub><br>
0.52<sub>10</sub> x 2<sub>10</sub> = 1.04<sub>10</sub><br>
0.04<sub>10</sub> x 2<sub>10</sub> = 0.08<sub>10</sub><br>
0.08<sub>10</sub> x 2<sub>10</sub> = 0.16<sub>10</sub><br>
0.16<sub>10</sub> x 2<sub>10</sub> = 0.32<sub>10</sub><br>
0.32<sub>10</sub> x 2<sub>10</sub> = 0.64<sub>10</sub><br>
0.64<sub>10</sub> x 2<sub>10</sub> = 1.28<sub>10</sub><br>
0.28<sub>10</sub> x 2<sub>10</sub> = 0.56<sub>10</sub><br>
The last multiplier repeats the second multiplier 0.28<sub>10</sub>, so this is an infinite binary fraction.<br>
By using the integer parts of the products and the repeating pattern 1000111101011100001<sub>2</sub>, 3.14<sub>10</sub> = 11.001000111101011100001<sub>2</sub> = (-1<sub>10</sub>)<sup>0</sup> x 1.10010001111010111000010<sub>2</sub> x 2<sub>10</sub><sup>1</sup>.<br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = 1<sub>10</sub> + 127<sub>10</sub> = 128<sub>10</sub> = 10000000<sub>2</sub><br>
f = 10010001111010111000010<sub>2</sub><br>
**01000000010010001111010111000010<sub>2</sub> = 4048f5c2<sub>16</sub>**.<br>

3. Convert the following hexadecimal numbers to decimal by hand using the 32-bit IEEE 754 format:

a. 40000000<sub>16</sub><br>
40000000<sub>16</sub> = 01000000000000000000000000000000<br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = 10000000<sub>2</sub> = 128<sub>10</sub><br>
e = 1<sub>10</sub><br>
f = 0000000000000000000000<sub>2</sub><br>
(-1<sub>10</sub>)<sup>0</sup> x 1.0000000000000000000000<sub>2</sub> x 2<sub>10</sub><sup>1</sup> = 10.0<sub>2</sub> = **2.0<sub>10</sub>**.<br>

b. bf800000<sub>16</sub><br>
bf800000<sub>16</sub> = 10111111100000000000000000000000<sub>2</sub><br>
s = 1<sub>2</sub><br>
e + 127<sub>10</sub> = 01111111<sub>2</sub> = 127<sub>10</sub><br>
e = 0<sub>10</sub><br>
f = 00000000000000000000000<sub>2</sub><br>
(-1<sub>10</sub>)<sup>1</sup> x 1.00000000000000000000000 x 2<sub>10</sub><sup>0</sup> = -1.0<sub>2</sub> = **-1.0<sub>10</sub>**<br>

c. 3d800000<sub>16</sub><br>
3d800000<sub>16</sub> = 00111101100000000000000000000000<sub>2</sub><br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = 01111011<sub>2</sub> = 123<sub>10</sub><br>
e = -4<sub>10</sub><br>
f = 00000000000000000000000<sub>2</sub><br>
(-1<sub>10</sub>)<sup>0</sup> x 1.00000000000000000000000 x 2<sub>10</sub><sup>-4</sup> = 0.0001<sub>2</sub> = **0.625<sub>10</sub>**.<br>

d. c1804000<sub>16</sub><br>
c1804000<sub>16</sub> = 11000001100000000100000000000000<sub>2</sub><br>
s = 1<sub>2</sub><br>
e + 127<sub>10</sub> = 10000011<sub>2</sub> = 131<sub>10</sub><br>
e = 4<sub>10</sub><br>
f = 00000000100000000000000<sub>2</sub><br>
(-1<sub>10</sub>)<sup>1</sup> x 1.00000000100000000000000 x 2<sub>10</sub><sup>4</sup> = -10000.00001<sub>2</sub> = **-16.03125<sub>10</sub>**.<br>

e. 42c81000<sub>16</sub><br>
42c81000<sub>16</sub> = 01000010110010000001000000000000<sub>2</sub><br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = 10000101<sub>2</sub> = 133<sub>10</sub><br>
e = 6<sub>10</sub><br>
f = 10010000001000000000000<sub>2</sub><br>
(-1<sub>10</sub>)<sup>0</sup> x 1.10010000001000000000000 x 2<sub>10</sub><sup>6</sup> = 1100100.00001<sub>2</sub> = **100.03125<sub>10</sub>**.<br>

f. 3f99999a<sub>16</sub><br>
3f99999a<sub>16</sub> = 00111111100110011001100110011010<sub>2</sub><br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = 01111111<sub>2</sub> = 127<sub>10</sub><br>
e = 0<sub>10</sub><br>
f = 00110011001100110011010<sub>2</sub><br>
(-1<sub>10</sub>)<sup>0</sup> x 1.00110011001100110011010<sub>2</sub> x 2<sub>10</sub><sup>0</sup><br>
= 1<sub>10</sub> + 1/8<sub>10</sub> + 1/16<sub>10</sub> + 1/128<sub>10</sub> + 1/256<sub>10</sub> + 1/2048<sub>10</sub> + 1/4096<sub>10</sub> + 1/32,768<sub>10</sub> + 1/65,536<sub>10</sub> + 1/524,288<sub>10</sub> + 1/1,048,576<sub>10</sub> + 1/4,194,304<sub>10</sub><br>
= 1<sub>10</sub> + (524,288<sub>10</sub> + 262,144<sub>10</sub> + 32,768<sub>10</sub> + 16,384<sub>10</sub> + 2,048<sub>10</sub> + 1,024<sub>10</sub> + 128<sub>10</sub> + 64<sub>10</sub> + 8<sub>10</sub> + 4<sub>10</sub> + 1<sub>10</sub>)/4,194,304<sub>10</sub> = **1<sub>10</sub> + 838,861/4,194,304<sub>10</sub> = 1.2000000477<sub>10</sub>**.<br>

g. 42f6e666<sub>16</sub><br>
42f6e666<sub>16</sub> = 01000010111101101110011001100110<sub>2</sub><br>
s = 0<sub>2</sub><br>
e + 127<sub>10</sub> = 10000101<sub>2</sub> = 133<sub>10</sub><br>
e = 6<sub>10</sub><br>
f = 11101101110011001100110<sub>2</sub><br>
(-1<sub>10</sub>)<sup>0</sup> x 1.11101101110011001100110<sub>2</sub> x 2<sub>10</sub><sup>6</sup><br>
= 01111011.01110011001100110<sub>2</sub> = 123<sub>10</sub> + 1/4<sub>10</sub> + 1/8<sub>10</sub> + 1/16<sub>10</sub> + 1/128<sub>10</sub> + 1/256<sub>10</sub> + 1/2048<sub>10</sub> + 1/4096<sub>10</sub> + 1/32,768<sub>10</sub> + 1/65,536<sub>10</sub> = 123<sub>10</sub> + (16,384<sub>10</sub> + 8,192<sub>10</sub> + 4,096<sub>10</sub> + 512<sub>10</sub> + 256<sub>10</sub> + 32<sub>10</sub> + 16<sub>10</sub> + 2<sub>10</sub> + 1<sub>10</sub>) / 65,536<sub>10</sub><br>
= **123<sub>10</sub> + 29,491/65,536<sub>10</sub> = 123.4499968482<sub>10</sub>**.<br>

h. c25948b4<sub>16</sub><br>
c25948b4<sub>16</sub> = 11000010010110010100100010110100<sub>2</sub><br>
s = 1<sub>2</sub><br>
e + 127<sub>10</sub> = 10000100<sub>2</sub> = 132<sub>10</sub><br>
e = 5<sub>10</sub><br>
f = 10110010100100010110100<sub>2</sub><br>
(-1<sub>10</sub>)<sup>1</sup> x 1.10110010100100010110100<sub>2</sub> x 2<sub>10</sub><sup>5</sup><br>
= -110110.10110010100100010110100<sub>2</sub> = -102<sub>10</sub> + 1/4<sub>10</sub> + 1/16<sub>10</sub> + 1/128<sub>10</sub> + 1/2,048<sub>10</sub> + 1/8,192<sub>10</sub> + 1/16,384<sub>10</sub> + 1/65,536<sub>10</sub><br>
= -102<sub>10</sub> + (16,384<sub>10</sub> + 4,096<sub>10</sub> + 512<sub>10</sub> + 32<sub>10</sub> + 8<sub>10</sub> + 4<sub>10</sub> + 1<sub>10</sub>) / 65,536<sub>10</sub><br>
= **-102<sub>10</sub> + 21,037/65,536<sub>10</sub> = -102.3209991455<sub>10</sub>**.<br>
