module Main where

import Data.Time.LocalTime
import Data.Bifunctor
import Data.Char
import Functoriality

main :: IO ()
main = do
  now <- getZonedTime
  print now
  print (second (+1) ('j', 3))
  print (bimap (+1) (+1) (1, 3))
  print (bimap toUpper (+1) ('j', 3))
  print (bimap toUpper (+1) biCompProduct)
  print (first toUpper biCompSumLeft)
  print (second (+1) biCompSumLeft)
  print (bimap toUpper (+1) biCompSumLeft)
  print (first toUpper biCompSumRight)
  print (second (+1) biCompSumRight)
  print (bimap toUpper (+1) biCompSumRight)
  -- print (bimap toUpper (+1) biCompSumRight)


