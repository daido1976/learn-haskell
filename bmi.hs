import System.Environment (getArgs)

main :: IO ()
main = do
  (heightString : weightString : _) <- getArgs
  print (bmi (read heightString) (read weightString))

bmi :: Fractional a => a -> a -> a
bmi height weight = weight / height ^ 2
