module Players.Edit.Update (..) where


import Effects exposing (Effects)

import Players.Edit.Actions exposing (..)
import Players.Edit.Models exposing (Player)


update : Action -> Player -> (Player, Effects Action)
update action player =
  case action of
    NoOp ->
      (player, Effects.none)