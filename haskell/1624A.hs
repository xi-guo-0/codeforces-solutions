import Control.Monad (replicateM_)

solveTestCases :: IO ()
solveTestCases = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        _ <- getLine
        arr <- fmap (map read . words) getLine :: IO [Int]
        print $ solveTestCase arr

solveTestCase :: [Int] -> Int
solveTestCase arr = maximum arr - minimum arr

main :: IO ()
main = solveTestCases
