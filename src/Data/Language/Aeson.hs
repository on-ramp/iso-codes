{- |
     Language code serialization functions for @aeson@.
 -}

module Data.Language.Aeson
  ( -- * Encode
    -- ** Alpha
    toAlpha

    -- ** Alpha-3
  , toAlpha3

    -- ** Decode
    -- ** Alpha
  , parseAlpha
  , parseAlpha'

    -- ** Alpha-3
  , parseAlpha3
  , parseAlpha3'
  ) where

import           Data.Language.Codec.Internal
import           Data.Language.Internal
import           Data.Language.Revision.Internal as Revision
import           ISO.Language.Revisions as Revision (latest)

import           Data.Aeson
import           Data.Aeson.Types (Parser)
import qualified Data.Text as Text
import           Data.Text.Encoding (encodeUtf8)



-- | Encode a language as an ISO 639-1 (if available) or ISO 639-3 code into a JSON string.
toAlpha :: Language -> Value
toAlpha = String . encodeAlpha


-- | 'parseAlpha'' over the 'latest' revision.
parseAlpha :: Value -> Parser Language
parseAlpha = parseAlpha' Revision.latest

-- | Decode an ISO 639-1 or ISO 639-3 code from a JSON string.
parseAlpha' :: Revision -> Value -> Parser Language 
parseAlpha' rev =
  withText "" $ \txt ->
    case decodeAlpha' rev $ encodeUtf8 txt of
      Left err  -> fail $ Text.unpack err
      Right val -> pure val



-- | Encode a language as an ISO 639-3 code into a JSON string.
toAlpha3 :: Language -> Value
toAlpha3 = String . encodeAlpha3


-- | 'parseAlpha3'' over the 'latest' revision.
parseAlpha3 :: Value -> Parser Language
parseAlpha3 = parseAlpha3' Revision.latest

-- | Decode an ISO 639-3 code from a JSON string.
parseAlpha3' :: Revision -> Value -> Parser Language
parseAlpha3' rev =
  withText "" $ \txt ->
    case decodeAlpha3' rev $ encodeUtf8 txt of
      Left err  -> fail $ Text.unpack err
      Right val -> pure val
