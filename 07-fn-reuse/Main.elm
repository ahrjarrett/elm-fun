module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

numbers =
  [ 1, 2, 3, 4, 5 ]

-- lowercase param makes it a variable
-- which is why both fruits and ints work:
printThing : thing -> Html msg
printThing thing =
  li [] [ text <| toString thing ]

fruits =
  [ { name = "bunanuh" }, { name = "necTuring" } ]

main =
  ul [] (List.map printThing fruits)

