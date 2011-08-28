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

data COp = Ret deriving Show
