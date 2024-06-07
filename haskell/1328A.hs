import Control.Monad (replicateM)
import Data.List (intercalate)

minMovesToMakeDivisible :: Integer -> Integer -> Integer
minMovesToMakeDivisible a b
    | remainder == 0 = 0
    | otherwise = b - remainder
  where
    remainder = a `mod` b

main :: IO ()
main = do
    t <- readLn
    cases <- replicateM t $ do
        line <- getLine
        let [a, b] = map read (words line)
        return (a, b)
    let results = map (uncurry minMovesToMakeDivisible) cases
    putStrLn $ intercalate "\n" (map show results)
