module Employees where

  data Employee = Coder | Manager | VEP | CEO deriving (Show, Eq, Ord)

  reportBoss :: Employee -> Employee -> IO ()
  reportBoss e e' = putStrLn $ show e ++ " is the boss of " ++ show e'

  codersRuleCEOsDrule :: Employee -> Employee -> Ordering
  codersRuleCEOsDrule Coder Coder = EQ
  codersRuleCEOsDrule Coder _ = GT
  codersRuleCEOsDrule _ Coder = LT
  codersRuleCEOsDrule e e' = compare e e'

  employeeRank :: (Employee -> Employee -> Ordering) -> Employee -> Employee -> IO ()
  employeeRank f e e' = 
    case f e e' of
      GT -> reportBoss e e'
      EQ -> putStrLn "Neither employee is the boss"
      LT -> (flip reportBoss) e e'