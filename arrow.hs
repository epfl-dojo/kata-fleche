import Data.List  -- For intercalate

main = putStrLn (arrow size) where size = 4

base :: Int -> String
base size = replicate (size * 2  -  1) '*'

arrow_tail_segment :: Int -> String
arrow_tail_segment size = replicate (size-1) ' ' ++ "*"

arrow_tip 0 size = arrow_tail_segment size
arrow_tip n size = replicate indent ' ' ++ "*"  ++  replicate width ' ' ++ "*"
   where indent = (size - n - 1)
         width = (n * 2  - 1)

arrow_tail size = replicate size (arrow_tail_segment size)

arrow size = intercalate "\n" ( [(arrow_tip n size) | n <- [0..(size - 2)]]
                                ++ [base size] ++ arrow_tail size)
