# Memory Exercises

## 1. Say you want to allocate an area in memory for storing any number in range 0-4,000,000,000.  This memory area will start at location 2fffeb96.  Give the addresses of each byte of memory that will be required.

  **2fffeb96, 2fffeb97, 2fffeb98, 2fffeb99**

## 2. You need to allocate an area in memory for storing an array of 30 bytes.  The first byte will have the value 0 stored in it, the second 1, the third 2, etc.  This memory area will at location 00100e.  Show what this area of memory looks like.

  **00100e<sub>16</sub>: 00<sub>16</sub><br>
  00100f<sub>16</sub>: 01<sub>16</sub><br>
  001010<sub>16</sub>: 02<sub>16</sub><br>
  001010<sub>16</sub>: 02<sub>16</sub><br>
  ...<br>
  00102a<sub>16</sub>: 1c<sub>16</sub><br>
  00102b<sub>16</sub>: 1d<sub>16</sub>**

## 3. We have shown how to write only the first sixteen addresses in hexadecimal in Figure 2.7.1.  How would you write the address of the seventeenth byte (byte number sixteen) in hexadecimal?

  **00000010<sub>16</sub>**
