-- |
-- >>> elem' "a" ["a", "b", "c"]
-- True
-- >>> elem' "d" ["a", "b", "c"]
-- False
elem' :: Eq t => t -> [t] -> Bool
elem' _ [] = False
elem' e (x : xs) = (e == x) || elem' e xs

-- |
-- >>> nub' ["a", "a", "c"]
-- ["a","c"]
nub' :: Eq a => [a] -> [a]
nub' [] = []
nub' (x : xs)
  | x `elem` xs = nub' xs
  | otherwise = x : nub' xs

-- |
-- >>> isAsc [1, 2, 3]
-- True
-- >>> isAsc [1, 3, 2]
-- False
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x : y : xs) = (x <= y) && isAsc (y : xs)

-- |
-- >>> quickSort [1, 3, 2]
-- [1,2,3]
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x : xs) =
  let smallerOrEqual = [a | a <- xs, a <= x]
      bigger = [a | a <- xs, a > x]
   in quickSort smallerOrEqual ++ [x] ++ quickSort bigger
