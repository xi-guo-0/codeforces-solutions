process :: Int -> Int
process n =
    if mod n 2 == 1
        then div (-n - 1) 2
        else div (n + 1) 2

readInt :: IO Int
readInt = readLn

main :: IO ()
main = do
    n <- readInt
    print $ process n
