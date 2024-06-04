import Control.Monad (replicateM)

process :: [[Int]] -> Int
process = sum . map (\[p, q] -> if p + 2 <= q then 1 else 0)

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
