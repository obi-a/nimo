module Groups where

import qualified Nimo as Nimo
import qualified Users as Users

data Group = Group
  { name  :: Nimo.Name
  , uuid  :: Nimo.UUID
  , users :: [Users.User]
  } deriving (Show)
