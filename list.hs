element :: Eq t => t -> [t] -> Bool
element _ [] = False
element e (x : xs) = (e == x) || element e xs

nub :: Eq a => [a] -> [a]
nub [] = []
nub (x : xs)
  | x `elem` xs = nub xs
  | otherwise = x : nub xs

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x : y : xs) = (x <= y) && isAsc (y : xs)