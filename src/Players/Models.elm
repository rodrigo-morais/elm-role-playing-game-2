module Players.Models (..) where


type alias PlayerId =
  Int


type alias Player =
  {
    id : PlayerId,
    name : String,
    level : Int
  }


initialPlayer : Player
initialPlayer =
  {
    id = 0,
    name = "",
    level = 1
  }