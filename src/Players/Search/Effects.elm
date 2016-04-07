module Players.Search.Effects (..) where


import Effects exposing (Effects)
import Http
import Json.Decode as Decode exposing ((:=))
import Json.Encode as Encode
import Task


import Players.Models exposing (Player)


import Players.Search.Models exposing (Players)
import Players.Search.Actions exposing (..)


fetchAll : Effects Action
fetchAll =
  Http.get collectionDecoder fetchAllUrl
  |> Task.toResult
  |> Task.map FetchAllDone
  |> Effects.task


fetchAllUrl : String
fetchAllUrl =
  "http://localhost:4000/players"




-- DECODERS
collectionDecoder : Decode.Decoder (Players)
collectionDecoder =
  Decode.list memberDecoder


memberDecoder : Decode.Decoder Player
memberDecoder =
  Decode.object3
    Player
    ("id" := Decode.int)
    ("name" := Decode.string)
    ("level" := Decode.int)
