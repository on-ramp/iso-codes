{- |
     @t'Country'@ represents an encoding-agnostic ISO 3166-1 country, identified as a
     3-tuple @(alpha-2, alpha-3, numeric)@ of its standard representations.

     Note: numeric country codes are __not__ numbers and __should not__ be treated as such.
     Serialization to numbers is thus only provided for compatibility purposes.

     == Laziness

     Evaluating a @t'Country'@ to WHNF evaluates it to normal form.
 -}

module Data.Country
  ( -- * Itself
    Country

    -- | == Type class shim
  , As (..)
  , unAs
 
    -- * Construct
  , mkCountry

    -- * Encode
    -- ** Alpha-2
  , encodeAlpha2
  
    -- ** Alpha-3
  , encodeAlpha3

    -- ** Numeric
  , encodeNumeric

    -- | === Integer representation
  , encodeNumericAsInt

    -- * Decode
    -- ** Alpha-2
  , decodeAlpha2
  , decodeAlpha2'

    -- ** Alpha-3
  , decodeAlpha3
  , decodeAlpha3'

    -- ** Numeric
  , decodeNumeric
  , decodeNumeric'

    -- | === Integer representation
  , decodeNumericFromInt
  , decodeNumericFromInt'
  ) where

import           Data.As.Internal
import           Data.Country.Codec.Internal
import           Data.Country.Internal
