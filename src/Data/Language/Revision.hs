{- |
     @Revision@ represents a set of languages as defined by the ISO 639 
     standard at a particular point in time.

     All codes within a particular revision are guaranteed to be unique by
     the standard.
 -}

module Data.Language.Revision
  ( -- * Itself
    Revision

    -- * Construct
  , empty

    -- * Query
  , member
  , overlaps

    -- * Lookup
  , lookupAlpha2
  , lookupAlpha3

    -- * Insert
  , insert

    -- * Delete
  , delete

    -- * List
  , toList
  ) where

import           Data.Language.Internal
import           Data.Language.Revision.Internal as Revision

import           Data.ByteString (ByteString)



-- | Parse an alpha-2 code from a two-byte ASCII sequence.
lookupAlpha2 :: ByteString -> Revision -> Maybe Language
lookupAlpha2 bs rev = do
  code <- mkAlpha2 bs
  Revision.lookup (alpha2ToKey code) rev


-- | Parse an alpha-3 code from a three-byte ASCII sequence.
lookupAlpha3 :: ByteString -> Revision -> Maybe Language
lookupAlpha3 bs rev = do
  code <- mkAlpha3 bs
  Revision.lookup (alpha3ToKey code) rev
