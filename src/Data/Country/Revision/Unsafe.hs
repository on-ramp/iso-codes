{- |
     Data structure internals, helper operations and unsafe functions.
 -}

module Data.Country.Revision.Unsafe
  ( -- * Itself
    Revision (..)

    -- * Key
  , Key (..)
  , alpha2ToKey
  , alpha3ToKey
  , numericToKey

    -- * Lookup
  , Data.Country.Revision.Internal.lookup

    -- * Insert
  , unsafeInsert

    -- * Delete
  , unsafeDelete
  ) where

import           Data.Country.Internal
import           Data.Country.Revision.Internal
