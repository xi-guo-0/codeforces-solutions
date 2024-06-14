calculateDifference :: (Ord a, Num a) => [a] -> a
calculateDifference numbers = maximum numbers - minimum numbers

main :: IO ()
main = interact $ show . calculateDifference . map read . words
