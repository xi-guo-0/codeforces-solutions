import qualified Data.Set as Set

process :: Int -> [Int] -> [Int] -> Bool
process n xLevels yLevels = Set.fromList [1 .. n] `Set.isSubsetOf` Set.fromList (xLevels ++ yLevels)

readInt :: IO Int
readInt = readLn

readIntArray :: IO [Int]
readIntArray = map read . words <$> getLine

main :: IO ()
main = do
    n <- readInt
    xLevels <- readIntArray
    yLevels <- readIntArray
    putStrLn $
        if process n (tail xLevels) (tail yLevels)
            then "I become the guy."
            else "Oh, my keyboard!"
