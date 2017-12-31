# Mathematical Equivalence of Binary and Decimal Exercises

d<sub>n-1</sub> * r<sup>n-1</sup> + d<sub>n-2</sub> * r<sup>n-2</sup> + ... d<sub>1</sub> * r<sup>1</sup> + d<sub>0</sub> * r<sup>0</sup> _(Equation 2.3.3)_

## 1. Referring to Equation (2.3.3), what are the values of 4, n and each d<sub>i</sub> for:
  <ol class="alpha-sub-list">
    <li> 29458254<sub>10</sub> = **r = 10, n = 8, d<sub>7</sub> = 2, d<sub>6</sub> = 9, d<sub>5</sub> = 4, d<sub>4</sub> = 5, d<sub>3</sub> = 8, d<sub>2</sub> = 2, d<sub>1</sub> = 5, d<sub>0</sub> = 4**</li>
    <li> 29458254<sub>16</sub> = **r = 16, n = 8, d<sub>7</sub> = 2, d<sub>6</sub> = 9, d<sub>5</sub> = 4, d<sub>4</sub> = 5, d<sub>3</sub> = 8, d<sub>2</sub> = 2, d<sub>1</sub> = 5, d<sub>0</sub> = 4**</li>
  </ol>

## 2. Convert 1010 0101<sub>2</sub> to decimal.
  <ol class="equation-steps">
    <li> 1010 0101<sub>2</sub></li>
    <li> = 1 x 2<sup>7</sup> + ~~0 x 2<sup>6</sup>~~ + 1 x 2<sup>5</sup> + ~~0 x 2<sup>4</sup>~~ + ~~0 x 2<sup>3</sup>~~ + 1 x 2<sup>2</sup> + ~~0 x 2<sup>1</sup>~~ + 1 x 2<sup>0</sup></li>
    <li> = 2<sup>7</sup> + 2<sup>5</sup> + 2<sup>2</sup> + 2<sup>0</sup></li>
    <li> = 128 + 32 + 4 + 1</li>
    <li> = **165<sub>10</sub>**</li>
  </ol>

