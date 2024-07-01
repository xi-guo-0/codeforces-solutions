import Data.Ratio

main :: IO ()
main = do
    input <- getLine
    let [y, w] = map read (words input) :: [Int]
        maxRoll = max y w
        successOutcomes = 6 - maxRoll + 1
        probability = successOutcomes % 6
    putStrLn $ show (numerator probability) ++ "/" ++ show (denominator probability)
