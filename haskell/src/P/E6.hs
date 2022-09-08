module P.E6 where

{-
The sum of the squares of the first ten natural numbers is,

                      1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

                   (1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

Answer: 867380888952c39a131fe1d832246ecc
-}

md5sum :: String
md5sum = "867380888952c39a131fe1d832246ecc"

answer :: Int
answer = ((^2) . sum $ [1..100]) - (sum . map (^2) $ [1..100])