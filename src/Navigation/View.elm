module Navigation.View (..) where


import Html exposing (..)
import Html.Attributes exposing (class)


view : Html.Html
view =
  div [ class "clearfix mb2 white bg-black" ]
      [
        div [ class "left p1" ]
            [ listBtn ]
      ]

listBtn : Html.Html
listBtn =
  button  [
            class "btn regular"
          ]
          [
            i [ class "fa fa-chevron-left mr1" ]
              [],
            text "List"
          ]
