module Main where

import Test

import P.E4


main :: IO ()
main = do
  print answer
  print $ test md5sum answer
