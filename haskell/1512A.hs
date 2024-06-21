import Control.Monad (replicateM)

findUniqueIndex :: [Int] -> Int
findUniqueIndex (x : y : z : xs)
    | x == y = if x /= z then 3 else 1 + findUniqueIndex (y : z : xs)
    | otherwise = if x == z then 2 else 1

main :: IO ()
main = do
    t <- readLn :: IO Int
    results <- replicateM t $ do
        _ <- getLine
        arr <- map read . words <$> getLine :: IO [Int]
        return $ findUniqueIndex arr
    mapM_ print results
