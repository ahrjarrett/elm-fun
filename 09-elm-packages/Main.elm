-- no longer works, String.Extra package not updated for elm 0.18
-- make your own use of a String-related package here:

module Main exposing (..)

import Html exposing (..)
-- import String.Extra exposing (pluralize)


items =
  [ "Saffron", "Ratatouille" ]

main =
  div []
      [ h1 [] [
        text <| toString <| items
      ]

