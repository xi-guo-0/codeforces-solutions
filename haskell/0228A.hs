import Data.List

process :: [Int] -> Int
process xs = 4 - (length $ nub xs)

readIntArray :: IO [Int]
readIntArray = map read . words <$> getLine

main :: IO ()
main = do
    colors <- readIntArray
    print $ process colors
