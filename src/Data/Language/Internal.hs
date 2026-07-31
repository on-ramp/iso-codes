{-# LANGUAGE BangPatterns
           , DeriveLift
           , StandaloneDeriving #-}

module Data.Language.Internal
  ( Language (..)

  , mkLanguage
  , buildLanguage

  , Alpha2 (..)
  , getAlpha2
  , mkAlpha2
  , showsAlpha2
  , alpha2ToByteString
  , alpha2ToText
  , alpha2ToKey

  , Alpha3 (..)
  , getAlpha3
  , mkAlpha3
  , showsAlpha3
  , alpha3ToByteString
  , alpha3ToText
  , alpha3ToKey

  , Key (..)
  ) where

import           Data.Bits
import           Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Internal as B (unsafeCreate)
import           Data.Text (Text)
import           Data.Text.Encoding (decodeUtf8)
import           Data.Word
import           Foreign.Storable
import           GHC.Base (unsafeChr)
import           Language.Haskell.TH.Syntax



-- | ISO 639 language.
newtype Language = -- | Alpha-2 code is stored in bits 0-9, each letter taking up
                   --   5 bits (representing a-z as values 1-26).
                   --   If no alpha-2 code is set these bits are zeroed out.
                   --
                   --   Alpha-3 code is stored in bits 12-26, same format as alpha-2.
                   --
                   --   Bit coverage: @XXXX\'X333\'3333\'3333\'3333\'XX22\'2222\'2222@.
                   Language Word64
                   deriving Lift

-- | Encoded as an ISO 639-1 (if available) or ISO 639-3 code.
instance Show Language where
  showsPrec _ x =
    case getAlpha2 x of
      Just y  -> showsAlpha2 y
      Nothing -> showsAlpha3 $ getAlpha3 x

-- | Full equality of internal representation.
deriving instance Eq Language



-- | Construct a t'Language' out of its two ISO 639 representations.
mkLanguage
  :: Maybe ByteString -- ^ ISO 639-1 code
  -> ByteString       -- ^ ISO 639-3 code
  -> Maybe Language
mkLanguage ma b =
  buildLanguage
    <$> ( case ma of
            Nothing -> Just Nothing
            Just a  ->
              case mkAlpha2 a of
                Nothing -> Nothing
                Just x  -> Just (Just x)
        )
    <*> mkAlpha3 b

-- | Construct a t'Language' out of its two ISO 639 representations.
buildLanguage :: Maybe Alpha2 -> Alpha3 -> Language
buildLanguage may2 (Alpha3 u v w) =
  Language $
        unsafeShiftL (fromIntegral u - 0x60) 22
    .|. unsafeShiftL (fromIntegral v - 0x60) 17
    .|. unsafeShiftL (fromIntegral w - 0x60) 12

    .|. ( case may2 of
            Nothing           -> 0
            Just (Alpha2 s t) ->
                  unsafeShiftL (fromIntegral s - 0x60)  5
              .|.              (fromIntegral t - 0x60)
        )



isAlpha :: Word8 -> Bool
isAlpha w = w >= 0x61 && w <= 0x7A



-- | Alpha-2 code.
data Alpha2 = -- | Stored as ASCII codepoints.
              Alpha2 {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8
              deriving Eq


-- | Extract language's alpha-2 code (if available).
getAlpha2 :: Language -> Maybe Alpha2
getAlpha2 (Language w)
  | w .&. 0x3FF == 0 = Nothing
  | otherwise        = 
      let a = fromIntegral $ (unsafeShiftR w 5 .&. 0x1F) + 0x60
          b = fromIntegral $              (w   .&. 0x1F) + 0x60
    
      in Just $! Alpha2 a b

-- | Create an alpha-2 code from a two-letter ASCII string.
mkAlpha2 :: ByteString -> Maybe Alpha2
mkAlpha2 bs =
  let x = B.index bs 0
      y = B.index bs 1

  in if B.length bs == 2 && isAlpha x && isAlpha y
       then Just $! Alpha2 x y
       else Nothing


-- | Convert an alpha-2 code to a two-letter string.
showsAlpha2 :: Alpha2 -> ShowS
showsAlpha2 (Alpha2 a b) =
  let !sa = unsafeChr (fromIntegral a)
      !sb = unsafeChr (fromIntegral b)

  in (:) sa . (:) sb

-- | Convert an alpha-2 code to a two-letter ASCII string.
alpha2ToByteString :: Alpha2 -> ByteString
alpha2ToByteString (Alpha2 a b) =
  B.unsafeCreate 2 $ \ptr -> do
    poke        ptr   a
    pokeByteOff ptr 1 b

-- | Convert an alpha-2 code to a two-letter ASCII string.
alpha2ToText :: Alpha2 -> Text
alpha2ToText = decodeUtf8 . alpha2ToByteString


-- | Convert an alpha-2 code to a dictionary key.
alpha2ToKey :: Alpha2 -> Key
alpha2ToKey (Alpha2 a b) =
  Key $
        (fromIntegral a `unsafeShiftL` 8 :: Word)
    .|.  fromIntegral b



-- | Alpha-3 code.
data Alpha3 = -- | Stored as ASCII codepoints.
              Alpha3 {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8
              deriving Eq


-- | Extract language's alpha-3 code.
getAlpha3 :: Language -> Alpha3
getAlpha3 (Language w) =
  let a = fromIntegral $ (unsafeShiftR w 22 .&. 0x1F) + 0x60
      b = fromIntegral $ (unsafeShiftR w 17 .&. 0x1F) + 0x60
      c = fromIntegral $ (unsafeShiftR w 12 .&. 0x1F) + 0x60

  in Alpha3 a b c

-- | Create an alpha-3 code from a three-letter ASCII string.
mkAlpha3 :: ByteString -> Maybe Alpha3
mkAlpha3 bs =
  let x = B.index bs 0
      y = B.index bs 1
      z = B.index bs 2

  in if B.length bs == 3 && isAlpha x && isAlpha y && isAlpha z
       then Just $! Alpha3 x y z
       else Nothing


-- | Convert an alpha-3 code to a three-letter string.
showsAlpha3 :: Alpha3 -> ShowS
showsAlpha3 (Alpha3 a b c) =
  let !sa = unsafeChr (fromIntegral a)
      !sb = unsafeChr (fromIntegral b)
      !sc = unsafeChr (fromIntegral c)

  in (:) sa . (:) sb . (:) sc

-- | Convert an alpha-3 code to a three-letter ASCII string.
alpha3ToByteString :: Alpha3 -> ByteString
alpha3ToByteString (Alpha3 a b c) =
  B.unsafeCreate 3 $ \ptr -> do
    poke        ptr   a
    pokeByteOff ptr 1 b
    pokeByteOff ptr 2 c

-- | Convert an alpha-3 code to a three-letter ASCII string.
alpha3ToText :: Alpha3 -> Text
alpha3ToText = decodeUtf8 . alpha3ToByteString


-- | Convert an alpha-3 code to a dictionary key.
alpha3ToKey :: Alpha3 -> Key
alpha3ToKey (Alpha3 a b c) =
  Key $
        (fromIntegral a `unsafeShiftL` 16 :: Word)
    .|. (fromIntegral b `unsafeShiftL`  8 :: Word)
    .|.  fromIntegral c



-- | Revision key type.
newtype Key = Key Word
