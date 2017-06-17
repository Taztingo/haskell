-- file: ch04/exercises.hs
import Data.Maybe

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