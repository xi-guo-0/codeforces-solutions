import Control.Monad (replicateM_)
import Data.List (sortBy)
import Data.Ord (Down (..), comparing)

process :: [Int] -> Bool
process xs = 10 <= head ys + ys !! 1
  where
    ys = sortBy (comparing Down) xs

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        xs <- map read . words <$> getLine
        putStrLn (if process xs then "YES" else "NO")
