module Models (..) where


import Hop.Types exposing (Location, newLocation)
import Router.Routing exposing (..)


type alias Model =
  {
    location : Location
  , route : Route
  }


initialModel : Model
initialModel =
  {
    location = newLocation
  , route = NotFoundRoute
  }