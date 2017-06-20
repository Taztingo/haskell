-- file: ch04/exercises.hs
import Data.Maybe
import Data.Char (digitToInt)

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:xs) = Just xs

safeLast :: [a] -> Maybe a
safeLast [] = Nothing
safeLast (xs) = safeHead (reverse xs)

myInit :: [a] -> [a]
myInit [] = []
myInit (x:xs) = if (null xs)
                  then []
                  else x : (myInit xs)

safeInit :: [a] -> Maybe [a]
safeInit xs = Just(myInit xs)



asInt_fold :: String -> Int
asInt_fold (x:xs) | x == '-' = -1 * foldl myDigitToInt 0 xs
                  | x == '-' && xs == [] = 0
                  | otherwise = foldl myDigitToInt 0 (x:xs)
    where myDigitToInt acc y | y == '.' = error "Not an integer."
                             | otherwise  = (acc * 10) + (digitToInt y)
asInt_fold [] = 0

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat xs = foldr (++) [] xs

myTakeWhile :: (a -> Bool) -> [a] -> [a]
myTakeWhile _ [] = []
myTakeWhile f (x:xs) | f x = x : myTakeWhile f xs
                     | otherwise = []

myTakeWhile2 :: (a -> Bool) -> [a] -> [a]
myTakeWhile2 _ [] = []
myTakeWhile2 f xs = foldr step [] xs
    where step x ys | f x = x : ys
                    | otherwise = []