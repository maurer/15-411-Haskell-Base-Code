module Compile.Types.Ops where

data Op = Times
        | Plus
        | Minus
        | Div
        | Negate
        | BNot
        | BAnd
        | BOr
        | BXor
        | Cmp
        | Test deriving Show

data COp = Call
         | Ret
         | Jump Cond deriving Show

data Cond = Zero
          | Parity
          | Sign
          | Overflow
          | Carry deriving Show
