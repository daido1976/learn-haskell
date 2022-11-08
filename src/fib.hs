-- |
-- >>> fib 10
-- 55
--
-- >>> fib 5
-- 5
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- |
-- >>> memorizedFib 10
-- 55
--
-- >>> memorizedFib 5
-- 5
--
-- See. https://wiki.haskell.org/Memoization#Memoization_with_recursion
memorizedFib :: Int -> Int
memorizedFib =
  let fib' 0 = 0
      fib' 1 = 1
      fib' n = memorizedFib (n - 2) + memorizedFib (n - 1)
   in (map fib' [0 ..] !!)
