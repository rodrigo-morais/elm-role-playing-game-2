module Router.Routing (..) where


import Hop
import Hop.Matchers exposing (match1, match2)
import Hop.Navigate exposing (navigateTo)
import Hop.Types exposing (Router, PathMatcher)


import Router.Models exposing (..)
import Router.Actions exposing (..)
import Router.Update exposing (..)
import Router.View exposing (..)


type alias RouteModel = Router.Models.RouteModel
type alias Route = Router.Models.Route
initialRouteModel : RouteModel
initialRouteModel = Router.Models.initialRouteModel


type alias Action = Router.Actions.Action


view = Router.View.view


update = Router.Update.update


inputRouterSignal : Signal Action
inputRouterSignal =
  Signal.map ApplyRoute router.signal


indexMatcher : PathMatcher Route
indexMatcher =
  match1 PlayersRoute "/"


playersMatcher : PathMatcher Route
playersMatcher =
  match1 PlayersRoute "/players"


matchers : List (PathMatcher Route)
matchers =
  [ indexMatcher
  , playersMatcher
  ]


router : Router Route
router =
  Hop.new
    { matchers = matchers
    , notFound = NotFoundRoute
    }