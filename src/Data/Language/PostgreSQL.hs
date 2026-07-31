{- |
     Language code serialization functions for @postgresql-simple@.
 -}

module Data.Language.PostgreSQL
  ( -- * Encode
    -- ** Alpha
    toAlpha

    -- ** Alpha-3
  , toAlpha3

    -- * Decode
    -- ** Alpha
  , fromAlpha
  , fromAlpha'

    -- ** Alpha-3
  , fromAlpha3
  , fromAlpha3'
  ) where

import           Data.Language.Codec.Internal
import           Data.Language.Internal
import           Data.Language.Revision.Internal as Revision
import           ISO.Language.Revisions as Revision (latest)

import qualified Data.Text as Text
import           Database.PostgreSQL.Simple.ToField
import           Database.PostgreSQL.Simple.FromField



-- | Encode a language as an ISO 639-1 (if available) or ISO 639-3 code
--   into an SQL query string.
toAlpha :: Language -> Action
toAlpha = toField . encodeAlpha


-- | 'fromAlpha'' over the 'latest' revision.
fromAlpha :: FieldParser Language
fromAlpha = fromAlpha' Revision.latest

-- | Decode an ISO 639-1 or ISO 639-3 code from an SQL value.
fromAlpha' :: Revision -> FieldParser Language
fromAlpha' rev = \field mayBs ->
  case mayBs of
    Nothing -> returnError UnexpectedNull field ""
    Just bs ->
      case decodeAlpha' rev bs of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val



-- | Encode a language as an ISO 639-3 code into an SQL query string.
toAlpha3 :: Language -> Action
toAlpha3 = toField . encodeAlpha3


-- | 'fromAlpha3'' over the 'latest' revision.
fromAlpha3 :: FieldParser Language
fromAlpha3 = fromAlpha3' Revision.latest

-- | Decode an ISO 639-3 code from an SQL value.
fromAlpha3' :: Revision -> FieldParser Language 
fromAlpha3' rev = \field mayBs ->
  case mayBs of
    Nothing -> returnError UnexpectedNull field ""
    Just bs ->
      case decodeAlpha3' rev bs of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val
