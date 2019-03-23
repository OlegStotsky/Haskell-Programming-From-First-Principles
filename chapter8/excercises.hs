module Excercises where

  sumUpToN :: (Eq a, Num a) => a -> a
  sumUpToN 1 = 1
  sumUpToN n = n + sumUpToN (n - 1)

  mult :: (Integral a) => a -> a -> a
  mult x 1 = x
  mult x y = x + mult x (y - 1)