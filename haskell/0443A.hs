import Data.Char (isLetter)
import Data.List (nub)

process :: String -> Int
process = length . nub . filter isLetter

main :: IO ()
main = interact $ show . process
