module Main (..) where

import Html exposing (..)
import Effects exposing (Effects, Never)
import Task
import StartApp


import Router.Routing exposing (..)
import Router.Models exposing (..)


import Actions exposing (..)
import View exposing (..)
import Update exposing (..)


-- ROUTER


taggedRouterSignal : Signal Actions.Action
taggedRouterSignal =
  Signal.map ApplyRoute router.signal


-- START APP

init : ( RouteModel, Effects Action )
init =
  (initialRouteModel, Effects.none)
  --( initialPlayers, Players.Search.Effects.fetchAll )


app : StartApp.App RouteModel
app =
  StartApp.start
    { init = init
    , inputs = [taggedRouterSignal]
    , update = update
    , view = view
    }

main : Signal.Signal Html
main =
  app.html

port runner : Signal (Task.Task Never ())
port runner =
  app.tasks