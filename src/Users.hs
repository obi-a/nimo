module Users where

import qualified Nimo as Nimo

data User = User
  { uuid   :: Nimo.UUID
  , admin  :: Bool
  } deriving (Show)
