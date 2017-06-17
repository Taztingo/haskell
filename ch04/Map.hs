-- file: ch04/Map.hs
import Data.Char (toUpper)

square :: [Double] -> [Double]
square [] = []
square (x:xs) = x*x : square xs

upperCase :: String -> String
upperCase [] = []
upperCase (x:xs) = toUpper x : upperCase xs