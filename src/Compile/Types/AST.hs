module Compile.Types.AST where

import Text.ParserCombinators.Parsec.Pos (SourcePos)

import Compile.Types.Ops

data AST = Block [Decl] [Stmt] SourcePos deriving Show
data Decl = Decl String SourcePos deriving Show
data Stmt = Asgn String AsgnOp Expr SourcePos deriving Show
data Expr = Const Int SourcePos
          | Ident String SourcePos
          | BinOp Op Expr Expr SourcePos
          | UnOp Op Expr SourcePos deriving Show
type AsgnOp = Maybe Op
