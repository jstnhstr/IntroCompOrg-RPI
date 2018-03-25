# Boolean Function Minimization

## 1. Design a function that will detect the even 4-bit integers.

  Let w, x, y, z be bits of the integer.  The minterms that represent even numbers are:

  minterm|w|x|y|z
  :-|-:-|-:-|-:-|-:-
  m<sub>0</sub> = w' · x' · y' · z'|0|0|0|0
  |0|0|0|1
  m<sub>2</sub> = w' · x' · y · z'|0|0|1|0
  |0|0|1|1
  m<sub>4</sub> = w' · x · y' · z'|0|1|0|0
  |0|1|0|1
  m<sub>6</sub> = w'· x · y · z'|0|1|1|0
  |0|1|1|1
  m<sub>8</sub> = w · x' · y' · z'|1|0|0|0
  |1|0|0|1
  m<sub>10</sub> = w · x' · y · z'|1|0|1|0
  |1|0|1|1
  m<sub>12</sub> = w · x · y' · z'|1|1|0|0
  |1|1|0|1
  m<sub>14</sub> = w · x · y · z'|1|1|0|1
  |1|1|1|1

  Using a K-map to visualize grouping simplifications:

  wx | yz
  -:-|-:-
  |*00*|*01*|*11*|*10*
  *00*|1|||1
  *01*|1|||1
  *11*|1|||1
  *10*|1|||1

  F(w, x, y, z) = ( y' · z' ) · ( w' · x' + w' · x + w · x' + w · x ) + ( y · z' ) · ( w' · x' + w' · x + w · x' + w · x )

  Let G(w, x, y, z) = w' · x' + w' · x + w · x' + w · x<br>

  So,<br>
  F(w, x, y, z) = y' · z' · G + y · z' · g<br>
  = z' · G ( y' + y )<br>
  = z' · G<br>

  And<br>
  G(w, x, y, z) = w' · ( x' + x ) + w · ( x' + x )<br>
  = w' + w<br>
  = 1<br>

  Therefore, one possible solution is<br>
  **F(w, x, y, z) = z'**

## 2. Find a minimal sum of products (mSoP) expression for the Function

  F(x, y, z) = x' · y' · z' + x' · y' · z + x' · y · z' + x · y' · z' + x · y · z' + x · y · z<br>

  On a K-map:

  x | yz
  -:- | -:-
  |*00*|*01*|*11*|*10*
  *0*|1|1||1
  *1*||1|1|1

  = x' · y' · z' + x · y' · z' + x' · y · z' + x · y · z' + x' · y' · z' + x' · y' · z + x · y · z + x · y · z'<br>
  = z' · ( x' · y' + x · y' + x' · y + x · y ) + x' · y' ( z' + z ) + ( x · y ) · ( z + z' )<br>
  = z' · [ y' ( x' + x ) + y ( x' + x )] + x' · y' + x · y<br>
  = z' · ( y' + y ) + x' · y' + x · y<br>
  **= z' + x' · y' + x · y**

## 3. Find a minimal product of sums (mPoS) expression for the Function

  F(x, y, z) = ( x + y + z ) · ( x + y + z' ) · ( x + y' + z' ) · ( x' + y + z ) · ( x' + y' + z' )<br>


  On a K-map:

  x | yz
  -:- | -:-
  |*00*|*01*|*11*|*10*
  *0*|0|0|0|
  *1*|0||0|

  = ( x + y + z ) · ( x' + y + z ) · ( x + y + z ) · (x + y + z' ) · ( x + y' + z' ) · ( x' + y' + z' )<br>
  = (y + z) + ~~x · x'~~ · (x + y) + ~~z · z'~~ · (y' + z') + ~~x · x'~~<br>
  **= (y + z) · (x + y) · ( y' + z' )**


## 4. Find a minimal product of sums (mPoS) expression for the function

  F(x, y, z) = x' · y' · z' + x' · y' · z + x' · y · z' + x · y' · z' + x · y · z' + x · y · z<br>

  On a K-Map:

  x | yz
  -:- | -:-
  |*00*|*01*|*11*|*10*
  *0*|1|1||1
  *1*|1||1|1

  = x' · y' · z' + x' · y · z' + x · y' · z' + x · y · z' + x' · y' · z' + x' · y' · z + x · y · z + x · y · z'<br>
  = z' · ( x' · y' + x' · y + x · y' + x · y ) + x' · y' · z' + x' · y' · z + x · y · z + x · y · z'<br>
  = z' · [ x' · ( y' + y ) + x · ( y' + y ) ] + ( x' · y' ) · ( z' + z ) + ( x · y ) · ( z + z' )<br>
  = z' · ( x' + x ) + x' · y' + x · y<br>
  **= z' + x' · y' + x · y**<br>


## 5. Show where each minterm is located with this Karnaugh map axis labeling using the notation of Figure 5.5.7

  z | xy
  -:- | -:-
  |*00*|*01*|*11*|*10*
  *0*|**m<sub>0</sub>**|**m<sub>2</sub>**|**m<sub>6</sub>**|**m<sub>4</sub>**
  *1*|**m<sub>1</sub>**|**m<sub>3</sub>**|**m<sub>7</sub>**|**m<sub>5</sub>**


## 6. Show where each minterm is located with this Karnaugh map axis labeling using the notation of Figure 5.5.7

  y | xz
  -:- | -:-
  |*00*|*01*|*11*|*10*
  *0*|**m<sub>0</sub>**|**m<sub>1</sub>**|**m<sub>5</sub>**|**m<sub>4</sub>**
  *1*|**m<sub>2</sub>**|**m<sub>3</sub>**|**m<sub>7</sub>**|**m<sub>6</sub>**


## 7. Design a logic functon that detects the prime single-digit numbers.  Assume that the numbers are coded in 4-bit BCD.  The function is 1 for each prime number.

  F(w, x, y, z) = w' · x' · y · z' + w' · x' · y · z + w' · x · y' · z + w' · x · y · z<br>

  On a K-Map:

  wx | yz
  -:- | -:-
  |*00*|*01*|*11*|*10*
  *00*|||1|1
  *01*||1|1|
  *11*||||
  *10*||||

  = w' · x' · y · z + w' · x' · y · z' + w' · x · y' · z + w' · x · y · z<br>
  = ( w' · x' · y ) · ( z + z' ) + ( w' · x · z ) · ( y' + y )<br>
  = w' · x' · y + w' · x · z<br>
  And w' is always 1 for single digit numbers, so<br>
  **= x' · y + x · z**<br>
