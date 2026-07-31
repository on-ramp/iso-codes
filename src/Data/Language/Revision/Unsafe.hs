{- |
     Data structure internals, helper operations and unsafe functions.
 -}

module Data.Language.Revision.Unsafe
  ( -- * Itself
    Revision (..)

    -- * Key
  , Key (..)
  , alpha2ToKey
  , alpha3ToKey

    -- * Lookup
  , Data.Language.Revision.Internal.lookup

    -- * Insert
  , unsafeInsert

    -- * Delete
  , unsafeDelete
  ) where

import           Data.Language.Internal
import           Data.Language.Revision.Internal
