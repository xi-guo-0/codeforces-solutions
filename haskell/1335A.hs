import Control.Monad

process :: Int -> Int
process n = div (n - 1) 2

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        n <- readLn :: IO Int
        print $ process n
