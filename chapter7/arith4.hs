module Arith4 where

  roundTrip :: (Read b, Show a) => a -> b
  roundTrip = read . show

  main = do
    print ((roundTrip 4) :: Int)
    print (id 4)