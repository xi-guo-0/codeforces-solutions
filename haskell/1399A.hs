import Data.List (sort)

solve :: Int -> [(Int, [Int])] -> [Bool]
solve _ [] = []
solve t ((_, a) : cases) =
    canReduceToOneElement (sort a) : solve (t - 1) cases

canReduceToOneElement :: [Int] -> Bool
canReduceToOneElement [] = True
canReduceToOneElement [_] = True
canReduceToOneElement (x : y : xs)
    | abs (x - y) > 1 = False
    | otherwise = canReduceToOneElement (y : xs)

main :: IO ()
main = do
    t <- readLn :: IO Int
    cases <- sequence (replicate t readCase)
    let results = solve t cases
    mapM_ (putStrLn . showBool) results

readCase :: IO (Int, [Int])
readCase = do
    n <- readLn :: IO Int
    a <- fmap (map read . words) getLine :: IO [Int]
    return (n, a)

showBool :: Bool -> String
showBool True = "YES"
showBool False = "NO"
