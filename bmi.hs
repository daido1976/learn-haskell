import System.Environment (getArgs)

main :: IO ()
main = do
  (heightString : weightString : _) <- getArgs
  print (bmi (read heightString) (read weightString))

-- |
-- >>> bmi 170 60
-- 2.0761245674740486e-3
bmi :: Fractional a => a -> a -> a
bmi height weight = weight / height ^ 2
