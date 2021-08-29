fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- https://wiki.haskell.org/Memoization#Memoization_with_recursion
memorizedFib :: Int -> Int
memorizedFib =
  let fib' 0 = 0
      fib' 1 = 1
      fib' n = memorizedFib (n - 2) + memorizedFib (n - 1)
   in (map fib' [0 ..] !!)
