module Actions (..) where


import Hop
import Hop.Types exposing (Router, PathMatcher, Location)
import Router.Models exposing (..)

type Action
  = ApplyRoute ( Route, Location )