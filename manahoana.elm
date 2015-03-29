--module Manahoana where

--import Color (green)
--import Graphics.Element(..)
--import Text
--main : Element
--main =
--    Text.fromString "Manahoana izao"
--        |> Text.color green
--           |> Text.bold
--          |> Text.height 60
--          |> Text.rightAligned

import Markdown
main = Markdown.toElement """
# Manahoana Izao
---
halo swiat
---
pod kreska
"""