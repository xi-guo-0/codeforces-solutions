process :: Int -> Int -> Int
process n 0 = n
process n k = process (if n `mod` 10 /= 0 then n - 1 else n `div` 10) (k - 1)

handleIO :: String -> String
handleIO input =
    let [n, k] = map read (words input) :: [Int]
     in show (process n k)

main :: IO ()
main = interact handleIO
