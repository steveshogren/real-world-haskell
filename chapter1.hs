-- 1.1

Prelude Data.Ratio> 5 + 8
13
Prelude Data.Ratio> 3 * 5 + 8
23
Prelude Data.Ratio> 2 + 4
6
Prelude Data.Ratio> (+) 2 4
6
Prelude Data.Ratio> sqrt 16
4.0
Prelude Data.Ratio> succ 6
7
Prelude Data.Ratio> succ 7
8
Prelude Data.Ratio> succ 9
10
Prelude Data.Ratio> succ 8
9
Prelude Data.Ratio> sin (pi / 2)
1.0
Prelude Data.Ratio> truncate pi
3
Prelude Data.Ratio> round 3.5
4
Prelude Data.Ratio> round 3.4
3
Prelude Data.Ratio> floor 3.7
3
Prelude Data.Ratio> ceiling 3.3
4

-- 1.2 
Prelude Data.Ratio> let x = 1
Prelude Data.Ratio> :show bindings
it :: Integer = 4
x :: Integer = 1

-- 1.3 and 1.4
see WC.hs

-- Haskell supports partial function application
compare 2 4
-- LT
let gt2 = compare(2)
gt2 4
-- LT

-- List operations
head [1,2,3] 
-- 1
tail [1,2,3]
-- [2,3]


-- the lower case 'a' here is a "type variable",
-- much like a generic I suppose
:type head
-- head :: [a] -> a











 
