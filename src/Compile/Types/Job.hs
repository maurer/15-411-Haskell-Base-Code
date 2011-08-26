module Compile.Types.Job where

data Job = Job
  { jobOut       :: FilePath
  , jobSource    :: FilePath
  , jobOutFormat :: OF
  }

data OF = C0
        | Asm
        | Obj
        | ELF deriving Eq

defaultJob :: Job
defaultJob = Job {jobOut       = "",
                  jobSource    = "",
                  jobOutFormat = ELF}
