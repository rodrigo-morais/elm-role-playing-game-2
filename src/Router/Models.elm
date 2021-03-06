module Router.Models (..) where


import Hop.Types exposing (Location, newLocation)


type Route
  = NotFoundRoute
  | PlayersRoute
  

type alias RouteModel =
  {
    location : Location
  , route : Route
  }


initialRouteModel : RouteModel
initialRouteModel =
  {
    location = newLocation
  , route = PlayersRoute
  }