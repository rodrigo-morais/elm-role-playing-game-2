module Router.View (..) where


import Html exposing (..)


import Router.Actions exposing (..)
import Router.Models exposing (..)


view : Signal.Address Action -> RouteModel -> Html.Html
view address model =
  case model.route of
    NotFoundRoute ->
      notFoundView address model
  

notFoundView : Signal.Address Action -> RouteModel -> Html.Html
notFoundView address model =
  div [ ]
      [ text "Not Found" ]