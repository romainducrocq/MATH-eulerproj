module P.E5 where

{-
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

Answer: bc0d0a22a7a46212135ed0ba77d22f3a
-}

md5sum :: String
md5sum = "bc0d0a22a7a46212135ed0ba77d22f3a"

answer :: Int
-- answer = foldr lcm 1 [1..20]
answer = f s
    where
      s = 2 * 3 * 5 * 7 * 11 * 13 * 17 * 19
      f x
          | all (\d -> mod x d == 0) [12, 14, 15, 16, 18, 20] = x
          | otherwise = f (x + s)
