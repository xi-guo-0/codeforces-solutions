import Control.Monad (replicateM_)

process :: Int -> [Int] -> Int
process a xs = length $ filter (> a) xs

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        [a, b, c, d] <- fmap (map read . words) getLine :: IO [Int]
        print $ process a [b, c, d]
