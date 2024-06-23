import Control.Monad (guard)

isPrime :: Int -> Bool
isPrime n
    | n <= 1 = False
    | n == 2 = True
    | even n = False
    | otherwise = not $ any (\d -> n `mod` d == 0) [3, 5 .. limit]
  where
    limit = floor (sqrt (fromIntegral n))

findCompositePair :: Int -> (Int, Int)
findCompositePair n = head $ do
    x <- [4 .. (n - 4)]
    let y = n - x
    guard (not (isPrime x) && not (isPrime y))
    return (x, y)

main :: IO ()
main = do
    n <- readLn
    let (x, y) = findCompositePair n
    putStrLn $ show x ++ " " ++ show y
