import Control.Monad (forM_)

process :: String -> String
process str = str !! 0 : [ch | (ch, index) <- zip str [0..], odd index]

main :: IO ()
main = do
    t <- readLn :: IO Int
    input <- getContents
    let strings = lines input
    forM_ strings (putStrLn . process)
