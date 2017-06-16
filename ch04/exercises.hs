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

safeInit :: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit (xs) = Just (init xs)
