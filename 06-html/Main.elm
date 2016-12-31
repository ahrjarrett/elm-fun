module Main exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)

type alias Ship =
  { name : String
  , model : String
  , cost : Int
  }

ships =
  [ { name = "Honda", cost = 151151 }
  , { name = "Camry", cost = 23333 }
  , { name = "RV", cost = 1000000 }
  ]

renderShip ship =
  li [] [ text ship.name
        , text ", "
        , b [] [ text <| toString ship.cost ]
        ]

-- Tuple skeleton : [(,)]
renderShips ships =
  div
    [ style
      [ ( "font-family", "-apple-system" )
      , ( "padding", "1em" )
      ]
    ]
    [ h1 [] [text "Our Vehicles" ]
    , ul [] (List.map renderShip ships)
    ]


main = renderShips ships

