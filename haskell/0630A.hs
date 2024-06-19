process :: Int -> Int
process x = if x == 1 then 5 else 25

main :: IO ()
main = interact $ show . process . read
