module Players.Edit.Edit (..) where


import Html exposing (..)
import Html.Attributes exposing (class, value, href)


import Players.Edit.Actions exposing (Action)
import Players.Edit.Models exposing (Player)


view : Signal.Address Action -> Player -> Html.Html
view address player =
  div [ ]
      [
        form address player
      ]


form : Signal.Address Action -> Player -> Html.Html
form address player =
  div [ class "m3" ]
      [
        h1 [] [ text player.name ],
        formLevel address player,
        formName address player
      ]


formLevel : Signal.Address Action -> Player -> Html.Html
formLevel address player =
  div
    [ class "clearfix py1"
    ]
    [ div [ class "col col-5" ] [ text "Level" ]
    , div
        [ class "col col-7" ]
        [ btnLevelDecrease address player
        , span [ class "h2 bold" ] [ text (toString player.level) ]
        , btnLevelIncrease address player
        ]
    ]


btnLevelDecrease : Signal.Address Action -> Player -> Html.Html
btnLevelDecrease address player =
  a [ class "btn ml1 h1" ]
    [
      i [
          class "fa fa-minus-circle"
        ]
        [ ]
    ]


btnLevelIncrease : Signal.Address Action -> Player -> Html.Html
btnLevelIncrease address player =
  a [ class "btn ml1 h1" ]
    [
      i [
          class "fa fa-plus-circle"
        ]
        [ ]
    ]


formName : Signal.Address Action -> Player -> Html.Html
formName address player =
  div
    [ class "clearfix py1"
    ]
    [
      div [ class "col col-5" ] [ text "Name" ],
      div [ class "col col-7" ]
          [
            inputName address player
          ]
    ]


inputName : Signal.Address Action -> Player -> Html.Html
inputName address player =
  input
    [
      class "field-light col-12",
      value player.name
    ]
    [ ]