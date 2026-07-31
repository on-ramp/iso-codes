{-# LANGUAGE BangPatterns
           , DeriveLift
           , StandaloneDeriving #-}

module Data.Country.Internal
  ( Country (..)

  , mkCountry
  , buildCountry

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

  , Numeric (..)
  , getNumeric
  , mkNumeric
  , mkNumericFromInt
  , showsNumeric
  , numericToByteString
  , numericToText
  , numericToInt
  , numericToKey

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



-- | ISO 3166-1 country.
newtype Country = -- | Packed as corresponding ASCII codepoints.
                  --
                  --   Byte coverage: @NN\'N3\'33\'22@.
                  Country Word64
                  deriving Lift

-- | Encoded as an alpha-2 code.
instance Show Country where
  showsPrec _ = showsAlpha2 . getAlpha2

-- | Full equality of internal representation.
deriving instance Eq Country



-- | Construct a t'Country' out of its three ISO 3166-1 representations.
mkCountry
  :: ByteString    -- ^ Alpha-2 code
  -> ByteString    -- ^ Alpha-3 code
  -> ByteString    -- ^ Numeric code
  -> Maybe Country
mkCountry a b c =
  buildCountry
    <$> mkAlpha2 a
    <*> mkAlpha3 b
    <*> mkNumeric c

-- | Construct a t'Country' out of its three ISO 3166-1 representations.
buildCountry :: Alpha2 -> Alpha3 -> Numeric -> Country
buildCountry (Alpha2 s t) (Alpha3 u v w) (Numeric x y z) =
  Country $
        unsafeShiftL (fromIntegral x) 56
    .|. unsafeShiftL (fromIntegral y) 48
    .|. unsafeShiftL (fromIntegral z) 40

    .|. unsafeShiftL (fromIntegral u) 32
    .|. unsafeShiftL (fromIntegral v) 24
    .|. unsafeShiftL (fromIntegral w) 16

    .|. unsafeShiftL (fromIntegral s)  8
    .|.               fromIntegral t



isAlpha :: Word8 -> Bool
isAlpha w = w >= 0x41 && w <= 0x5A

isDigit :: Word8 -> Bool
isDigit w = w >= 0x30 && w <= 0x39


-- | Alpha-2 code.
data Alpha2 = -- | Stored as ASCII codepoints.
              Alpha2 {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8
              deriving Eq


-- | Extract country's alpha-2 code.
getAlpha2 :: Country -> Alpha2
getAlpha2 (Country w) =
  let a = fromIntegral $ unsafeShiftR w 8
      b = fromIntegral                w

  in Alpha2 a b

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


-- | Extract country's alpha-3 code.
getAlpha3 :: Country -> Alpha3
getAlpha3 (Country w) =
  let a = fromIntegral $ unsafeShiftR w 32
      b = fromIntegral $ unsafeShiftR w 24
      c = fromIntegral $ unsafeShiftR w 16

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



-- | Numeric code.
data Numeric = -- | Stored as ASCII codepoints.
               Numeric {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8
               deriving Eq


-- | Extract country's numeric code.
getNumeric :: Country -> Numeric
getNumeric (Country w) =
  let a = fromIntegral $ unsafeShiftR w 56
      b = fromIntegral $ unsafeShiftR w 48
      c = fromIntegral $ unsafeShiftR w 40

  in Numeric a b c

-- | Create a numeric code from a three-digit ASCII string.
mkNumeric :: ByteString -> Maybe Numeric
mkNumeric bs =
  let x = B.index bs 0
      y = B.index bs 1
      z = B.index bs 2

  in if B.length bs == 3 && isDigit x && isDigit y && isDigit z
       then Just $! Numeric x y z
       else Nothing

-- | Create a numeric code from an integer.
mkNumericFromInt :: Int -> Maybe Numeric
mkNumericFromInt num =
  if num < 0 || num > 999
    then Nothing
    else let www :: Word
             www = fromIntegral num

             (ww, c) = quotRem www 10
             (a , b) = quotRem ww  10

         in Just $! Numeric (fromIntegral a + 0x30)
                            (fromIntegral b + 0x30) (fromIntegral c + 0x30)


-- | Convert a numeric code to a three-letter @Char@ list.
showsNumeric :: Numeric -> ShowS
showsNumeric (Numeric a b c) =
  let !sa = unsafeChr (fromIntegral a)
      !sb = unsafeChr (fromIntegral b)
      !sc = unsafeChr (fromIntegral c)

  in (:) sa . (:) sb . (:) sc

-- | Convert an numeric code to a three-letter ASCII string.
numericToByteString :: Numeric -> ByteString
numericToByteString (Numeric a b c) =
  B.unsafeCreate 3 $ \ptr -> do
    poke        ptr   a
    pokeByteOff ptr 1 b
    pokeByteOff ptr 2 c

-- | Convert an alpha-3 code to a three-letter ASCII string.
numericToText :: Numeric -> Text
numericToText = decodeUtf8 . numericToByteString

-- | Convert a numeric code to an integer.
numericToInt :: Numeric -> Int
numericToInt (Numeric a b c) =
  let !ia = fromIntegral a - 0x30
      !ib = fromIntegral b - 0x30
      !ic = fromIntegral c - 0x30

  in 100 * ia + 10 * ib + ic


-- | Convert a numeric code to a dictionary key.
numericToKey :: Numeric -> Key
numericToKey (Numeric a b c) =
  Key $
        (fromIntegral a `unsafeShiftL` 16 :: Word)
    .|. (fromIntegral b `unsafeShiftL`  8 :: Word)
    .|.  fromIntegral c



-- | Revision key type.
newtype Key = Key Word
