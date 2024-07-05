isPrime :: Int -> Bool
isPrime n
    | n <= 1 = False
    | otherwise = all (\x -> n `mod` x /= 0) [2 .. sqrtN]
  where
    sqrtN = floor (sqrt (fromIntegral n))

findNextPrime :: Int -> Int
findNextPrime n
    | isPrime (n + 1) = n + 1
    | otherwise = findNextPrime (n + 1)

main :: IO ()
main = do
    input <- getLine
    let [n, m] = map read (words input)
    if findNextPrime n == m
        then putStrLn "YES"
        else putStrLn "NO"
