import Control.Monad (replicateM_)

process :: Int -> Int -> Int
process a b = ceiling (fromIntegral (abs (a - b)) / 10.0)

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        [a, b] <- fmap (map read . words) getLine :: IO [Int]
        let result = process a b
        print result
