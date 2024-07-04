import Control.Monad

solve :: Int -> Int -> Int -> Int
solve x y k = div (k - y) x * x + y

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        [x, y, k] <- map read . words <$> getLine :: IO [Int]
        print $ solve x y k
