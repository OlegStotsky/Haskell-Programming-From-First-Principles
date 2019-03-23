module CaseExpr where

  funcZ :: Int -> String
  funcZ x = 
    case x + 1 == 1 of
      True -> "awesome"
      False -> "wut"

  pal xs = case xs == reverse xs of 
            True -> "yes"
            False -> "no"