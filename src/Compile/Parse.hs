module Compile.Parse where

import Control.Monad.Error
import Data.ByteString as BS
import Compile.Types

import LiftIOE

import Text.ParserCombinators.Parsec

parseAST :: FilePath -> ErrorT String IO AST
parseAST file = do
  res <- liftIOE $ parseFromFile astParser file
  case res of
    Left e  -> throwError (show e)
    Right a -> return a

astParser :: Parser AST
astParser = undefined
