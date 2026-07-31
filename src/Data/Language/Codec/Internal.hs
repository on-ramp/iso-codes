{-# LANGUAGE OverloadedStrings #-}

module Data.Language.Codec.Internal
  ( encodeAlpha
  , decodeAlpha
  , decodeAlpha'

  , encodeAlpha2
  , decodeAlpha2
  , decodeAlpha2'

  , encodeAlpha3
  , decodeAlpha3
  , decodeAlpha3'
  ) where

import           Data.Language.Internal
import           Data.Language.Revision.Internal as Revision
import           ISO.Language.Revisions as Revision (latest)

import           Data.ByteString (ByteString)
import qualified Data.ByteString as B
import           Data.Text (Text)
import           Data.Text.Encoding (decodeUtf8)



-- | Encode a language as an ISO 639-1 (if available) or ISO 639-3 code into an ASCII string.
encodeAlpha :: Language -> Text
encodeAlpha x =
  decodeUtf8 $
    case getAlpha2 x of
      Nothing -> alpha3ToByteString $ getAlpha3 x
      Just a2 -> alpha2ToByteString a2


-- | 'decodeAlpha'' over the 'latest' revision.
decodeAlpha :: ByteString -> Either Text Language
decodeAlpha = decodeAlpha' Revision.latest

-- | Decode an ISO 639-1 or ISO 639-3 language code from an ASCII string.
decodeAlpha' :: Revision -> ByteString -> Either Text Language 
decodeAlpha' rev bs =
  case B.length bs of
    2 -> decodeAlpha2' rev bs
    3 -> decodeAlpha3' rev bs
    _ -> Left "Not an ISO 639-1 or ISO 639-3 code"



-- | Encode a language as an ISO 639-1 code into an ASCII string.
encodeAlpha2 :: Language -> Maybe Text
encodeAlpha2 = fmap alpha2ToText . getAlpha2


-- | 'decodeAlpha2'' over the 'latest' revision.
decodeAlpha2 :: ByteString -> Either Text Language
decodeAlpha2 = decodeAlpha2' Revision.latest

-- | Decode an ISO 639-1 language code from an ASCII string.
decodeAlpha2' :: Revision -> ByteString -> Either Text Language 
decodeAlpha2' rev bs =
  case mkAlpha2 bs of
    Nothing   -> Left "Not an ISO 639-1 code"
    Just code ->
      case Revision.lookup (alpha2ToKey code) rev of
        Nothing  -> Left "Unrecognized ISO 639-1 code"
        Just val -> Right val



-- | Encode a language as an ISO 639-3 code into an ASCII string.
encodeAlpha3 :: Language -> Text
encodeAlpha3 = alpha3ToText . getAlpha3


-- | 'decodeAlpha3'' over the 'latest' revision.
decodeAlpha3 :: ByteString -> Either Text Language
decodeAlpha3 = decodeAlpha3' Revision.latest

-- | Decode an ISO 639-3 language code from an ASCII string.
decodeAlpha3' :: Revision -> ByteString -> Either Text Language
decodeAlpha3' rev bs =
  case mkAlpha3 bs of
    Nothing   -> Left "Not an ISO 639-3 code"
    Just code ->
      case Revision.lookup (alpha3ToKey code) rev of
        Nothing  -> Left "Unrecognized ISO 639-3 code"
        Just val -> Right val
