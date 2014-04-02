import Control.Monad (guard)

allCases = [1..10]

resolve :: [(Int, Int,Int)]
resolve = do
     x <- allCases
     y <- allCases
     z <- allCases
     guard $ 4*x + 2*y < z 
     return (x,y,z)

resolve2 :: [(Int, Int,Int)]
resolve2 = do
     x <- allCases
     y <- allCases
     z <- allCases
     return (x,y,z)

main = do
     print resolve
     print resolve2
