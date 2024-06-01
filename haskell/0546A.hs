process :: Int -> Int -> Int -> Int
process k n w = max (w * (w + 1) `div` 2 * k - n) 0

main :: IO ()
main = interact handleInput

handleInput :: String -> String
handleInput input =
    let [a, b, c] = map read (words input) :: [Int]
     in show (process a b c)
