import Control.Monad (replicateM_)
import Data.Char (toUpper)

process :: String -> Bool
process s = map toUpper s == "YES"

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        s <- getLine
        let result = process s
        putStrLn $ if result then "YES" else "NO"
