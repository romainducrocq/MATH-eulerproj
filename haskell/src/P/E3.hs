module P.E3 where

{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

Answer: 94c4dd41f9dddce696557d3717d98d82
-}

md5sum :: String
md5sum = "94c4dd41f9dddce696557d3717d98d82"

answer :: Int
answer = go 2 600851475143
    where
      go i r
          | i == r       = r
          | mod r i == 0 = go 2 (div r i)
          | otherwise    = go (i + 1) r