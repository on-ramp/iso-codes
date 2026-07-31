{- |
     @Revision@ represents a set of countries as defined by the ISO 3166-1
     standard at a particular point in time.

     All codes within a particular revision are guaranteed to be unique by
     the standard.

     Different revisions may use the same code to refer to different countries or
     different codes to refer to the same country. For example,
     during their respective times Czechoslovakia was identified as @(CS, CSK, 200)@,
     and Serbia and Montenegro was identified as @(CS, SCG, 891)@; Romania
     changed its alpha-3 code from @ROM@ to @ROU@ on @2002-02-01@.
 -}

module Data.Country.Revision
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
  , lookupNumeric
  , lookupNumericFromInt

    -- * Insert
  , insert

    -- * Delete
  , delete

    -- * List
  , toList
  ) where

import           Data.Country.Internal
import           Data.Country.Revision.Internal as Revision

import           Data.ByteString (ByteString)



-- | Parse an alpha-2 code from a two-byte ASCII sequence.
lookupAlpha2 :: ByteString -> Revision -> Maybe Country
lookupAlpha2 bs rev = do
  code <- mkAlpha2 bs
  Revision.lookup (alpha2ToKey code) rev


-- | Parse an alpha-3 code from a three-byte ASCII sequence.
lookupAlpha3 :: ByteString -> Revision -> Maybe Country
lookupAlpha3 bs rev = do
  code <- mkAlpha3 bs
  Revision.lookup (alpha3ToKey code) rev


-- | Parse a numeric code from a three-byte ASCII sequence.
lookupNumeric :: ByteString -> Revision -> Maybe Country
lookupNumeric bs rev = do
  code <- mkNumeric bs
  Revision.lookup (numericToKey code) rev


-- | Parse a numeric code from an integer.
lookupNumericFromInt :: Int -> Revision -> Maybe Country
lookupNumericFromInt int rev = do
  code <- mkNumericFromInt int
  Revision.lookup (numericToKey code) rev
