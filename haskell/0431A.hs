import Control.Monad (replicateM)
import Data.Char (digitToInt)

main :: IO ()
main = do
    [a1, a2, a3, a4] <- map read . words <$> getLine
    s <- getLine
    let calories = sum $ map (\c -> [a1, a2, a3, a4] !! (digitToInt c - 1)) s
    print calories
