-- bookstore.hs

data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

myInfo = Book 098098098 "Programming"
         ["Richard bird", "oege de moor"]
