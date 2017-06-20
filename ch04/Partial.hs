-- file: ch04/Partial.hs
import Data.List

square :: [Int] -> [Int]
square xs = map f xs
    where f x = x * x

square2 :: [Int] -> [Int]
square2 xs = map (\x -> x*x) xs