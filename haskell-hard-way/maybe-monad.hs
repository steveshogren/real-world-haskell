-- Long way of chaining a series of changes to the "world"
crapdeposit value account = account + value
crapwithdraw value account = account - value

crapeligible :: (Num a,Ord a) => a -> Bool
crapeligible account = 
       let account1 = crapdeposit 100 account in
          if (account1 < 0) 
          then False
          else 
            let account2 = crapwithdraw 200 account1 in
               if (account2 < 0) 
               then False
               else 
                    let account3 = crapdeposit 100 account2 in
                       if (account3 < 0) 
                       then False
                       else True
          

-- Shorter way using Maybe monads 
deposit value account = Just (account + value)
withdraw value account = if (account < value) 
                         then Nothing
                         else Just (account - value)

-- This chains together the different calls
desugaredeligible account = do 
       account1 <- deposit 100 account
       account2 <- withdraw 200 account1
       account3 <- deposit 100 account2
       Just True

-- The highly sugared built in language feature version using >>=
eligible account = 
       deposit 100 account >>=
       withdraw 200 >>= 
       deposit 100 >>
       return True

main = do
       print $ crapeligible 300
       print $ crapeligible 50 
       print $ desugaredeligible 300
       print $ desugaredeligible 50
       print $ eligible 300
       print $ eligible 50 



     
