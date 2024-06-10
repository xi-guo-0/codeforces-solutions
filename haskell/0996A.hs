change :: Int -> Int
change balance = calc [100, 20, 10, 5, 1] balance

calc :: [Int] -> Int -> Int
calc bills balance = tailRecCalc bills balance 0

tailRecCalc :: [Int] -> Int -> Int -> Int
tailRecCalc [] _ total = total
tailRecCalc (d : bills) balance total =
    let num = balance `div` d
     in tailRecCalc bills (balance - num * d) (total + num)

main :: IO ()
main = interact (show . change . read)
