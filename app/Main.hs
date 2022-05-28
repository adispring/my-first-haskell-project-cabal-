module Main where

import Data.Time.LocalTime
import Data.Bifunctor
import Data.Char

-- class Bifunctor f where
--     bimap :: (a -> c) -> (b -> d) -> f a b -> f c d
--     bimap g h = first g . second h
--     first :: (a -> c) -> f a b -> f c b
--     first g = bimap g id
--     second :: (b -> d) -> f a b -> f a d
--     second = bimap id

-- newtype BiComp bf fu gu a b = BiComp (bf (fu a) (gu b))

-- instance (Bifunctor bf, Functor fu, Functor gu) =>
--   Bifunctor (BiComp bf fu gu) where
--     bimap f1 f2 (BiComp x) = BiComp (bimap (fmap f1) (fmap f2) x)

main :: IO ()
main = do
  now <- getZonedTime
  print now
  print (second (+1) ('j', 3))
  print (bimap (+1) (+1) (1, 3))
  print (bimap toUpper (+1) ('j', 3))


