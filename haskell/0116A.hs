import Control.Monad (replicateM)

process = maxPassengers

maxPassengers :: [[Int]] -> Int
maxPassengers = maximum . scanl (\acc [a, b] -> acc + b - a) 0

readInt :: IO Int
readInt = readLn

readIntArray :: IO [Int]
readIntArray = map read . words <$> getLine

readArrays :: Int -> IO [[Int]]
readArrays n = replicateM n readIntArray

main :: IO ()
main = do
    n <- readInt
    arrays <- readArrays n
    print $ process arrays
