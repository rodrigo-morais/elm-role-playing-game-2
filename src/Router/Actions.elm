module Router.Actions (..) where


import Hop.Types exposing (Location)
import Router.Models exposing (..)


import Players.Search.Actions exposing (..)

type Action
  = ApplyRoute ( Route, Location )
  | PlayersSearchAction Players.Search.Actions.Action