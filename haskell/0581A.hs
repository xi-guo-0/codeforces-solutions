process :: Int -> Int -> (Int, Int)
process a b = (maxDifferentDays, maxSameDays)
  where
    maxDifferentDays = min a b
    remainingRed = a - maxDifferentDays
    remainingBlue = b - maxDifferentDays
    maxSameDays = (remainingRed + remainingBlue) `div` 2

main :: IO ()
main = do
    input <- getLine
    let [a, b] = map read $ words input :: [Int]
        (maxDiff, maxSame) = process a b
    putStrLn $ show maxDiff ++ " " ++ show maxSame
