module Main where

import Test

import P.E5


main :: IO ()
main = do
  print answer
  print $ test md5sum answer
