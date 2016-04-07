module Players.Search.Update (..) where


import Effects exposing (Effects)


import Players.Search.Actions exposing (..)
import Players.Search.Models exposing (Players)


update : Action -> Players -> (Players, Effects Action)
update action players =
  case action of
    NoOp ->
      (players, Effects.none)

    FetchAllDone result ->
      case result of
        Ok return ->
          (return, Effects.none)

        Err error ->
          (players, Effects.none)