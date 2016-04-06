module Players.Search.Search (..) where


import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


import Players.Models exposing (Player)


import Players.Search.Actions exposing (Action)
import Players.Search.Models exposing (Players)


view : Signal.Address Action -> Players -> Html.Html
view address players =
  div [ ]
      [
        list address players
      ]


list : Signal.Address Action -> Players -> Html.Html
list address players =
  div [ ]
      [
        table [ class "table-light" ]
              [
                thead [ ]
                      [
                        tr [ ]
                           [
                            th [ ]
                               [ text "Id" ],
                            th [ ]
                               [ text "Name" ],
                            th [ ]
                               [ text "Level" ],
                            th [ ]
                               [ text "Actions" ]
                           ]
                      ],
                tbody [ ]
                      (
                        players
                        |> List.map (playerRow address)
                      )
              ]
      ]


playerRow : Signal.Address Action -> Player -> Html.Html
playerRow address player =
  tr [ ]
     [
      td [ ]
         [ text (toString player.id) ],
      td [ ]
         [ text player.name ],
      td [ ]
         [ text (toString player.level) ],
      td [ ]
         [
          deleteBtn address player
         ]
     ]


deleteBtn : Signal.Address Action -> Player -> Html.Html
deleteBtn address player =
  button  [
            class "btn regular mr1"
          ]
          [
            i [ class "fa fa-trash mr1" ] [ ],
            text "Delete"
          ]