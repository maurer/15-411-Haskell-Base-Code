module Compile (
compile,
module Compile.Job)
where

import Compile.Job

compile :: Job -> IO ()
compile _ = return ()
