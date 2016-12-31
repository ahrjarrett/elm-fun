module Main exposing (..)

import Html exposing (..)


type alias Dog =
  { name : String
  , age : Int
  }

-- conventional formatting for constructing k/v pairs:
dog =
  { name = "Grizzly"
  , age = 8
  }

-- throws type error w/o toString
renderDog : Dog -> String
renderDog dog =
  dog.name ++ ", " ++ (toString dog.age)

main =
  text <| renderDog dog
