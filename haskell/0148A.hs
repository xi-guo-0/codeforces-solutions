process :: [Int] -> Int -> Int
process ts d = length $ filter (\x -> any (\y -> mod x y == 0) ts) [1 .. d]

readInt :: IO Int
readInt = readLn

main :: IO ()
main = do
    k <- readInt
    l <- readInt
    m <- readInt
    n <- readInt
    d <- readInt
    print $ process [k, l, m, n] d
