{-# LANGUAGE BangPatterns
           , DeriveLift
           , StandaloneDeriving #-}

module Data.Currency.Internal
  ( Currency (..)

  , mkCurrency
  , buildCurrency

  , Alpha (..)
  , getAlpha
  , mkAlpha
  , showsAlpha
  , alphaToByteString
  , alphaToText
  , alphaToKey

  , Numeric (..)
  , getNumeric
  , mkNumeric
  , mkNumericFromInt
  , showsNumeric
  , numericToByteString
  , numericToText
  , numericToInt
  , numericToKey

  , Digits (..)
  , getDigits
  , mkDigits

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



-- | ISO 4217 currency.
newtype Currency = -- | Alpha code is stored in bits 0-14, each letter taking up
                   --   5 bits (representing A-Z as values 1-26).
                   --
                   --   Numeric code is stored in bits 16-27, each digit taking up
                   --   4 bits (representing digits as values 0-9).
                   --
                   --   Minor unit count is stored in bits 28-31.
                   --
                   --   Bit coverage: @DDDD\'NNNN\'NNNN\'NNNN\'XAAA\'AAAA\'AAAA\'AAAA@.
                   Currency Word32
                   deriving Lift

-- | Encoded as an alpha code.
instance Show Currency where
  showsPrec _ = showsAlpha . getAlpha

-- | Full equality of internal representation.
deriving instance Eq Currency



-- | Construct a t'Currency' out of its two ISO 4217 representations and digit count.
mkCurrency
  :: ByteString     -- ^ Alpha code
  -> ByteString     -- ^ Numeric code
  -> Int            -- ^ Digits after decimal point (max 7)
  -> Maybe Currency
mkCurrency a b c =
  buildCurrency
    <$> mkAlpha a
    <*> mkNumeric b
    <*> mkDigits c

-- | Construct a t'Currency' out of its two ISO 4217 representations and digit count.
buildCurrency :: Alpha -> Numeric -> Digits -> Currency
buildCurrency (Alpha u v w) (Numeric x y z) (Digits d) =
  Currency $
        unsafeShiftL (fromIntegral d)        28

    .|. unsafeShiftL (fromIntegral x - 0x30) 24
    .|. unsafeShiftL (fromIntegral y - 0x30) 20
    .|. unsafeShiftL (fromIntegral z - 0x30) 16

    .|. unsafeShiftL (fromIntegral u - 0x40) 10
    .|. unsafeShiftL (fromIntegral v - 0x40)  5
    .|.              (fromIntegral w - 0x40)



isAlpha :: Word8 -> Bool
isAlpha w = w >= 0x41 && w <= 0x5A

isDigit :: Word8 -> Bool
isDigit w = w >= 0x30 && w <= 0x39



-- | Alpha code.
data Alpha = -- | Stored as ASCII codepoints.
             Alpha {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8
             deriving Eq


-- | Extract currency's alpha code.
getAlpha :: Currency -> Alpha
getAlpha (Currency w) =
  let a = fromIntegral $ (unsafeShiftR w 10 .&. 0x1F) + 0x40
      b = fromIntegral $ (unsafeShiftR w  5 .&. 0x1F) + 0x40
      c = fromIntegral $              (w    .&. 0x1F) + 0x40

  in Alpha a b c

-- | Create an alpha code from a three-letter ASCII string.
mkAlpha :: ByteString -> Maybe Alpha
mkAlpha bs =
  let x = B.index bs 0
      y = B.index bs 1
      z = B.index bs 2

  in if B.length bs == 3 && isAlpha x && isAlpha y && isAlpha z
       then Just $! Alpha x y z
       else Nothing


-- | Convert an alpha code to a three-letter string.
showsAlpha :: Alpha -> ShowS
showsAlpha (Alpha a b c) =
  let !sa = unsafeChr (fromIntegral a)
      !sb = unsafeChr (fromIntegral b)
      !sc = unsafeChr (fromIntegral c)

  in (:) sa . (:) sb . (:) sc

-- | Convert an alpha code to a three-letter ASCII string.
alphaToByteString :: Alpha -> ByteString
alphaToByteString (Alpha a b c) =
  B.unsafeCreate 3 $ \ptr -> do
    poke        ptr   a
    pokeByteOff ptr 1 b
    pokeByteOff ptr 2 c

-- | Convert an alpha code to a three-letter ASCII string.
alphaToText :: Alpha -> Text
alphaToText = decodeUtf8 . alphaToByteString


-- | Convert an alpha code to a dictionary key.
alphaToKey :: Alpha -> Key
alphaToKey (Alpha a b c) =
  Key $
        (fromIntegral a `unsafeShiftL` 16 :: Word)
    .|. (fromIntegral b `unsafeShiftL`  8 :: Word)
    .|.  fromIntegral c



-- | Numeric code.
data Numeric = -- | Stored as ASCII codepoints.
               Numeric {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8 {-# UNPACK #-} !Word8
               deriving Eq


-- | Extract currency's numeric code.
getNumeric :: Currency -> Numeric
getNumeric (Currency w) =
  let a = fromIntegral $ (unsafeShiftR w 24 .&. 0x0F) + 0x30
      b = fromIntegral $ (unsafeShiftR w 20 .&. 0x0F) + 0x30
      c = fromIntegral $ (unsafeShiftR w 16 .&. 0x0F) + 0x30

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


-- | Convert a numeric code to a three-letter string.
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

-- | Convert a number code to an integer.
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



-- | Digits after decimal point.
newtype Digits = Digits Word8
                 deriving Eq


-- | Extract currency's digit count.
getDigits :: Currency -> Digits
getDigits (Currency w) = Digits . fromIntegral $ unsafeShiftR w 28

-- | Create a digit count from an integer.
mkDigits :: Int -> Maybe Digits
mkDigits x
  | x < 0 || x > 7 = Nothing
  | otherwise      = Just $ Digits (fromIntegral x)



-- | Revision key type.
newtype Key = Key Word
