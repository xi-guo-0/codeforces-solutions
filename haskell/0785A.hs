import Control.Monad (replicateM)
import qualified Data.Map as Map

facesMap :: Map.Map String Int
facesMap =
    Map.fromList
        [ ("Tetrahedron", 4)
        , ("Cube", 6)
        , ("Octahedron", 8)
        , ("Dodecahedron", 12)
        , ("Icosahedron", 20)
        ]

getFaces :: String -> Int
getFaces name = Map.findWithDefault 0 name facesMap

main :: IO ()
main = do
    n <- readLn
    polyhedrons <- replicateM n getLine
    let totalFaces = sum $ map getFaces polyhedrons
    print totalFaces
