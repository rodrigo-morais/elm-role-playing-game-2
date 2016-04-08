module Main (..) where

import Html exposing (..)
import Effects exposing (Effects, Never)
import Task
import StartApp


import Router.Routing exposing (..)
import Router.Actions exposing (..)


import Models exposing (..)


import Players.Search.Effects exposing (..)


-- START APP

init : ( AppModel, Effects Router.Routing.Action )
init =
  let
    fxs = [ Effects.map PlayersSearchAction fetchAll ]
    fx = Effects.batch fxs

  in
    (initialAppModel, fx)


app : StartApp.App AppModel
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