main :: IO ()
main = do
    _ <- getLine
    s <- getLine
    print $ stonesOnTheTable s

stonesOnTheTable :: String -> Int
stonesOnTheTable [] = 0
stonesOnTheTable (a:[]) = 0
stonesOnTheTable (a:b:xs) =
    (if a == b then 1 else 0) + stonesOnTheTable (b:xs)
