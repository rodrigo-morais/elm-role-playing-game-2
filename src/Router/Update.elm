module Router.Update (..) where


import Effects exposing (Effects)


import Router.Actions exposing (..)
import Router.Models exposing (..)


import Models exposing (..)


import Players.Search.Actions exposing (..)
import Players.Search.Update exposing (..)


update : Router.Actions.Action -> AppModel -> (AppModel, Effects Router.Actions.Action)
update action model =
  case action of
    ApplyRoute ( route, location ) ->
      let
        routeModel = model.routeModel

        updatedRouteModel =
          { routeModel | route = route, location = location }

      in
        ( { model | routeModel = updatedRouteModel }, Effects.none )

    PlayersSearchAction subAction ->
      let
        players = model.players

        ( updatedPlayers, fx ) =
          Players.Search.Update.update subAction players
      in
        ( { model | players = updatedPlayers }, Effects.map PlayersSearchAction fx )