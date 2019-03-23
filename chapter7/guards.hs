module Guards where

  myAbs :: Int -> Int
  myAbs x
    | x < 0 = (-x)
    | otherwise = x


  bloodNa :: Int -> String
  bloodNa x
    | x < 135 = "too low"
    | x > 135 = "too high"
    | otherwise = "just fine"