module Main exposing (..)

import Html exposing (text)
import List

type alias Dog =
  {
  name: String
  , age: Int
  }

dogs =
  [ { name = "Ashton", age = 5 }
  , { name = "Grizzly", age = 8 }
  ]

-- new syntax here:
names : List Dog -> List String
names doggies = List.map (\dog -> dog.name) dogs

-- `Maybe` introduced:
findDog : String -> List Dog -> Maybe Dog
findDog name doggies = List.foldl
  (\dog memo ->
    case memo of
      Just _ ->
        memo

      Nothing ->
        if dog.name == name then
          Just dog
        else
          Nothing
  )
  Nothing
  doggies

main =
  text <| toString <| findDog "Grizzly" dogs
