import Data.Set (Set)
import qualified Data.Set as Set

main :: IO ()
main = do
    _ <- getLine 
    let codeforces = Set.fromList "codeforces"
    inputs <- getContents
    let results = map (\char -> if Set.member char codeforces then "YES" else "NO") (filter (/= '\n') inputs)
    mapM_ putStrLn results
