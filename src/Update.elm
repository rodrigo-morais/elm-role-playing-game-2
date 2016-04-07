module Update (..) where


import Effects exposing (Effects)


import Actions exposing (..)
import Models exposing (..)


update : Action -> Model -> (Model, Effects Action)
update action model =
  case action of
    ApplyRoute ( route, location ) ->
      ( { model | route = route, location = location }, Effects.none )