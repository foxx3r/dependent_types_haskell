module Lib
    (
        S(..),
        Z(..),
        Nat,
        Lib.succ,
        List
    ) where

data S n = Suc n
data Z = Zero

class Nat n
instance Nat Z
instance Nat n => Nat (S n)

succ :: Nat n => n -> S n
succ n = Suc n

data List n a where
    Nil  :: List Z a
    Cons :: Nat n => a -> List n a -> List (S n) a
