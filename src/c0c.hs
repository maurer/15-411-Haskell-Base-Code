import Compile
import Args
import System.Environment
import System.IO
import System.Exit

getDefaults "c0c" = defaultJob
getDefaults "l1c" = defaultJob {jobOutFormat = Asm}
getDefaults _ = defaultJob

main :: IO ()
main = do
  prog <- getProgName
  args <- getArgs
  case parseArgs (getDefaults prog) args of
    Left  err -> do hPrint stderr err
                    hPutStr stderr (usage prog)
                    exitFailure
    Right job -> compile job
  exitSuccess
