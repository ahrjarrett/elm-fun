module Main exposing (..)

import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Events exposing (..)

-- 4 parts:

model =
  { showFace = False }

-- these are both custom values:
type Msg =
  ShowFace

-- use of model_ instead of model differentiates values:
-- (notice that update is a pure function)
update msg model_ =
  case msg of
    ShowFace -> { model_ | showFace = True }

-- `if` in elm is not a statement, it is an expression
-- which is why the `else` branch is necessary:
view model_ =
  div []
      [ h1 [] [ text "face generator"]
      , button [onClick ShowFace] [ text "face me" ]
      , if model_.showFace then
          text "( ͡° ͜ʖ ͡°)"
          else
            text ""
      ]

main =
  beginnerProgram
    { model = model
    , update = update
    , view = view
    }

