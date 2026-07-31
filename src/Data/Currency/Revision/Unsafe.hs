{- |
     Data structure internals, helper operations and unsafe functions.
 -}

module Data.Currency.Revision.Unsafe
  ( -- * Itself
    Revision (..)

    -- * Key
  , Key (..)
  , alphaToKey
  , numericToKey

    -- * Lookup
  , Data.Currency.Revision.Internal.lookup

    -- * Insert
  , unsafeInsert

    -- * Delete
  , unsafeDelete
  ) where

import           Data.Currency.Internal
import           Data.Currency.Revision.Internal
