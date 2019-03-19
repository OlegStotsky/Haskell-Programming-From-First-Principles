module Mood where

  data Mood = Good | Bad deriving Show

  switchMood :: Mood -> Mood
  switchMood Good = Bad
  switchMood _ = Good