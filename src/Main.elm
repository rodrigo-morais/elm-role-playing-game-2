module Main (..) where

import Html exposing (..)
import Effects exposing (Effects, Never)
import Task
import StartApp


import Router.Routing exposing (..)


-- START APP

init : ( RouteModel, Effects Action )
init =
  (initialRouteModel, Effects.none)
  --( initialPlayers, Players.Search.Effects.fetchAll )


app : StartApp.App RouteModel
app =
  StartApp.start
    { init = init
    , inputs = [inputRouterSignal]
    , update = update
    , view = view
    }

main : Signal.Signal Html
main =
  app.html

port runner : Signal (Task.Task Never ())
port runner =
  app.tasks