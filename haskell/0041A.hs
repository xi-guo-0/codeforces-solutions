isCorrect :: String -> String -> Bool
isCorrect s t = s == reverse t

main :: IO ()
main = do
    s <- getLine
    t <- getLine
    putStrLn $ if isCorrect s t then "YES" else "NO"
