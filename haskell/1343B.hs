import Control.Monad (replicateM_)

solve :: Int -> IO ()
solve n
    | mod n 4 /= 0 = putStrLn "No"
    | otherwise = do
        putStrLn "YES"
        let half = div n 2
        let firstHalf = take half [2, 4 ..]
        let secondHalf = take (half - 1) [1, 3 ..] ++ [n + half - 1]
        putStrLn $ unwords (map show (firstHalf ++ secondHalf))

main :: IO ()
main = do
    t <- readLn
    replicateM_ t $ do
        n <- readLn
        solve n
