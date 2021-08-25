element :: Eq t => t -> [t] -> Bool
element _ [] = False
element e (x : xs) = (e == x) || element e xs
