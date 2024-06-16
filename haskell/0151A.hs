{-
\|k * l|c * d|    p|
\|   nl|    1|   np| * n

\|   20|   80|  100|
\|    3|    1|    1| * 3

\| 1000|   19|   90|
\|    4|    1|    3| * 5
-}
process :: [Int] -> Int
process [n, k, l, c, d, p, nl, np] =
    minimum
        [ (k * l) `div` (nl * n)
        , (c * d) `div` n
        , p `div` (np * n)
        ]

main :: IO ()
main = interact $ show . process . map read . words
