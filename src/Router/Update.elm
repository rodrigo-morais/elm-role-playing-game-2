module Router.Update (..) where


import Effects exposing (Effects)


import Router.Actions exposing (..)
import Router.Models exposing (..)


update : Action -> RouteModel -> (RouteModel, Effects Action)
update action model =
  case action of
    ApplyRoute ( route, location ) ->
      ( { model | route = route, location = location }, Effects.none )