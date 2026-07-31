{-# LANGUAGE OverloadedStrings #-}

module Data.Currency.Codec.Internal
  ( encodeAlpha
  , decodeAlpha
  , decodeAlpha'

  , encodeNumeric
  , decodeNumeric
  , decodeNumeric'

  , encodeNumericAsInt
  , notInNumericRange
  , decodeNumericFromInt
  , decodeNumericFromInt'
  ) where

import           Data.Currency.Internal
import           Data.Currency.Revision.Internal as Revision
import           ISO.Currency.Revisions as Revision (latest)

import           Data.ByteString (ByteString)
import           Data.Text (Text)



-- | Encode a currency as an alpha code into an ASCII string.
encodeAlpha :: Currency -> Text
encodeAlpha = alphaToText . getAlpha


-- | 'decodeAlpha'' over the 'latest' revision.
decodeAlpha :: ByteString -> Either Text Currency
decodeAlpha = decodeAlpha' Revision.latest

-- | Decode an alpha currency code from an ASCII string.
decodeAlpha' :: Revision -> ByteString -> Either Text Currency
decodeAlpha' rev bs =
  case mkAlpha bs of
    Nothing   -> Left "Not an ISO 4217 alpha code"
    Just code ->
      case Revision.lookup (alphaToKey code) rev of
        Nothing  -> Left "Unrecognized ISO 4217 alpha code"
        Just val -> Right val



-- | Encode a currency as a numeric code into an ASCII string.
encodeNumeric :: Currency -> Text
encodeNumeric = numericToText . getNumeric

-- | 'decodeNumeric'' over the 'latest' revision.
decodeNumeric :: ByteString -> Either Text Currency
decodeNumeric = decodeNumeric' Revision.latest

notNumeric, unrecognizedNumeric :: Text
notNumeric          = "Not an ISO 4217 numeric code"
unrecognizedNumeric = "Unrecognized ISO 4217 numeric code"

-- | Decode a numeric currency code from an ASCII string.
decodeNumeric' :: Revision -> ByteString -> Either Text Currency
decodeNumeric' rev bs =
  case mkNumeric bs of
    Nothing   -> Left notNumeric
    Just code ->
      case Revision.lookup (numericToKey code) rev of
        Nothing  -> Left unrecognizedNumeric
        Just val -> Right val



-- | Encode a currency as a numeric code into an integer.
encodeNumericAsInt :: Currency -> Int
encodeNumericAsInt = numericToInt . getNumeric


notInNumericRange :: Text
notInNumericRange = "Not an integer between 0 and 999"

-- | 'decodeNumericFromInt'' over the 'latest' revision.
decodeNumericFromInt :: Int -> Either Text Currency
decodeNumericFromInt = decodeNumericFromInt' Revision.latest

-- | Decode a numeric currency code from an integer.
decodeNumericFromInt' :: Revision -> Int -> Either Text Currency
decodeNumericFromInt' rev int =
  case mkNumericFromInt int of
    Nothing   -> Left notNumeric
    Just code ->
      case Revision.lookup (numericToKey code) rev of
        Nothing  -> Left unrecognizedNumeric
        Just val -> Right val
