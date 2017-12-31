# Unsigned Decimal to Binary Conversion Exercises

## 1. Convert 123<sub>10</sub> to binary.

  | i | d<sub>i</sub> | N<sub>i+1</sub> |
  |-|-|-|
  | 0 | 1 | 61 |
  | 1 | 1 | 30 |
  | 2 | 0 | 15 |
  | 3 | 1 | 7 |
  | 4 | 1 | 3 |
  | 5 | 1 | 1 |
  | 6 | 1 | 0 |

  **1111011<sub>2</sub>**

## 2. Convert the following unsigned decimal integers to 8-bit hexadecimal representation.
  <ol class="alpha-sub-list">
    <li> 100<sub>10</sub> = **64<sub>16</sub>**</li>
    <li> 125<sub>10</sub> = **7d<sub>16</sub>**</li>
    <li> 10<sub>10</sub> = **0a<sub>16</sub>**</li>
    <li> 88<sub>10</sub> = **58<sub>16</sub>**</li>
    <li> 255<sub>10</sub> = **ff<sub>16</sub>**</li>
    <li> 16<sub>10</sub> = **10<sub>16</sub>**</li>
    <li> 32<sub>10</sub> = **20<sub>16</sub>**</li>
    <li> 128<sub>10</sub> = **80<sub>16</sub>**</li>
  </ol>

## 3. Convert the following unsigned decimal integers to 16-bit hexadecimal representation:
  <ol class="alpha-sub-list">
    <li> 1024<sub>10</sub> = **0400<sub>16</sub>**</li>
    <li> 1000<sub>10</sub> = **03e8<sub>16</sub>**</li>
    <li> 32,768<sub>10</sub> = **8,000<sub>16</sub>**</li>
    <li> 32,767<sub>10</sub> = **7fff<sub>16</sub>**</li>
    <li> 256<sub>10</sub> = **0100<sub>16</sub>**</li>
    <li> 65,535<sub>10</sub> = **ffff<sub>16</sub>**</li>
    <li> 4,660<sub>10</sub> = **1,234<sub>16</sub>**</li>
    <li> 43,981<sub>10</sub> = **abcd<sub>16</sub>**</li>
  </ol>

## 4. Invert a code that would allow us to store letter grades with plus or minus.  That is, the grades A, A-, B+, B, B-, ..., D, D-, F.  How many bits are required for your code?

  | Grade | Binary | Hexadecimal |
  |-|-|-|-|
  | A | 0000 | 0 |
  | A- | 0001 | 1 |
  | B+ | 0010 | 2 |
  | B | 0011 | 3 |
  | B-| 0100 | 4 |
  | C+ | 0101 | 5 |
  | C | 0110 | 6 |
  | C- | 0111 | 7 |
  | D+ | 1000 | 8 |
  | D | 1001 | 9 |
  | D- | 1010 | a |
  | F | 1011 | b |

  **4 bits required**


  <style type="text/css">
    .alpha-sub-list {
      list-style-type: lower-alpha;
    }
  </style>
