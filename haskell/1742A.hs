import Control.Monad

process = isSumOfOthers

isSumOfOthers :: Int -> Int -> Int -> Bool
isSumOfOthers a b c = a == b + c || b == a + c || c == a + b

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        [a, b, c] <- fmap (map read . words) getLine :: IO [Int]
        let result = process a b c
        putStrLn $ if result then "YES" else "NO"
