deposit value account = Just (account + value)
withdraw value account = if (account < value) 
                         then Nothing
                         else Just (account - value)

eligible account = 
       deposit 100 account >>=
       withdraw 200 >>= 
       deposit 100 >>
       return True

main = do
       print $ eligible 300
       print $ eligible 50 



     
