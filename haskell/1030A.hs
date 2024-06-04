data Difficulty = EASY | HARD
    deriving (Show)

process :: [Int] -> Difficulty
process xs = if all (== 0) xs then EASY else HARD

main :: IO ()
main = do
    _ <- getLine
    xs <- map read . words <$> getLine
    print $ process xs
