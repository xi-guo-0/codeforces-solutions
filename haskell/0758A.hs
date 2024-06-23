process :: [Int] -> Int
process xs = sum $ map (maximum xs -) xs

main :: IO ()
main = do
    _ <- getLine
    burles <- map read . words <$> getLine :: IO [Int]
    print $ process burles
