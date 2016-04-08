module Router.View (..) where


import Html exposing (..)


import Router.Actions exposing (..)
import Router.Models exposing (..)


import Models exposing (..)


import Players.Search.Search as PlayersView
import Players.Models exposing (..)


view : Signal.Address Action -> AppModel -> Html.Html
view address model =
  case model.routeModel.route of
    NotFoundRoute ->
      notFoundView address model.routeModel
  
    PlayersRoute ->
      playersView address model.players

notFoundView : Signal.Address Action -> RouteModel -> Html.Html
notFoundView address model =
  div [ ]
      [ text "Not Found" ]


playersView : Signal.Address Action -> List Player -> Html.Html
playersView address players =
  PlayersView.view (Signal.forwardTo address PlayersSearchAction) players