## 3. Convert the following 8-bit binary numbers to decimal by hand:
  <ol class="alpha-sub-list">
    <li> 1010 1010<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 1 x 2<sup>7</sup> + ~~0 x 2<sup>6</sup>~~ + 1 x 2<sup>5</sup> + ~~0 x 2<sup>4</sup>~~ + 1 x 2<sup>3</sup> + ~~0 x 2<sup>2</sup>~~ + 1 x 2<sup>1</sup> + ~~0 x 2<sup>0</sup>~~</li>
        <li> = 2<sup>7</sup> + 2<sup>5</sup> + 2<sup>3</sup> + 2<sup>1</sup></li>
        <li> = 128 + 32 + 8 + 2</li>
        <li> = **170<sub>10</sub>**</li>
      </ol>
    <li> 0101 0101<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = ~~0 x 2<sup>7</sup>~~ + 1 x 2<sup>6</sup> + ~~0 x 2<sup>5</sup>~~ + 1 x 2<sup>4</sup> + ~~0 x 2<sup>3</sup>~~ + 1 x 2<sup>2</sup> + ~~0 x 2<sup>1</sup>~~ + 1 x 2<sup>0</sup></li>
        <li> = 2<sup>6</sup> + 2<sup>4</sup> + 2<sup>2</sup> + 2<sup>0</sup></li>
        <li> = 64 + 16 + 4 + 1</li>
        <li> = **85<sub>10</sub>**</li>
      </ol>
    <li> 1111 0000<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 1 x (2<sup>7</sup> + 2<sup>6</sup> + 2<sup>5</sup> + 2<sup>4</sup>) + ~~0 x (2<sup>3</sup> + 2<sup>2</sup> + 2<sup>1</sup> + 2<sup>0</sup>)~~</li>
        <li> = 2<sup>7</sup> + 2<sup>6</sup> + 2<sup>5</sup> + 2<sup>4</sup></li>
        <li> = 128 + 64 + 32 + 16</li>
        <li> = **240<sub>10</sub>**</li>
      </ol>
    <li> 0000 1111<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = ~~0 x (2<sup>7</sup> + 2<sup>6</sup> + 2<sup>5</sup> + 2<sup>4</sup>)~~ + 1 x (2<sup>3</sup> + 2<sup>2</sup> + 2<sup>1</sup> + 2<sup>0</sup>)</li>
        <li> = 2<sup>3</sup> + 2<sup>2</sup> + 2<sup>1</sup> + 2<sup>0</sup></li>
        <li> = 8 + 4 + 2 + 1</li>
        <li> = **15<sub>10</sub>**</li>
      </ol>
    <li> 1000 0000<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 1 x 2<sup>7</sup> + 0 x (2<sup>6</sup> + 2<sup>5</sup> + 2<sup>4</sup> + 2<sup>3</sup> + 2<sup>2</sup> + 2<sup>1</sup> + 2<sup>0</sup>)</li>
        <li> = 2<sup>7</sup></li>
        <li> = **128<sub>10</sub>**</li>
      </ol>
    <li> 0110 0011<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = ~~0 x 2<sup>7</sup>~~ + 1 x 2<sup>6</sup> + 1 x 2<sup>5</sup> + ~~0 x 2<sup>4</sup>~~ + ~~0 x 2<sup>3</sup>~~ + ~~0 x 2<sup>2</sup>~~ + 1 x 2<sup>1</sup> + 1 x 2<sup>0</sup></li>
        <li> = 2<sup>6</sup> + 2<sup>5</sup> + 2<sup>1</sup> + 2<sup>0</sup></li>
        <li> = 64 + 32 + 2 + 1</li>
        <li> = **99<sub>10</sub>**</li>
      </ol>
    <li> 0111 1011<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = ~~0 x 2<sup>7</sup>~~ + 1 x 2<sup>6</sup> + 1 x 2<sup>5</sup> + 1 x 2<sup>4</sup> + 1 x 2<sup>3</sup> + ~~0 x 2<sup>2</sup>~~ + 1 x 2<sup>1</sup> + 1 x 2<sup>0</sup></li>
        <li> = 2<sup>6</sup> + 2<sup>5</sup> + 2<sup>4</sup> + 2<sup>3</sup> + 2<sup>2</sup> + 2<sup>0</sup></li>
        <li> = 64 + 32 + 16 + 8 + 2 + 1</li>
        <li> = **123<sub>10</sub>**</li>
      </ol>
    <li> 1111 1111<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = (1 x 2<sup>8</sup>) - 1</sup></li>
        <li> **255<sub>10</sub>**</li>
      </ol>
  </ol>

## 4. Convert the following 16-bit binary numbers to decimal by hand:
  <ol class="alpha-sub-list">
    <li> 1010 1011 1100 1101<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = abcd<sub>16</sub></li>
        <li> = 10 x 16<sup>3</sup> + 11 x 16<sup>2</sup> + 12 x 16<sup>1</sup> + 13 x 16<sup>0</sup></li>
        <li> = 40,960 + 2,816 + 192 + 13</li>
        <li> = **43981<sub>10</sub>**</li>
      </ol>
    <li> 0001 0011 0011 0100<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 1334<sub>16</sub></li>
        <li> = 1 x 16<sup>3</sup> + 3 x 16<sup>2</sup> + 3 x 16<sup>1</sup> + 4 x 16<sup>0</sup></li>
        <li> = 4,096 + 768 + 48 + 4</li>
        <li> = **4,916<sub>10</sub>**</li>
      </ol>
    <li> 1111 1110 1101 1100<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = fedc<sub>16</sub></li>
        <li> = 15 x 16<sup>3</sup> + 14 x 16<sup>2</sup> + 13 x 16<sup>1</sup> + 12 x 16<sup>0</sup></li>
        <li> = 61,440 + 3,584 + 208 + 12</li>
        <li> = **65,244<sub>10</sub>**</li>
      </ol>
    <li> 0000 0111 1101 1111<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 07df<sub>16</sub></li>
        <li> = ~~0 x 16<sup>3</sup>~~ + 7 x 16<sup>2</sup> + 13 x 16<sup>1</sup> + 15 x 16<sup>0</sup></li>
        <li> = 1,792 + 208 + 15</li>
        <li> = **2,015<sub>10</sub>**</li>
      </ol>
    <li> 1000 0000 0000 0000<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 8000<sub>16</sub></li>
        <li> = 8 x 16<sup>3</sup> + ~~0 x (16<sup>2</sup> + 16<sup>1</sup> + 16<sup>0</sup>)~~</li>
        <li> = **32,768<sub>10</sub>**</li>
      </ol>
    <li> 0000 0100 0000 0000<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 0400<sub>16</sub></li>
        <li> = ~~0 x 16<sup>3</sup>~~ + 4 x 16<sup>2</sup> + ~~0 x 16<sup>1</sup>~~ + ~~0 x 16<sup>0</sup>~~</li>
        <li> = **1,024<sub>10</sub>**</li>
      </ol>
    <li> 0111 1011 1010 1010<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 7baa<sub>16</sub></li>
        <li> = 7 x 16<sup>3</sup> + 11 x 16<sup>2</sup> + 10 x 16<sup>1</sup> + 10 x 16<sup>0</sup></li>
        <li> = 28,672 + 2,816 + 160 + 10</li>
        <li> = **31,658<sub>10</sub>**</li>
      </ol>
    <li> 0011 00000 0011 1011<sub>2</sub></li>
      <ol class="equation-steps">
        <li> = 3039<sub>16</sub></li>
        <li> = 3 x 16<sup>3</sup> + ~~0 x 16<sup>2</sup>~~ + 3 x 16<sup>1</sup> + 9 x 16<sup>0</sup></li>
        <li> = 12,288 + 48 + 9</li>
        <li> = **12,345<sub>10</sub>**</li>
      </ol>
  </ol>

