module Compile.Types.AbstractAssembly where

import Compile.Types.Ops

data AAsm = AAsm {aAssign :: [ALoc]
                 ,aOp     :: Op
                 ,aArgs   :: [AVal]
                 }
          | ACtrl COp AVal
          | AComment String deriving Show

data AVal = ALoc ALoc
          | AImm Int deriving Show

data ALoc = AReg Int
          | ATemp Int deriving Show
