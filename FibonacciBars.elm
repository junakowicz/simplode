module FibonacciBars where


import Color (blue, brown, green, orange, black, red, yellow)
import Fibonacci (fibonacci, fibonacciWithIndexes)
import Graphics.Collage (collage, filled, rect)
import Graphics.Element (down, flow, right)
import List (drop, head, length, map)
import Text (asText, fromString)

malColors = [ "mena", "Volom-boasary", "mavo", "maintso", "manga", "Mainty", "Volon-tsokola" ]

color n =
    let colors = [ red, orange, yellow, green, blue, black, brown ]
    in
        drop (n % (length colors)) colors |> head


bar (index, n) =
    flow right [
        collage (n*20) 20 [ filled (color index) (rect (toFloat n * 20) 20) ],
        asText n--,
     --   asText fromString drop n malColors
    ]


main = flow down <| map bar (fibonacciWithIndexes 10)
--[ red, orange, yellow, green, blue, pink, brown ]
--[ "mena", "Volom-boasary", "mavo", "maintso", "manga", "Mainty", "Volon-tsokola" ]