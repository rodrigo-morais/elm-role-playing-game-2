module Players.Search.Search (..) where


import Html exposing (..)


import Players.Search.Actions exposing (Action)
import Players.Search.Models exposing (Players)


view : Signal.Address Action -> Players -> Html.Html
view address players =
  div [ ]
      [ text "Search me!" ]