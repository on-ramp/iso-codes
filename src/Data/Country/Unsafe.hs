{- |
     Data structure internals, helper operations and unsafe functions.
 -}

module Data.Country.Unsafe
  ( -- * Itself
    Country (..)

    -- * Construct
  , buildCountry

    -- * Alpha-2
  , Alpha2 (..)
  , getAlpha2
  , mkAlpha2
  , showsAlpha2
  , alpha2ToByteString
  , alpha2ToText

    -- * Alpha-3
  , Alpha3 (..)
  , getAlpha3
  , mkAlpha3
  , showsAlpha3
  , alpha3ToByteString
  , alpha3ToText

    -- * Numeric
  , Numeric (..)
  , getNumeric
  , mkNumeric
  , mkNumericFromInt
  , showsNumeric
  , numericToByteString
  , numericToText
  , numericToInt
  ) where

import           Data.Country.Internal
