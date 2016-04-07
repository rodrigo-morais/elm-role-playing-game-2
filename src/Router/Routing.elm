module Router.Routing (..) where


import Hop
import Hop.Matchers exposing (match1, match2)
import Hop.Navigate exposing (navigateTo)
import Hop.Types exposing (Router, PathMatcher)


import Router.Models exposing (..)


matchers : List (PathMatcher Route)
matchers =
  [ ]


router : Router Route
router =
  Hop.new
    { matchers = matchers
    , notFound = NotFoundRoute
    }