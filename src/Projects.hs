module Projects where

import qualified Nimo as Nimo
import qualified Groups as Groups

data Project = Project
  { name        :: Nimo.Name
  , group       :: Groups.Group
  , uuid        :: Nimo.UUID
  , description :: Nimo.Description
  } deriving (Show)

create :: Nimo.Name -> Groups.Group -> String -> Project
create name group description =
  Project
    name
    group
    uuid
    description
      where
        uuid = "project1234"
