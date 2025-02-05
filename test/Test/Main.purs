module Test.Main where

import Prelude

import Effect (Effect)
import Test.Jwt (testJwt)

main :: Effect Unit
main = do
  testJwt
