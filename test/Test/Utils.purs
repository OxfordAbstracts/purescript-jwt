module Test.Utils
  ( getUsername
  ) where

import Prelude

import Data.Argonaut.Core (Json)
import Data.Argonaut.Decode (JsonDecodeError, decodeJson, getField)
import Data.Either (Either)

getUsername :: Json -> Either JsonDecodeError String
getUsername = flip getField "username" <=< decodeJson
