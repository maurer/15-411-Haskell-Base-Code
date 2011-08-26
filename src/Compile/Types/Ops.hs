module Compile.Types.Ops where

data Op = Mul
        | Add
        | Sub
        | Div
        | Neg
        | Mod

instance Show Op where
  show Mul = "*"
  show Add = "+"
  show Sub = "-"
  show Div = "/"
  show Neg = "-"
  show Mod = "%"

data COp = Call
         | Ret
         | Jump Cond deriving Show

data Cond = Zero
          | Parity
          | Sign
          | Overflow
          | Carry deriving Show
