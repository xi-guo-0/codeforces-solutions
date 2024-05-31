import Data.Char (toLower, toUpper)

main = interact capitalizeFirst

capitalizeFirst :: String -> String
capitalizeFirst [] = []
capitalizeFirst (x : xs) = toUpper x : xs
