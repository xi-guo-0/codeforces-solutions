process :: Int -> [Int] -> Int
process k ys =
    let eligible = filter (\y -> y + k <= 5) ys
     in div (length eligible) 3

readInts :: IO [Int]
readInts = map read . words <$> getLine

main :: IO ()
main = do
    [n, k] <- readInts
    ys <- readInts
    print $ process k ys
