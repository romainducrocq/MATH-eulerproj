module P.E7 where

{-
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

Answer: 8c32ab09ec0210af60d392e9b2009560
-}

md5sum :: String
md5sum = "8c32ab09ec0210af60d392e9b2009560"

answer :: Int
answer = f 2 0
    where
      f k 10001 = k-1
      f k i     =
          if any (\x -> k `mod` x == 0) [2 .. floor . sqrt . fromIntegral $ k]
          then f (k+1) i
          else f (k+1) (i+1)
