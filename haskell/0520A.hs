import Data.Char (toLower)
import Data.List (nub)

isPangram :: String -> Bool
isPangram str = length (nub (filter (`elem` ['a' .. 'z']) (map toLower str))) == 26

main :: IO ()
main = do
    _ <- getLine
    str <- getLine
    putStrLn $ if isPangram str then "YES" else "NO"
