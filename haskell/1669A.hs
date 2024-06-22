import Control.Monad

getDivision :: Int -> String
getDivision rating
    | rating >= 1900 = "Division 1"
    | rating >= 1600 = "Division 2"
    | rating >= 1400 = "Division 3"
    | otherwise = "Division 4"

main :: IO ()
main = do
    t <- readLn :: IO Int
    replicateM_ t $ do
        rating <- readLn :: IO Int
        putStrLn $ getDivision rating
