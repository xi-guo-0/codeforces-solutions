import Control.Monad
import Data.Bits (Bits (xor))
import Data.List (foldl1')

solve :: [Int] -> Int
solve = foldl1' xor

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        xs <- map read . words <$> getLine :: IO [Int]
        print $ solve xs
