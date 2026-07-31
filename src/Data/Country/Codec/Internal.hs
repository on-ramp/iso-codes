{-# LANGUAGE OverloadedStrings #-}

module Data.Country.Codec.Internal
  ( encodeAlpha2
  , decodeAlpha2
  , decodeAlpha2'

  , encodeAlpha3
  , decodeAlpha3
  , decodeAlpha3'

  , encodeNumeric
  , decodeNumeric
  , decodeNumeric'

  , encodeNumericAsInt
  , notInNumericRange
  , decodeNumericFromInt
  , decodeNumericFromInt'
  ) where

import           Data.Country.Internal
import           Data.Country.Revision.Internal as Revision
import           ISO.Country.Revisions as Revision (latest)

import           Data.ByteString (ByteString)
import           Data.Text (Text)



-- | Encode a country as an alpha-2 code into an ASCII string.
encodeAlpha2 :: Country -> Text
encodeAlpha2 = alpha2ToText . getAlpha2


-- | 'decodeAlpha2'' over the 'latest' revision.
decodeAlpha2 :: ByteString -> Either Text Country
decodeAlpha2 = decodeAlpha2' Revision.latest

-- | Decode an alpha-2 country code from an ASCII string.
decodeAlpha2' :: Revision -> ByteString -> Either Text Country 
decodeAlpha2' rev bs =
  case mkAlpha2 bs of
    Nothing   -> Left "Not an ISO 3166-1 alpha-2 code"
    Just code ->
      case Revision.lookup (alpha2ToKey code) rev of
        Nothing  -> Left "Unrecognized ISO 3166-1 alpha-2 code"
        Just val -> Right val



-- | Encode a country as an alpha-3 code into an ASCII string.
encodeAlpha3 :: Country -> Text
encodeAlpha3 = alpha3ToText . getAlpha3


-- | 'decodeAlpha3'' over the 'latest' revision.
decodeAlpha3 :: ByteString -> Either Text Country
decodeAlpha3 = decodeAlpha3' Revision.latest

-- | Decode an alpha-3 country code from an ASCII string.
decodeAlpha3' :: Revision -> ByteString -> Either Text Country
decodeAlpha3' rev bs =
  case mkAlpha3 bs of
    Nothing   -> Left "Not an ISO 3166-1 alpha-3 code"
    Just code ->
      case Revision.lookup (alpha3ToKey code) rev of
        Nothing  -> Left "Unrecognized ISO 3166-1 alpha-3 code"
        Just val -> Right val



-- | Encode a country as a numeric code into an ASCII string.
encodeNumeric :: Country -> Text
encodeNumeric = numericToText . getNumeric

-- | 'decodeNumeric'' over the 'latest' revision.
decodeNumeric :: ByteString -> Either Text Country
decodeNumeric = decodeNumeric' Revision.latest

notNumeric, unrecognizedNumeric :: Text
notNumeric          = "Not an ISO 3166-1 numeric code"
unrecognizedNumeric = "Unrecognized ISO 3166-1 numeric code"

-- | Decode a numeric country code from an ASCII string.
decodeNumeric' :: Revision -> ByteString -> Either Text Country
decodeNumeric' rev bs =
  case mkNumeric bs of
    Nothing   -> Left notNumeric
    Just code ->
      case Revision.lookup (numericToKey code) rev of
        Nothing  -> Left unrecognizedNumeric
        Just val -> Right val



-- | Encode a country as a numeric code into an integer.
encodeNumericAsInt :: Country -> Int
encodeNumericAsInt = numericToInt . getNumeric


notInNumericRange :: Text
notInNumericRange = "Not an integer between 0 and 999"

-- | 'decodeNumericFromInt'' over the 'latest' revision.
decodeNumericFromInt :: Int -> Either Text Country
decodeNumericFromInt = decodeNumericFromInt' Revision.latest

-- | Decode a numeric country code from an integer.
decodeNumericFromInt' :: Revision -> Int -> Either Text Country
decodeNumericFromInt' rev int =
  case mkNumericFromInt int of
    Nothing   -> Left notNumeric
    Just code ->
      case Revision.lookup (numericToKey code) rev of
        Nothing  -> Left unrecognizedNumeric
        Just val -> Right val
