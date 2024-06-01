main :: IO ()
main = interact (show . determineMinimumSteps . read)

determineMinimumSteps :: Int -> Int
determineMinimumSteps x = x `div` 5 + if x `mod` 5 == 0 then 0 else 1
