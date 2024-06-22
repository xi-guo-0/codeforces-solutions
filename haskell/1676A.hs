import Control.Monad (replicateM)

sumOfDigits :: String -> Int
sumOfDigits = sum . map (read . (: []))

isLucky :: String -> String
isLucky ticket =
    let (firstThree, lastThree) = splitAt 3 ticket
        sumFirstThree = sumOfDigits firstThree
        sumLastThree = sumOfDigits lastThree
     in if sumFirstThree == sumLastThree
            then "YES"
            else "NO"

main :: IO ()
main = do
    t <- readLn :: IO Int
    tickets <- replicateM t getLine
    let results = map isLucky tickets
    mapM_ putStrLn results
