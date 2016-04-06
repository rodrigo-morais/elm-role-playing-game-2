module Main (..) where

import Html exposing (..)
import Effects exposing (Effects, Never)
import Task
import StartApp


import Players.Edit.Edit exposing (view)
import Players.Edit.Models exposing (Player, initialPlayer)
import Players.Edit.Update exposing (update)
import Players.Edit.Actions exposing (Action)


-- START APP

init : ( Player, Effects Action )
init =
  ( initialPlayer, Effects.none )

app : StartApp.App Player
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