## 5. Develop an algorithm to convert hexadecimal to decimal, and then convert the following 16-bit numbers to decimal by hand.
  <ol class="alpha-sub-list">
    <li>Algorithm:</li>
      1. Set result = 0.<br>
      2. For i = 0, ..., (n-1): result = result + d<sub>i</sub> x 16<sup>i</sup><br>
    <li>a000<sub>16</sub></li>
      <ol class="equation-steps">
        <li> 10 x 16<sup>3</sup> + ~~0 x (16<sup>2</sup> + 16<sup>1</sup> + 16<sup>0</sup>)~~</li>
        <li> = **40,960<sub>10</sub>**</li>
      </ol>
    <li> ffff<sub>16</sub></li>
      <ol class="equation-steps">
        <li> = 15 x 16<sup>3</sup> + 15 x 16<sup>2</sup></li>
        <li> = **1,024<sub>10</sub>**</li>
      </ol>
    <li> 1111<sub>16</sub></li>
      <ol class="equation-steps">
        <li>= 1 x 16<sup>3</sup> + 1 x 16<sup>2</sup> + 1 x 16<sup>1</sup> + 1 x 16<sup>0</sup></li>
        <li> = 4,096 + 256 + 16 + 1</li>
        <li> = **4,369<sub>10</sub>**</li>
      </ol>
    <li> 8888<sub>16</sub></li>
      <ol class="equation-steps">
        <li> = 8 x 16<sup>3</sup> + 8 x 16<sup>2</sup> + 8 x 16<sup>1</sup> + 8 x 16<sup>0</sup></li>
        <li> = 32,768 + 2,048 + 128 + 8</li>
        <li> = **34,952<sub>10</sub>**</li>
      </ol>
    <li> 0190<sub>16</sub></li>
      <ol class="equation-steps">
        <li> = ~~0 x 16<sup>3</sup>~~ + 1 x 16<sup>2</sup> + 9 x 16<sup>1</sup> + ~~0 x 16<sup>0</sup>~~</li>
        <li> = 256 + 144</li>
        <li> = **400<sub>10</sub>**</li>
      </ol>
    <li> abcd<sub>16</sub></li>
      <ol class="equation-steps">
        <li> = 10 x 16<sup>3</sup> + 11 x 16<sup>2</sup> + 12 x 16<sup>1</sup> + 13 x 16<sup>0</sup></li>
        <li> = 40,960 + 2,816 + 192 + 13</li>
        <li> = **43,981<sub>10</sub>**</li>
      </ol>
    <li> 5555<sub>16</sub></li>
      <ol class="equation-steps">
        <li> = 5 x 16<sup>3</sup> + 5 x 16<sup>2</sup> + 5 x 16<sup>1</sup> + 5 x 16<sup>0</sup></li>
        <li> = 20,480 + 1,280 + 80 + 5</li>
        <li> = **21,845<sub>10</sub>**</li>
      </ol>
  </ol>


<style type="text/css">
  .alpha-sub-list {
    list-style-type: lower-alpha;
  }
  .equation-steps {
    list-style-type: none;
  }
</style>
