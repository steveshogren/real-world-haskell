-- tuple.hs 

-- deconstructs on a tuple sized three and 
-- returns the third element
third (a, b, c) = c

complicated (True, a, x:xs, 5) = (a, xs)

badExample (x:xs) = x + badExample xs

goodExample (x:xs) = x + goodExample xs
goodExample _ = 0
