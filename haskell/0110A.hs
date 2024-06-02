process :: Int -> Bool
process = nearlyLuckyNumber

nearlyLuckyNumber :: Int -> Bool
nearlyLuckyNumber = luckyNumber . luckyDigitsCount

luckyNumber :: Int -> Bool
luckyNumber n = all (`elem` ['4', '7']) (show n)

luckyDigitsCount :: Int -> Int
luckyDigitsCount n = length $ filter (`elem` ['4', '7']) (show n)

handleIO :: String -> String
handleIO input =
    let n = read input :: Int
     in if process n then "YES" else "NO"

main :: IO ()
main = interact handleIO
