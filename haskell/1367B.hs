import Control.Monad (replicateM_)

solve :: [Int] -> Int
solve xs = if evenMisplaced == oddMisplaced then evenMisplaced else -1
  where
    misplacedCounts = foldr (\(i, x) (evenC, oddC) -> if even i == even x then (evenC, oddC) else if even i then (evenC + 1, oddC) else (evenC, oddC + 1)) (0, 0) $ zip [0 ..] xs
    (evenMisplaced, oddMisplaced) = misplacedCounts

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        _ <- getLine
        arr <- map read . words <$> getLine
        print $ solve arr
