{- |
     @t'Language'@ represents an encoding-agnostic ISO 639 language, identified as a
     2-tuple @(alpha-2, alpha-3)@ of its standard representations defined in
     ISO 639-1 and ISO 639-3 respectively.

     == Laziness

     Evaluating a @t'Language'@ to WHNF evaluates it to normal form.
 -}

module Data.Language
  ( -- * Itself
    Language

    -- | == Type class shim
  , As (..)
  , unAs
 
    -- * Construct
  , mkLanguage

    -- * Encode
    -- ** Alpha
  , encodeAlpha

    -- ** Alpha-2
  , encodeAlpha2

    -- ** Alpha-3
  , encodeAlpha3

    -- * Decode
    -- ** Alpha
  , decodeAlpha
  , decodeAlpha'

    -- ** Alpha-2
  , decodeAlpha2
  , decodeAlpha2'

    -- ** Alpha-3
  , decodeAlpha3
  , decodeAlpha3'
  ) where

import           Data.As.Internal
import           Data.Language.Codec.Internal
import           Data.Language.Internal
