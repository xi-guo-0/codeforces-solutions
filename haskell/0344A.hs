import Control.Monad (replicateM)
import Data.List (groupBy)

process :: [Int] -> Int
process xs = length $ groupBy (==) xs

readInt :: IO Int
readInt = readLn

readIntArray :: Int -> IO [Int]
readIntArray n = replicateM n readInt

main :: IO ()
main = do
    n <- readInt
    magnets <- readIntArray n
    print $ process magnets
