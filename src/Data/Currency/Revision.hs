{- |
     @Revision@ represents a set of currencies as defined by the ISO 4217
     standard at a particular point in time.

     All codes within a particular revision are guaranteed to be unique by
     the standard.

     NOTE: codes for precious metals (which do not have a minor unit) and fund currencies
     are not provided in this library for implementation simplicity.
 -}

module Data.Currency.Revision
  ( -- * Itself
    Revision

    -- * Construct
  , empty

    -- * Query
  , member
  , overlaps

    -- * Lookup
  , lookupAlpha
  , lookupNumeric
  , lookupNumericFromInt

    -- * Insert
  , insert

    -- * Delete
  , delete

    -- * List
  , toList
  ) where

import           Data.Currency.Internal
import           Data.Currency.Revision.Internal as Revision

import           Data.ByteString (ByteString)



-- | Parse an alpha code from a three-byte ASCII sequence.
lookupAlpha :: ByteString -> Revision -> Maybe Currency
lookupAlpha bs rev = do
  code <- mkAlpha bs
  Revision.lookup (alphaToKey code) rev


-- | Parse a numeric code from a three-byte ASCII sequence.
lookupNumeric :: ByteString -> Revision -> Maybe Currency
lookupNumeric bs rev = do
  code <- mkNumeric bs
  Revision.lookup (numericToKey code) rev


-- | Parse a numeric code from an integer.
lookupNumericFromInt :: Int -> Revision -> Maybe Currency
lookupNumericFromInt int rev = do
  code <- mkNumericFromInt int
  Revision.lookup (numericToKey code) rev
