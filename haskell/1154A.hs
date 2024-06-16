import Data.List (sort)

process :: [Int] -> [Int]
process nums =
    let sortedNums = sort nums
        maxNum = last sortedNums
     in map (\i -> maxNum - sortedNums !! i) [0 .. 2]

main :: IO ()
main = do
    input <- getLine
    let nums = map read (words input) :: [Int]
        differences = process nums
    putStrLn (unwords (map show differences))
