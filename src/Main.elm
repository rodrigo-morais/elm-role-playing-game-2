module Main (..) where

import Html exposing (..)
import Effects exposing (Effects, Never)
import Task
import StartApp


import Players.Search.Search exposing (view)
import Players.Search.Models exposing (Players, initialPlayers)
import Players.Search.Update exposing (update)
import Players.Search.Actions exposing (Action)
import Players.Search.Effects exposing (..)


-- START APP

init : ( Players, Effects Action )
init =
  ( initialPlayers, Players.Search.Effects.fetchAll )

app : StartApp.App Players
app =
  StartApp.start
    { init = init
    , inputs = []
    , update = update
    , view = view
    }

main : Signal.Signal Html
main =
  app.html

port runner : Signal (Task.Task Never ())
port runner =
  app.tasks