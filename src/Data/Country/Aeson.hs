{- |
     Country code serialization functions for @aeson@.
 -}

module Data.Country.Aeson
  ( -- * Encode
    -- ** Alpha-2
    toAlpha2

    -- ** Alpha-3
  , toAlpha3

    -- ** Numeric
  , toNumeric

    -- | === Integer representation
  , toNumericAsNumber

    -- ** Decode
    -- ** Alpha-2
  , parseAlpha2
  , parseAlpha2'

    -- ** Alpha-3
  , parseAlpha3
  , parseAlpha3'

    -- ** Numeric
  , parseNumeric
  , parseNumeric'

    -- | === Integer representation
  , parseNumericFromNumber
  , parseNumericFromNumber'
  ) where

import           Data.Country.Codec.Internal
import           Data.Country.Internal
import           Data.Country.Revision.Internal as Revision
import           ISO.Country.Revisions as Revision (latest)

import           Data.Aeson
import           Data.Aeson.Types (Parser)
import           Data.Scientific as Scientific
import qualified Data.Text as Text
import           Data.Text.Encoding (encodeUtf8)



-- | Encode a country as an alpha-2 code into a JSON string.
toAlpha2 :: Country -> Value
toAlpha2 = String . encodeAlpha2


-- | 'parseAlpha2'' over the 'latest' revision.
parseAlpha2 :: Value -> Parser Country
parseAlpha2 = parseAlpha2' Revision.latest

-- | Decode an alpha-2 country code from a JSON string.
parseAlpha2' :: Revision -> Value -> Parser Country 
parseAlpha2' rev = 
  withText "" $ \txt ->
    case decodeAlpha2' rev $ encodeUtf8 txt of
      Left err  -> fail $ Text.unpack err
      Right val -> pure val



-- | Encode a country as an alpha-3 code into a JSON string.
toAlpha3 :: Country -> Value
toAlpha3 = String . encodeAlpha3


-- | 'parseAlpha3'' over the 'latest' revision.
parseAlpha3 :: Value -> Parser Country
parseAlpha3 = parseAlpha3' Revision.latest

-- | Decode an alpha-3 country code from a JSON string.
parseAlpha3' :: Revision -> Value -> Parser Country
parseAlpha3' rev =
  withText "" $ \txt ->
    case decodeAlpha3' rev $ encodeUtf8 txt of
      Left err  -> fail $ Text.unpack err
      Right val -> pure val



-- | Encode a country as a numeric code into a JSON string.
toNumeric :: Country -> Value
toNumeric = String . encodeNumeric

-- | 'parseNumeric'' over the 'latest' revision.
parseNumeric :: Value -> Parser Country
parseNumeric = parseNumeric' Revision.latest

-- | Decode a numeric country code from a JSON string.
parseNumeric' :: Revision -> Value -> Parser Country
parseNumeric' rev =
  withText "" $ \txt ->
    case decodeNumeric' rev $ encodeUtf8 txt of
      Left err  -> fail $ Text.unpack err
      Right val -> pure val



-- | Encode a country as a numeric code into a JSON number.
toNumericAsNumber :: Country -> Value
toNumericAsNumber = Number . fromIntegral . encodeNumericAsInt


-- | 'parseNumericFromNumber'' over the 'latest' revision.
parseNumericFromNumber :: Value -> Parser Country
parseNumericFromNumber = parseNumericFromNumber' Revision.latest

-- | Decode a numeric country code from a JSON number.
parseNumericFromNumber' :: Revision -> Value -> Parser Country
parseNumericFromNumber' rev =
  withScientific "" $ \sci ->
    case Scientific.toBoundedInteger sci of
      Nothing  -> fail $ Text.unpack notInNumericRange
      Just int ->
        case decodeNumericFromInt' rev int of
          Left err  -> fail $ Text.unpack err
          Right val -> pure val
