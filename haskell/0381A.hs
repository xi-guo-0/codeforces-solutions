import Data.List

gameScores :: [Int] -> (Int, Int)
gameScores cards = playGame cards 0 0 True
  where
    playGame :: [Int] -> Int -> Int -> Bool -> (Int, Int)
    playGame [] scoreS scoreD _ = (scoreS, scoreD)
    playGame remaining scoreS scoreD isSerejaTurn
        | isSerejaTurn =
            let maxCard = maximum [head remaining, last remaining]
                newScoreS = scoreS + maxCard
                remaining' = if head remaining == maxCard then tail remaining else init remaining
             in playGame remaining' newScoreS scoreD False
        | otherwise =
            let maxCard = maximum [head remaining, last remaining]
                newScoreD = scoreD + maxCard
                remaining' = if head remaining == maxCard then tail remaining else init remaining
             in playGame remaining' scoreS newScoreD True

main :: IO ()
main = do
    _ <- getLine
    cards <- map read . words <$> getLine
    let (scoreS, scoreD) = gameScores cards
    putStrLn $ show scoreS ++ " " ++ show scoreD
