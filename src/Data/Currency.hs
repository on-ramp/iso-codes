{- |
     @t'Currency'@ represents an encoding-agnostic ISO 4217 currency, identified as a
     3-tuple @(alpha, numeric, digits)@, where @alpha@ and @numeric@ are
     its standard representations.

     NOTE: numeric currency codes are __not__ numbers and __should not__ be treated as such.
     Serialization to numbers is thus only provided for compatibility purposes.

     == Laziness

     Evaluating a @t'Currency'@ to WHNF evaluates it to normal form.
 -}

module Data.Currency
  ( -- * Itself
    Currency

    -- | == Type class shim
  , As (..)
  , unAs
 
    -- * Construct
  , mkCurrency

    -- * Query
  , digits

    -- * Encode
    -- ** Alpha
  , encodeAlpha

    -- ** Numeric
  , encodeNumeric

    -- | === Integer representation
  , encodeNumericAsInt

    -- * Decode
    -- ** Alpha
  , decodeAlpha
  , decodeAlpha'

    -- ** Numeric
  , decodeNumeric
  , decodeNumeric'

    -- | === Integer representation
  , decodeNumericFromInt
  , decodeNumericFromInt'
  ) where

import           Data.As.Internal
import           Data.Currency.Codec.Internal
import           Data.Currency.Internal



-- | Number of digits after the decimal point.
digits :: Currency -> Int
digits = (\(Digits d) -> fromIntegral d) . getDigits
