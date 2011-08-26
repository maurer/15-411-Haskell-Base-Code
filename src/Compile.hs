module Compile (
compile,
module Compile.Job)
where

import Compile.Job
import Compile.AbstractAssembly

compile :: Job -> IO ()
compile _ = return ()
