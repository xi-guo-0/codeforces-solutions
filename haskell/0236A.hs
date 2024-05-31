import Data.List (nub)

main = interact recognizeGender

countUniqueChars :: String -> Int
countUniqueChars = length . nub . filter (/= '\n')

recognizeGender :: String -> String
recognizeGender input =
    if odd $ countUniqueChars input
        then "IGNORE HIM!"
        else "CHAT WITH HER!"
