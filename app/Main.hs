module Main where

import Data.Time.LocalTime

main :: IO ()
main = do
  now <- getZonedTime
  print now
