{- |
     Currency code serialization functions for @aeson@.
 -}

module Data.Currency.Aeson
  ( -- * Encode
    -- ** Alpha
    toAlpha

    -- ** Numeric
  , toNumeric

    -- | === Integer representation
  , toNumericAsNumber

    -- ** Decode
    -- ** Alpha
  , parseAlpha
  , parseAlpha'

    -- ** Numeric
  , parseNumeric
  , parseNumeric'

    -- | === Integer representation
  , parseNumericFromNumber
  , parseNumericFromNumber'
  ) where

import           Data.Currency.Codec.Internal
import           Data.Currency.Internal
import           Data.Currency.Revision.Internal as Revision
import           ISO.Currency.Revisions as Revision (latest)

import           Data.Aeson
import           Data.Aeson.Types (Parser)
import           Data.Scientific as Scientific
import qualified Data.Text as Text
import           Data.Text.Encoding (encodeUtf8)



-- | Encode a currency as an alpha code into a JSON string.
toAlpha :: Currency -> Value
toAlpha = String . encodeAlpha


-- | 'parseAlpha'' over the 'latest' revision.
parseAlpha :: Value -> Parser Currency
parseAlpha = parseAlpha' Revision.latest

-- | Decode an alpha currency code from a JSON string.
parseAlpha' :: Revision -> Value -> Parser Currency
parseAlpha' rev =
  withText "" $ \txt ->
    case decodeAlpha' rev $ encodeUtf8 txt of
      Left err  -> fail $ Text.unpack err
      Right val -> pure val



-- | Encode a currency as a numeric code into a JSON string.
toNumeric :: Currency -> Value
toNumeric = String . encodeNumeric


-- | 'parseNumeric'' over the 'latest' revision.
parseNumeric :: Value -> Parser Currency
parseNumeric = parseNumeric' Revision.latest

-- | Decode a numeric currency code from a JSON string.
parseNumeric' :: Revision -> Value -> Parser Currency
parseNumeric' rev =
  withText "" $ \txt ->
    case decodeNumeric' rev $ encodeUtf8 txt of
      Left err  -> fail $ Text.unpack err
      Right val -> pure val



-- | Encode a currency as a numeric code into a JSON number.
toNumericAsNumber :: Currency -> Value
toNumericAsNumber = Number . fromIntegral . encodeNumericAsInt


-- | 'parseNumericFromNumber'' over the 'latest' revision.
parseNumericFromNumber :: Value -> Parser Currency
parseNumericFromNumber = parseNumericFromNumber' Revision.latest

-- | Decode a numeric currency code from a JSON number.
parseNumericFromNumber' :: Revision -> Value -> Parser Currency
parseNumericFromNumber' rev =
  withScientific "" $ \sci ->
    case Scientific.toBoundedInteger sci of
      Nothing  -> fail $ Text.unpack notInNumericRange
      Just int ->
        case decodeNumericFromInt' rev int of
          Left err  -> fail $ Text.unpack err
          Right val -> pure val
