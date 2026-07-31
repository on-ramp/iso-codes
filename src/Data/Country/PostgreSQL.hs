{- |
     Country code serialization functions for @postgresql-simple@.
 -}

module Data.Country.PostgreSQL
  ( -- * Encode
    -- ** Alpha-2
    toAlpha2

    -- ** Alpha-3
  , toAlpha3

    -- ** Numeric
  , toNumeric

    -- | === Integer representation 
  , toNumericAsInt

    -- * Decode
    -- ** Alpha-2
  , fromAlpha2
  , fromAlpha2'

    -- ** Alpha-3
  , fromAlpha3
  , fromAlpha3'

    -- ** Numeric
  , fromNumeric
  , fromNumeric'

    -- | === Integer representation 
  , fromNumericAsInt
  , fromNumericAsInt'
  ) where

import           Data.Country.Codec.Internal
import           Data.Country.Internal
import           Data.Country.Revision.Internal as Revision
import           ISO.Country.Revisions as Revision (latest)

import           Data.Scientific as Scientific
import qualified Data.Text as Text
import           Database.PostgreSQL.Simple.ToField
import           Database.PostgreSQL.Simple.FromField



-- | Encode a country as an alpha-2 code into an SQL query string.
toAlpha2 :: Country -> Action
toAlpha2 = toField . encodeAlpha2


-- | 'fromAlpha2'' over the 'latest' revision.
fromAlpha2 :: FieldParser Country
fromAlpha2 = fromAlpha2' Revision.latest

-- | Decode an alpha-2 country from an SQL value.
fromAlpha2' :: Revision -> FieldParser Country 
fromAlpha2' rev = \field mayBs ->
  case mayBs of
    Nothing -> returnError UnexpectedNull field ""
    Just bs ->
      case decodeAlpha2' rev bs of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val



-- | Encode a country as an alpha-3 code into an SQL query string.
toAlpha3 :: Country -> Action
toAlpha3 = toField . encodeAlpha3


-- | 'fromAlpha3'' over the 'latest' revision.
fromAlpha3 :: FieldParser Country
fromAlpha3 = fromAlpha3' Revision.latest

-- | Decode an alpha-3 country from an SQL value.
fromAlpha3' :: Revision -> FieldParser Country 
fromAlpha3' rev = \field mayBs ->
  case mayBs of
    Nothing -> returnError UnexpectedNull field ""
    Just bs ->
      case decodeAlpha3' rev bs of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val



-- | Encode a country as an numeric code into an SQL query string representing a text value.
toNumeric :: Country -> Action
toNumeric = toField . encodeNumeric


-- | 'fromNumeric'' over the 'latest' revision.
fromNumeric :: FieldParser Country
fromNumeric = fromNumeric' Revision.latest

-- | Decode a numeric country from a textual SQL value.
fromNumeric' :: Revision -> FieldParser Country 
fromNumeric' rev = \field mayBs ->
  case mayBs of
    Nothing -> returnError UnexpectedNull field ""
    Just bs ->
      case decodeNumeric' rev bs of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val



-- | Encode a country as an numeric code into an SQL query string representing an integer.
toNumericAsInt :: Country -> Action
toNumericAsInt = toField . encodeNumericAsInt


-- | 'fromNumericAsInt'' over the 'latest' revision.
fromNumericAsInt :: FieldParser Country
fromNumericAsInt = fromNumericAsInt' Revision.latest

-- | Decode a numeric country from a numeric SQL value.
fromNumericAsInt' :: Revision -> FieldParser Country 
fromNumericAsInt' rev = \field mayBs -> do
  sci <- fromField field mayBs
  case Scientific.toBoundedInteger sci of
    Nothing  -> returnError ConversionFailed field $ Text.unpack notInNumericRange
    Just int ->
      case decodeNumericFromInt' rev int of
        Left err  -> returnError ConversionFailed field $ Text.unpack err
        Right val -> pure val
