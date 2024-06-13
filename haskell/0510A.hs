main :: IO ()
main = do
    input <- getLine
    let [n, m] = map read (words input) :: [Int]
    let pattern = generatePattern n m
    mapM_ putStrLn pattern

generatePattern :: Int -> Int -> [String]
generatePattern n m = [generateRow i m | i <- [1 .. n]]

generateRow :: Int -> Int -> String
generateRow i m
    | odd i = replicate m '#'
    | even i && mod i 4 == 0 = '#' : replicate (m - 1) '.'
    | otherwise = replicate (m - 1) '.' ++ "#"
