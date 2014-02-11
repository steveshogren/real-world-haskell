-- bookstore.hs

-- here we have a type BookInfo, created with the constructor Book 
data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

myInfo = Book 098098098 "Programming"
         ["Richard bird", "oege de moor"]

-- The double BookReview here is the type and the constructor
-- they can and usually should be named the same thing
data BookReview = BookReview BookInfo CustomerID String

-- These are "type synonyms" that give more readability and
-- clarity to the actual business concept
type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

-- here is a synonym for a verbose type
-- the Type is a tuple of a BookInfo and a BookReview
type BookRecord = (BookInfo, BookReview)


-- algebraic data types for billing
type CardHolder = String
type CardNumber = String
type Address = [String]

-- This explains that BillingInfo can have three
-- sets of possible values
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

data Roygbiv = Red
             | Orange
             | Yellow
             | Green
             | Blue
             | Indigo
             | Violet
               deriving (Eq, Show)


type Vector = (Double, Double)
data Shape = Circle Vector Double
           | Poly [Vector]

