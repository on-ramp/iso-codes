{- |
     Currency code serialization functions for @postgresql-simple@.
 -}

module Data.Currency.PostgreSQL
  ( -- * Encode
    -- ** Alpha
    toAlpha

    -- ** Numeric
  , toNumeric

    -- | === Integer representation 
  , toNumericAsInt

    -- * Decode
    -- ** Alpha
  , fromAlpha
  , fromAlpha'

    -- ** Numeric
  , fromNumeric
  , fromNumeric'

    -- | === Integer representation 
  , fromNumericAsInt
  , fromNumericAsInt'
  ) where

import           Data.Currency.Codec.Internal
import           Data.Currency.Internal
import           Data.Currency.Revision.Internal as Revision
import           ISO.Currency.Revisions as Revision (latest)

import           Data.Scientific as Scientific
import qualified Data.Text as Text
import           Database.PostgreSQL.Simple.ToField
import           Database.PostgreSQL.Simple.FromField



-- | Encode a currency as an alpha code into an SQL query string.
toAlpha :: Currency -> Action
toAlpha = toField . encodeAlpha


-- | 'fromAlpha'' over the 'latest' revision.
fromAlpha :: FieldParser Currency
fromAlpha = fromAlpha' Revision.latest

-- | Decode an alpha currency from an SQL value.
fromAlpha' :: Revision -> FieldParser Currency 
fromAlpha' rev = \field mayBs ->
  case mayBs of
    Nothing -> returnError UnexpectedNull field ""
    Just bs ->
      case decodeAlpha' rev bs of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val



-- | Encode a currency as an numeric code into an SQL query string representing a text value.
toNumeric :: Currency -> Action
toNumeric = toField . encodeNumeric


-- | 'fromNumeric'' over the 'latest' revision.
fromNumeric :: FieldParser Currency
fromNumeric = fromNumeric' Revision.latest

-- | Decode a numeric currency from a textual SQL value.
fromNumeric' :: Revision -> FieldParser Currency 
fromNumeric' rev = \field mayBs ->
  case mayBs of
    Nothing -> returnError UnexpectedNull field ""
    Just bs ->
      case decodeNumeric' rev bs of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val



-- | Encode a currency as an numeric code into an SQL query string representing an integer.
toNumericAsInt :: Currency -> Action
toNumericAsInt = toField . encodeNumericAsInt


-- | 'fromNumericAsInt'' over the 'latest' revision.
fromNumericAsInt :: FieldParser Currency
fromNumericAsInt = fromNumericAsInt' Revision.latest

-- | Decode a numeric currency from a numeric SQL value.
fromNumericAsInt' :: Revision -> FieldParser Currency 
fromNumericAsInt' rev = \field mayBs -> do
  sci <- fromField field mayBs
  case Scientific.toBoundedInteger sci of
    Nothing  -> returnError ConversionFailed field $ Text.unpack notInNumericRange
    Just int ->
      case decodeNumericFromInt' rev int of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val
