module Compile.Types.AbstractAssembly where

import Compile.Types.Ops

data AAsm = AAsm {aAssign :: [AVal]
                 ,aOp     :: Op
                 ,aArgs   :: [AVal]
                 }
          | ACtrl COp AVal
          | ALabel String
          | AComment String deriving Show

data AVal = AReg Int
          | ATemp Int
          | AImm Int deriving Show
