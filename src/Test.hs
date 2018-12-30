module Test where

import qualified Nimo as Nimo
import qualified Users as Users
import qualified Groups as Groups
import qualified Projects as Projects
import qualified Tickets as Tickets

workflow =
      [("Pending", "Open")
      ,("Open", "Close")
      ,("Open", "In Progress")
      ,("In progress", "Close")
      ,("In Progress", "Waiting for Action")
      ,("Waiting for Action", "Resolved")
      ]

user    = Users.User "obiora" True
group   = Groups.Group "My Group" "my_group" [user]
project = Projects.create "Iceland Vacation" group "Vacation to Iceland project"
ticket  = Tickets.create project Nimo.Task "Book hotel room" "check priceline for details" workflow user user
