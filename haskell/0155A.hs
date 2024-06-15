import Control.Monad

process :: [Int] -> Int
process scores = countChanges (tail scores) (head scores) (head scores) 0 0
  where
    countChanges :: [Int] -> Int -> Int -> Int -> Int -> Int
    countChanges [] _ _ maxChanges minChanges = maxChanges + minChanges
    countChanges (x : xs) currentMax currentMin maxChanges minChanges
        | x > currentMax = countChanges xs x currentMin (maxChanges + 1) minChanges
        | x < currentMin = countChanges xs currentMax x maxChanges (minChanges + 1)
        | otherwise = countChanges xs currentMax currentMin maxChanges minChanges

main :: IO ()
main = do
    n <- readLn :: IO Int
    input <- getLine
    let scores = map read (words input)
    let result = process scores
    print result
