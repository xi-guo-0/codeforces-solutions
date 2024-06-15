import Control.Monad (when)

process :: Int -> Int -> Int
process n k = go 0 0
  where
    remainingTime = 240 - k

    go numProblems totalTime
        | numProblems <= n && totalTime + 5 * numProblems <= remainingTime =
            go (numProblems + 1) (totalTime + 5 * numProblems)
        | otherwise = numProblems - 1

main :: IO ()
main = do
    input <- getLine
    let [n, k] = map read $ words input
    let result = process n k
    print result
