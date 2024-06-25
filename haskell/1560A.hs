import Control.Monad (mapM_, replicateM)

isDisliked :: Int -> Bool
isDisliked x = mod x 3 == 0 || mod x 10 == 3

likedSequence :: [Int]
likedSequence = filter (not . isDisliked) [1 ..]

solve :: Int -> [Int] -> [Int]
solve t = map (\k -> likedSequence !! (k - 1))

main :: IO ()
main = do
    t <- readLn :: IO Int
    cases <- replicateM t (readLn :: IO Int)
    let results = solve t cases
    mapM_ print results
