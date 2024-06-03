import Data.List (isPrefixOf)

step :: String -> String
step [] = []
step [x] = [x]
step ('B' : 'G' : xs) = 'G' : 'B' : step xs
step (x : xs) = x : step xs

simulate :: Int -> String -> String
simulate 0 queue = queue
simulate t queue = simulate (t - 1) (step queue)

main :: IO ()
main = do
    input <- getLine
    let [n, t] = map read (words input) :: [Int]
    queue <- getLine
    putStrLn (simulate t queue)
