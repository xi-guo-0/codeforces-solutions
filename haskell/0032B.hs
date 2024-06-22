process :: String -> String
process [] = []
process ('-' : '.' : xs) = '1' : process xs
process ('-' : '-' : xs) = '2' : process xs
process ('.' : xs) = '0' : process xs
process (x : xs) = x : process xs

main :: IO ()
main = interact process
