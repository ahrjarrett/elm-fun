-- no longer works, package not updated for elm 0.18
-- make your own use of a String-related package here:

module Main exposing (..)

import Html exposing (..)

items =
  [ "Saffron", "Ratatouille" ]

main =
  div []
      [ h1 [] [ text <| "Kitchen Items" ]
      , text <| toString <| items
      ]

