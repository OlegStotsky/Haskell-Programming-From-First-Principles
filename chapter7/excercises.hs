module Excercises where

  functionC :: (Ord a) => a -> a -> a
  functionC x y = case x > y of
                    True -> x
                    False -> y

  addTwoToEven :: (Integral a) => a -> a
  addTwoToEven x = case even x of 
                    True -> x + 2
                    False -> x

  nums :: (Ord a, Num a) => a -> Int
  nums x = case compare x 0 of
            LT -> -1
            GT -> 1
            EQ -> 0

  tensDigit :: (Integral a) => a -> a
  tensDigit x = snd (divMod x 10)

  hunsD :: (Integral a) => a -> a
  hunsD x = d2
    where d = mod x 100
          d2 = div d 10

  foldBool :: a -> a -> Bool -> a
  foldBool x y cond = case cond of
                        True -> y
                        False -> x

  foldBool' :: a -> a -> Bool -> a            
  foldBool' x y cond
    | cond = y
    | otherwise = x

  g :: (a -> b) -> (a, c) -> (b, c)
  g f (x, y) = (f x, y)