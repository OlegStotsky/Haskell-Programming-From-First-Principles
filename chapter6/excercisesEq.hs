module Excercises where

  data TisAnInteger = TisAn Integer

  instance Eq TisAnInteger where
    (==) (TisAn x) (TisAn x') = x == x'

  data TwoIntegers = TwoIntegers Int Int

  instance Eq TwoIntegers where
    (==) (TwoIntegers x1 x2) 
         (TwoIntegers x1' x2') = 
          x1 == x1'
          && x2 == x2'

  data StringOrInt = TisAnInt Int | TisAString String

  instance Eq StringOrInt where
    (==) (TisAnInt x) (TisAnInt x') = x == x'
    (==) (TisAString s) (TisAString s') = s == s'
    (==) _ _ = False

  data Pair a = Pair a a

  instance Eq a => Eq (Pair a) where
    (==) (Pair x1 x2) (Pair x1' x2') = x1 == x1' && x2 == x2'

  data Tuple a b = Tuple a b

  instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple x1 x2) (Tuple x1' x2') = x1 == x1' && x2 == x2'
  
  data Which a = ThisOne a | ThatOne a

  instance Eq a => Eq (Which a) where
    (==) (ThisOne x) (ThisOne x') = x == x'
    (==) (ThatOne x) (ThatOne x') = x == x'
    (==) _ _ = False

  data EitherOr a b = Hello a | Goodbye b

  instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello x) (Hello x') = x == x'
    (==) (Goodbye x) (Goodbye x') = x == x'
    (==) _ _ = False