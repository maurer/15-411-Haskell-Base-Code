module LiftIOE where

import Control.Monad.Error

--TODO make this actually properly catch errors like spoon
liftIOE :: IO a -> ErrorT String IO a
liftIOE = liftIO
