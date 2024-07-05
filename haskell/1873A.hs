import Control.Monad (replicateM_)

solve :: String -> Bool
solve cards = or (zipWith (==) cards "abc")

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        line <- getLine
        let cards = filter (/= '\n') line
        putStrLn $ if solve cards then "YES" else "NO"
