-- bool.hs

-- The type Book here has two value constructors
-- Because they are separated with |, the Type
-- must be one of the two, which is called an
-- algabraic data type
data Bool = False | True


-- A regular tuple will be typed identical, dispite 
-- containing different information
a = ("Porpoise", "Grey")
b = ("Table", "Oak")

data Cetacean = Cetacean String String
data Furniture = Furniture String String

c = Cetacean "Porpoise" "Grey"
d = Furniture "Table" "Oak"



-- Even though these two type both contain
-- identical values (Double, Double), they should 
-- be used in a very different way, the types will
-- assure that

-- x and y coordinates or lengths
data Cartesian2D = Cartesian2D Double Double
                   deriving (Eq, Show)

-- Angle and distance (magnitude)
data Polar2D = Polar2D Double Double
               deriving (Eq, Show)


