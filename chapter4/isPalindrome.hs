module IsPalindrome where

  reverse' :: [a] -> [a]
  reverse' [] = []
  reverse' (x : xs) = (reverse' xs) ++ [x]

  isPalindrome :: (Eq a) => [a] -> Bool
  isPalindrome x = x == reverse' x
