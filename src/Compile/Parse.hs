module Compile.Parse where

import Control.Monad.Error
import Data.ByteString
import Compile.Types

parseAST :: FilePath -> ErrorT String IO AST
parseAST = undefined
