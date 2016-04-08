module Router.View (..) where


import Html exposing (..)


import Router.Actions exposing (..)
import Router.Models exposing (..)


view : Signal.Address Action -> RouteModel -> Html.Html
view address model =
  div [ ]
      [ ]