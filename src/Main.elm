module Main (..) where

import Html exposing (..)
import Effects exposing (Effects, Never)
import Task
import StartApp


import Players.Edit.Edit exposing (view)
import Players.Edit.Models exposing (Player, initialPlayer)
import Players.Edit.Update exposing (update)
import Players.Edit.Actions exposing (Action)


import Players.Search.Search exposing (view)
import Players.Search.Models exposing (Players, initialPlayers)
import Players.Search.Update exposing (update)
import Players.Search.Actions exposing (Action)


-- START APP

init : ( Players, Effects Players.Search.Actions.Action )
init =
  ( initialPlayers, Effects.none )

app : StartApp.App Players
app =
  StartApp.start
    { init = init
    , inputs = []
    , update = Players.Search.Update.update
    , view = Players.Search.Search.view
    }

main : Signal.Signal Html
main =
  app.html

port runner : Signal (Task.Task Never ())
port runner =
  app.tasks