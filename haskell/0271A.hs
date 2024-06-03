import Data.List (nub)

hasDistinctDigits :: Int -> Bool
hasDistinctDigits year =
    let digits = show year
     in length digits == length (nub digits)

nextBeautifulYear :: Int -> Int
nextBeautifulYear year =
    let nextYear = year + 1
     in if hasDistinctDigits nextYear
            then nextYear
            else nextBeautifulYear nextYear

main :: IO ()
main = do
    input <- getLine
    let year = read input :: Int
    print $ nextBeautifulYear year
