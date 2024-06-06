import Data.Char

process :: String -> String -> String
process n0 n1 = zipWith xorDigits n0 n1

xorDigits :: Char -> Char -> Char
xorDigits a b
    | a == b = '0'
    | otherwise = '1'

main :: IO ()
main = do
    n0 <- getLine
    n1 <- getLine
    putStrLn $ process n0 n1
