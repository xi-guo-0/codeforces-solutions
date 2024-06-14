policeRecruits :: [Int] -> Int -> Int -> Int
policeRecruits [] manpower untreated = untreated
policeRecruits (x : xs) manpower untreated
    | x == -1 && manpower > 0 = policeRecruits xs (manpower - 1) untreated
    | x == -1 && manpower <= 0 = policeRecruits xs manpower (untreated + 1)
    | otherwise = policeRecruits xs (manpower + x) untreated

main :: IO ()
main = do
    _ <- getLine
    nums <- getLine
    let recruits = policeRecruits (map read (words nums)) 0 0
    print recruits
