growth :: Int -> Int -> Int -> Int
growth a b years
    | a > b = years
    | otherwise = growth (a * 3) (b * 2) (years + 1)

main :: IO ()
main = do
    [a, b] <- map read . words <$> getLine
    let years = growth a b 0
    print years
