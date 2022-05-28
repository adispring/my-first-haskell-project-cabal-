module Functoriality where

import Data.Bifunctor
import Data.Functor.Identity  (Identity(..))
import Control.Applicative    (Const(..))

-- class Bifunctor f where
--     bimap :: (a -> c) -> (b -> d) -> f a b -> f c d
--     bimap g h = first g . second h
--     first :: (a -> c) -> f a b -> f c b
--     first g = bimap g id
--     second :: (b -> d) -> f a b -> f a d
--     second = bimap id

newtype BiComp bf fu gu a b = BiComp (bf (fu a) (gu b)) deriving Show

instance (Bifunctor bf, Functor fu, Functor gu) =>
  Bifunctor (BiComp bf fu gu) where
    bimap f1 f2 (BiComp x) = BiComp (bimap (fmap f1) (fmap f2) x)

type Perhaps a b = BiComp Either (Const ()) Identity a b

biCompProduct = BiComp ((,) (Just 'a') (Just 1))