-- file: ch04/Fold.hs

myFoldl:: (a -> b -> a) -> a -> [b] -> a
myFoldl step zero (x:xs) = myFoldl step (step zero x) xs
myFoldl _ zero [] = zero

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr step zero (x:xs) = step x (myFoldr step zero xs)
myFoldr _ zero [] = zero

myMap :: (a -> b) -> [a] -> [b]
myMap f xs = foldr step [] xs
    where step x ys = f x : ys

identity :: [a] -> [a]
identity xs = foldr (:) [] xs

append :: [a] -> [a] -> [a]
append xs ys = foldr (++) ys xs