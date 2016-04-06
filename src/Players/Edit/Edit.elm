module Players.Edit.Edit (..) where


import Html exposing (..)


import Players.Edit.Actions exposing (Action)
import Players.Edit.Models exposing (Player)


view : Signal.Address Action -> Player -> Html
view action player =
  div [ ]
      [ text "Edit me!!" ]