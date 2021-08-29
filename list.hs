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

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) =
  let smallerOrEqual = [a | a <- xs, a <= x]
      bigger = [a | a <- xs, a > x]
   in quickSort smallerOrEqual ++ [x] ++ quickSort bigger
