import Data.Char (isLower, toLower, toUpper)

process :: String -> String
process s =
    let lowerCounts = length $ filter isLower s
        upperCounts = length s - lowerCounts
        chooseCase = if lowerCounts >= upperCounts then toLower else toUpper
     in map chooseCase s

main :: IO ()
main = interact $ process . filter (/= '\n')
