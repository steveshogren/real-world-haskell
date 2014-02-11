-- file: add.hs

add a b = a + b

-- these use pattern matching to ensure the correct gets called
myNot True = False
myNot False = True

-- sumList (1, 2) is shorthand for 
-- sumList (1 : (2 : []))
-- 1st - x: xs matches 1: (2: [])
-- 2nd - x: xs matches 2: []
-- 3rd - [] matches []
sumList (x:xs) = x + sumList xs
sumList []     = 0

:load tuple
complicated (True, 1, [1,2,3], 5)
--(1,[2,3])
-- the pattern expecting a True is not matched
complicated (False, 1, [1,2,3], 5)
-- *** Exception: tuple.hs:7:1-40: Non-exhaustive patterns in function complicated

-- there is no match, the only pattern accepts a list of 2
badExample []
-- *** Exception: tuple.hs:9:1-37: Non-exhaustive patterns in function badExample

-- the good example checks both conditions
goodExample []
-- 0
goodExample [1,2]
-- 3
