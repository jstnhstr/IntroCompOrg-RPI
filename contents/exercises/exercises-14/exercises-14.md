# Boolean Algebra Operations

## 1. Prove the **identity** property

    x ⋅ 1 = x
    x + 0 = x

  |x|x ⋅ 1|x + 0|
  |-:-|-:-|-:-|
  |0|0|0|
  |1|1|1|

## 2. Prove the commutative property

    x ⋅ y = y ⋅ x
    x + y = y + x

  |x|y|x ⋅ y|y ⋅ x|x + y|y + x|
  |-:-|-:-|-:-|-:-|-:-|-:-|
  |0|0|0|0|0|0|
  |0|1|0|0|1|1|
  |1|0|0|0|1|1|
  |1|1|1|1|1|1|

## 3. Prove the annulment property

    x ⋅ 0 = 0
    x + 1 = 1

  |x|x ⋅ 0|x + 1|
  |-:-|-:-|-:-|
  |0|0|1|
  |1|0|1|

## 4. Prove the complement property

    x ⋅ x' = 0
    x + x' = 1

  |x|x'|x ⋅ x'|x + x'|
  |-:-|-:-|-:-|-:-|
  |1|0|0|1|
  |0|1|0|1|

## 5. Prove the idempotent property

    x ⋅ x = x
    x + x = x

  |x|x ⋅ x|x + x|
  |-:-|-:-|-:-|
  |0|0|0|
  |1|1|1|

## 6. Prove the distributive property

    x ⋅ (y + z) = x ⋅ y + x ⋅ z
    x + y ⋅ z = (x + y) ⋅ (x + z)

  |z|y|x|y + z|**x ⋅ (y + z)**|x ⋅ y|x ⋅ z|**x ⋅ y + x ⋅ z**|
  |-:-|-:-|-:-|-:-|-:-|-:-|-:-|-:-|
  |0|0|0|0|**0**|0|0|**0**|
  |0|0|1|0|**0**|0|0|**0**|
  |0|1|0|1|**0**|0|0|**0**|
  |0|1|1|1|**1**|1|0|**1**|
  |1|0|0|0|**0**|0|0|**0**|
  |1|0|1|1|**1**|0|1|**1**|
  |1|1|0|1|**0**|0|0|**0**|
  |1|1|1|1|**1**|1|1|**1**|
