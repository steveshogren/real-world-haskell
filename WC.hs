-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

main = interact workCount
     where workCount input = show (length (lines input)) ++ "\n"