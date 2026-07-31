{- |
     Data structure internals, helper operations and unsafe functions.
 -}

module Data.Language.Unsafe
  ( -- * Itself
    Language (..)

    -- * Construct
  , buildLanguage

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
  ) where
  
import           Data.Language.Internal
