findN [k, r] = go 1
  where
    go n
        | hasZeroOrR ((n * k) `mod` 10) = n
        | otherwise = go (n + 1)

    hasZeroOrR :: Integer -> Bool
    hasZeroOrR num = num == 0 || num == r

main :: IO ()
main = interact $ show . findN . map read . words
