import Data.List
import Data.Maybe

solve xs =
    let
        lengthXs = length xs
        maxElement = maximum xs
        minElement = minimum xs
        maxIndex = fromJust $ elemIndex maxElement xs
        minIndex = fromJust $ elemIndex minElement (reverse xs)
     in
        maxIndex + minIndex - ((maxIndex + minIndex) `div` lengthXs)

main = interact $ show . solve . map (read :: String -> Int) . words . last . lines
