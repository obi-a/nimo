module Nimo where

type Name        = String
type UUID        = String
type Description = String
type Summary     = String
type Status      = String
type Transition  = (Status, Status)
type Workflow    = [Transition]
type Event       = (Transition, Status)
type History     = [Event]

data TicketType  = Issue | Task deriving (Show)
{-
data User = User
  { uuid   :: UUID
  , admin  :: Bool
  } deriving (Show)

data Group = Group
  { name  :: Name
  , users :: [User]
  } deriving (Show)

data Project = Project
  { name        :: Name
  , group       :: Group
  , uuid        :: UUID
  , description :: Description
  } deriving (Show, Generics)

data Ticket = Ticket
  { project :: Project
  , uuid :: UUID
  , ticketType :: TicketType
  , summary :: Summary
  , description :: Description
  , status :: Status
  , workflow :: Workflow
  , creator :: User
  , assignee :: User
  , history :: History
  } deriving (Show)

createProject :: Name -> Group -> String -> Project
createProject name group description =
  Project
    name
    group
    uuid
    description
      where
        uuid = "project1234"

createTicket :: Project -> TicketType -> Summary -> Description -> Workflow -> User -> User -> Ticket
createTicket project ticketType summary description workflow creator assignee =
  Ticket
    project
    uuid
    ticketType
    summary
    description
    status
    workflow
    creator
    assignee
    history
      where
        uuid             = "ticket1234"
        first_transition = head workflow
        status           = snd first_transition
        history          = [(first_transition, status)]
-}