import Control.Monad (replicateM_)

process :: Int -> Int -> Int -> Bool
process a b c = a + b == c

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        [a, b, c] <- map read . words <$> getLine :: IO [Int]
        putStrLn $ if process a b c then "+" else "-"
