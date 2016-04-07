module Players.Search.Actions (..) where


import Http exposing (..)


import Players.Search.Models exposing (Players)

type Action
  = NoOp
  | FetchAllDone (Result Http.Error (Players))