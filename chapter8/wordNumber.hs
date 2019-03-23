module WordNumber where
  import Data.List (intersperse)

  digitToWord :: Int -> String 
  digitToWord n
    | n == 9 = "Nine"
    | n == 8 = "Eight"
    | n == 7 = "Seven"
    | n == 6 = "Six"
    | n == 5 = "Five"
    | n == 4 = "Four"
    | n == 3 = "Three"
    | n == 2 = "Two"
    | n == 1 = "One"
    | n == 0 = "Zero"

  digits :: Int -> [Int] 
  digits 0 = []
  digits n = (digits $ div n 10) ++ [mod n 10]

  wordNumber :: Int -> String 
  wordNumber n = concat $ map digitToWord $ digits n