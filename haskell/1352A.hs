import Control.Monad (replicateM)

process = decompose

decompose :: Int -> [Int]
decompose n = filter (/= 0) $ zipWith (\d p -> d * (10 ^ p)) digits [0 ..]
  where
    digits = map (read . (: [])) . reverse . show $ n

main :: IO ()
main = do
    t <- readLn
    testCases <- replicateM t readLn
    let results = map process testCases
    mapM_
        ( \res -> do
            print (length res)
            putStrLn $ unwords (map show res)
        )
        results
