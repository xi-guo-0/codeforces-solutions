import Control.Monad (replicateM)

main :: IO ()
main = do
    n <- readLn
    games <- replicateM n $ do
        line <- getLine
        let [mishka, chris] = map read (words line) :: [Int]
        return (mishka, chris)
    let (mWins, cWins) = foldl (\(m, c) (mishka, chris) -> if mishka > chris then (m + 1, c) else if chris > mishka then (m, c + 1) else (m, c)) (0, 0) games
    if mWins > cWins
        then putStrLn "Mishka"
        else
            if cWins > mWins
                then putStrLn "Chris"
                else putStrLn "Friendship is magic!^^"
