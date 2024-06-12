import Control.Monad (replicateM)
import Data.List (tails)

process = countMatchingPairs

countMatchingPairs :: [(Int, Int)] -> Int
countMatchingPairs teams = sum [1 | (h1, a1) <- teams, (h2, a2) <- teams, h1 /= h2, h1 == a2]

main :: IO ()
main = do
    n <- readLn
    teams <- replicateM n $ do
        line <- getLine
        let [home, away] = map read (words line)
        return (home, away)
    let pairsCount = process teams
    print pairsCount
