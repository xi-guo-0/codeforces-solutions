process = minimumWidthOfTheRoad

minimumWidthOfTheRoad :: [Int] -> Int -> Int
minimumWidthOfTheRoad heights threshold = sum $ map (\height -> if height <= threshold then 1 else 2) heights

readIntArray :: IO [Int]
readIntArray = map read . words <$> getLine

main :: IO ()
main = do
    [_, h] <- readIntArray
    heights <- readIntArray
    print $ process heights h
