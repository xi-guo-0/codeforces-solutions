import Data.Array (array, elems)
import Data.List (intercalate)

process :: [Int] -> Int -> [Int]
process presents n = elems $ array (1, n) [(presents !! (i - 1), i) | i <- [1 .. n]]

readInt :: IO Int
readInt = readLn

readIntArray :: IO [Int]
readIntArray = map read . words <$> getLine

main :: IO ()
main = do
    n <- readInt
    presents <- readIntArray
    let result = process presents n
    putStrLn $ intercalate " " (map show result)
