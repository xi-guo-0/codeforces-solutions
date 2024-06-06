process = average

average :: [Int] -> Double
average ps = fromIntegral (sum ps) / fromIntegral (length ps)

readIntArray :: IO [Int]
readIntArray = map read . words <$> getLine

main :: IO ()
main = do
    _ <- getLine
    ps <- readIntArray
    print $ process ps
