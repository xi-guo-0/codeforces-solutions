import Control.Monad

getIntList :: IO [Int]
getIntList = do
    line <- getLine
    return $ map read $ words line

main :: IO ()
main = do
    n <- readLn :: IO Int
    skills <- getIntList

    let indices = zip [1 .. n] skills
        progList = filter (\(_, t) -> t == 1) indices
        mathList = filter (\(_, t) -> t == 2) indices
        peList = filter (\(_, t) -> t == 3) indices

    let teamsCount = minimum [length progList, length mathList, length peList]

    if teamsCount == 0
        then putStrLn "0"
        else do
            putStrLn $ show teamsCount
            forM_ [1 .. teamsCount] $ \i -> do
                let p = fst (progList !! (i - 1))
                    m = fst (mathList !! (i - 1))
                    e = fst (peList !! (i - 1))
                putStrLn $ unwords $ map show [p, m, e]
