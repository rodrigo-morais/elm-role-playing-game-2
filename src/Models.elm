module Models (..) where


import Router.Models exposing (..)
import Players.Models exposing (..)

type alias AppModel =
  { routeModel : RouteModel
  , players : List Player
  }


initialAppModel : AppModel
initialAppModel =
  { routeModel = initialRouteModel
  , players = [ ]
  }