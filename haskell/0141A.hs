import Data.Map (Map, fromListWith)

countChars :: String -> Map Char Int
countChars = fromListWith (+) . map (\c -> (c, 1))

main :: IO ()
main = do
    name1 <- getLine
    name2 <- getLine
    pile <- getLine
    let combinedNames = name1 ++ name2
        countCombined = countChars combinedNames
        countPile = countChars pile
    putStrLn (if countCombined == countPile then "YES" else "NO")
