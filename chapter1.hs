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


-- the lower case 'a' here is a "type variable", much like a generic.
:type head
-- head :: [a] -> a


-- tuples are fixed size
:type (1964, "test")
-- (1964, "test") :: Num t => (t, [Char])

-- an empty tuple () is a "unit"

-- a tuple's type signature dictates the order of elements
-- therefore, these two tuples are not the same type
:type (False, 'a') 
-- (False, 'a') :: (Bool, Char)
:type ('a', False)
-- ('a', False) :: (Char, Bool)

-- 2.1
:type False
-- False :: Bool
:type (["foo", "bar"], 'a')
-- (["foo", "bar"], 'a') :: ([[Char]], Char)
:type [(True, []), (False, [['a']])]
-- [(True, []), (False, [['a']])] :: [(Bool, [[Char]])]


-- take and drop return from either direction
take 2 [1, 2, 3, 4]
-- [1,2]
drop 1 [1, 2, 3, 4]
-- [2,3,4]

-- first and second for tuples only
fst (1, 2)
-- 1
snd (1, 2)
-- 2

-- both fst and snd only accept two-element tuples, restrictive much?
:type fst 
-- fst :: (a, b) -> a

-- functions cannot (at all?) be defined in the ghci, so must
-- be written in files and loaded thusly
:load add.hs
-- [1 of 1] Compiling Main             ( add.hs, interpreted )
-- Ok, modules loaded: Main.
add 1 2
-- 3

:load myDrop.hs
-- [1 of 1] Compiling Main             ( myDrop.hs, interpreted )
-- Ok, modules loaded: Main.
myDrop 2 "foobar"
-- "obar"
myDrop (-2) "foo"
-- "foo"


:type null
-- null :: [a] -> Bool
:type (||)
-- (||) :: Bool -> Bool -> Bool


-- BY DEFAULT EVERYTHING IS LAZY?!?!?!?!
newOr True (length [1..] > 0)
-- True

-- Basically, this means the "conditional macros" benefit
-- you get for free, all the time, a new conditional 
-- is easy to make

-- 2.1 

-- last :: [a] -> a
-- this function can only return a single value of type 'a', 
-- which is the same as the list

-- 2.2
lastButOne xs = if length xs == 2 
                then head xs
                else lastButOne (tail xs)

-- 2.3
lastButOne [1,2,3,4]
-- 3
lastButOne []
-- *** Exception: Prelude.tail: empty list
lastButOne [1] 
-- *** Exception: Prelude.tail: empty list


 
myInfo
-- Book 98098098 "Programming" ["Richard bird","oege de moor"]
:type myInfo
-- myInfo :: BookInfo
:type Book 1 "test" ["hat"]
-- Book 1 "test" ["hat"] :: BookInfo
:info BookInfo
-- data BookInfo = Book Int String [String]
  	-- Defined at bookstore.hs:3:6
-- instance Show BookInfo -- Defined at bookstore.hs:4:27
:type Book
-- Book :: Int -> String -> [String] -> BookInfo

-- The Book function is the "constructor" for the BookInfo type


:load bookstore
-- [1 of 1] Compiling Main             ( bookstore.hs, interpreted )
-- Ok, modules loaded: Main.
:type CreditCard
-- CreditCard :: CardNumber -> CardHolder -> Address -> BillingInfo
CreditCard "23423408" "Some Dude" ["Dickens", "England"]
-- CreditCard "23423408" "Some Dude" ["Dickens","England"]
:type it
-- it :: BillingInfo

-- this happens because Invoice requires a CustomerID to 
-- be constructed correctly, without it, nadda
Invoice
--<interactive>:103:1-7:
--    No instance for (Show (CustomerID -> BillingInfo))
--      arising from a use of `print'
--    Possible fix:
--      add an instance declaration for (Show (CustomerID -> BillingInfo))
--    In a stmt of an interactive GHCi command: print it




-- the == function requires two matching types
-- for its arguments
Cartesian2D (sqrt 2) (sqrt 2) == Polar2D (pi / 4) 2
-- <interactive>:107:34-51:
--    Couldn't match expected type `Cartesian2D'
--                with actual type `Polar2D'
--    In the return type of a call of `Polar2D'
--    In the second argument of `(==)', namely `Polar2D (pi / 4) 2'
--    In the expression:
--      Cartesian2D (sqrt 2) (sqrt 2) == Polar2D (pi / 4) 2
