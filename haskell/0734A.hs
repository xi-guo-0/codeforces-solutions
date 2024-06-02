data Winner = Anton | Danik | Friendship
    deriving (Show, Eq, Enum, Bounded)

process :: String -> Winner
process s =
    case compare na nd of
        GT -> Anton
        LT -> Danik
        EQ -> Friendship
  where
    na = length $ filter (== 'A') s
    nd = length $ filter (== 'D') s

main :: IO ()
main = do
    _ <- getLine
    s <- getLine
    print $ process s
