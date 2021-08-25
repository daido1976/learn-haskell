import Control.Monad

main :: IO ()
main = do
  putStr "Input number: "
  numStr <- getLine
  let num = read numStr
  fizzBuzz num

fizzBuzz :: (Show a, Integral a) => a -> IO ()
fizzBuzz num = do
  forM_ [1 .. num] $ \i -> do
    putStrLn (show i ++ ": " ++ toFizzBuzz i)

toFizzBuzz :: (Integral a, Show a) => a -> [Char]
toFizzBuzz num =
  case mod num 15 of
    0 -> "FizzBuzz"
    3 -> "Fizz"
    5 -> "Buzz"
    6 -> "Fizz"
    9 -> "Fizz"
    10 -> "Buzz"
    12 -> "Fizz"
    _ -> show num
