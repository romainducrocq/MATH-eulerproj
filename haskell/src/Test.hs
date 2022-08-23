module Test where

import Crypto.Hash
import Data.ByteString.Lazy.UTF8

test :: Show a => String -> a -> Bool
test md5 ans =
    md5 == show (hashlazy (Data.ByteString.Lazy.UTF8.fromString (show ans)) :: Digest MD5)