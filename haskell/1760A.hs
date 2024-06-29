import Data.List (sort)

main :: IO ()
main = do
    t <- readLn
    sequence_ $ replicate t $ do
        xs <- fmap (map read . words) getLine
        print $ middleNumber xs

middleNumber :: [Int] -> Int
middleNumber xs = sort xs !! 1
