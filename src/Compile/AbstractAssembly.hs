module Compile.AbstractAssembly where

data AAsm = AAsm {aAssign :: AVal
                 ,aOp     :: Op
                 ,aArgs   :: [AVal]
                 }
          | ACtrl COp AVal
          | ALabel String
          | AComment String

data AVal = AReg Int
          | ATemp Int
          | AImm Int
