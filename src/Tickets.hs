module Tickets where

import qualified Nimo as Nimo
import qualified Users as Users
import qualified Projects as Projects

data Ticket = Ticket
  { project :: Projects.Project
  , uuid :: Nimo.UUID
  , ticketType :: Nimo.TicketType
  , summary :: Nimo.Summary
  , description :: Nimo.Description
  , workflow :: Nimo.Workflow
  , creator :: Users.User
  , assignee :: Users.User
  , history :: Nimo.History
  } deriving (Show)

create ::
  Projects.Project
  -> Nimo.TicketType
  -> Nimo.Summary
  -> Nimo.Description
  -> Nimo.Workflow
  -> Users.User
  -> Users.User
  -> Ticket
create project ticketType summary description workflow creator assignee =
  Ticket
    project
    uuid
    ticketType
    summary
    description
    workflow
    creator
    assignee
    history
      where
        uuid             = "ticket1234"
        first_transition = head workflow
        status           = snd first_transition
        history          = [(first_transition, status)]

getStatus :: Ticket -> Nimo.Status
getStatus ticket =
  snd latest_event
  where
    latest_event = head $ history ticket

--performTransition :: Workflow -> Transition -> Bool

