main :: IO ()
main = do
    input <- getLine
    let n = read input :: Int
    let feelings = [if even i then "I hate" else "I love" | i <- [0 .. n - 1]]
    let result = unwords (addConnector feelings) ++ " it"
    putStrLn result

addConnector :: [String] -> [String]
addConnector [] = []
addConnector [x] = [x]
addConnector (x : xs) = x : "that" : addConnector xs
