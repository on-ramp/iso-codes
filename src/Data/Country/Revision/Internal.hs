{-# LANGUAGE CPP
           , DeriveLift
           , StandaloneDeriving #-}

#if !MIN_VERSION_containers(0,6,6)
{-# LANGUAGE TemplateHaskell #-}
#endif

module Data.Country.Revision.Internal
  ( Revision (..)

  , empty

  , member
  , overlaps

  , Data.Country.Revision.Internal.lookup

  , insert
  , unsafeInsert

  , delete
  , unsafeDelete

  , toList
  ) where

import           Data.Country.Internal

import           Data.IntMap.Lazy (IntMap)
import qualified Data.IntMap.Lazy as IntMap
#if !MIN_VERSION_containers(0,6,6)
import           Data.IntMap.Internal (IntMap (..))
#endif
import           Language.Haskell.TH.Syntax
import           Prelude hiding (Ordering (..))



-- | Set of countries.
newtype Revision = Revision (IntMap Country)
                   deriving Eq

#if MIN_VERSION_containers(0,6,6)
deriving instance Lift Revision
#else
liftIntMap :: Lift a => IntMap a -> Q (TExp (IntMap a))
liftIntMap x =
  case x of
    Bin p m l r -> [|| Bin p m $$(liftIntMap l) $$(liftIntMap r) ||]
    Tip k a     -> [|| Tip k $$(liftTyped a) ||]
    Nil         -> [|| Nil ||]

instance Lift Revision where
  liftTyped (Revision x) = [|| Revision $$(liftIntMap x) ||]
#endif

instance Show Revision where
  showsPrec _ (Revision rev) =
    showList $ IntMap.foldr (:) [] $ filterAlpha2 rev



unKey :: Key -> Int
unKey (Key x) = fromIntegral x


largestAlpha2 :: Key
largestAlpha2 = Key 0x5A5A

filterAlpha2 :: IntMap x -> IntMap x
filterAlpha2 = fst . IntMap.split (unKey largestAlpha2 + 1)


-- | Revision with no countries.
empty :: Revision
empty = Revision IntMap.empty



memberAlpha2, memberAlpha3, memberNumeric :: Country -> Revision -> Bool
memberAlpha2  val (Revision dict) = IntMap.member (unKey . alpha2ToKey  $ getAlpha2  val) dict
memberAlpha3  val (Revision dict) = IntMap.member (unKey . alpha3ToKey  $ getAlpha3  val) dict
memberNumeric val (Revision dict) = IntMap.member (unKey . numericToKey $ getNumeric val) dict

-- | Check if a given country is in a revision.
member :: Country -> Revision -> Bool
member val rev = memberAlpha2 val rev && memberAlpha3 val rev && memberNumeric val rev

-- | Check if any of the representations of a given country is in a revision.
overlaps :: Country -> Revision -> Bool
overlaps val rev = memberAlpha2 val rev || memberAlpha3 val rev || memberNumeric val rev



-- | Look up a country at a key in a revision.
lookup :: Key -> Revision -> Maybe Country
lookup (Key w) (Revision dict) = IntMap.lookup (fromIntegral w) dict



-- | Add a country to a revision.
--
--   Returns 'Nothing' if any other countries in the revision already hold the same
--   representation.
insert :: Country -> Revision -> Maybe Revision
insert val dict
  | overlaps val dict = Nothing
  | otherwise         = Just $! unsafeInsert val dict

-- | Add the representations of a given country to a revision.
--
--   The revision __MUST NOT__ have in it other countries with the same representation(s).
unsafeInsert :: Country -> Revision -> Revision
unsafeInsert val (Revision dict) =
  Revision $
      IntMap.insert (unKey . alpha2ToKey  $ getAlpha2  val) val
    . IntMap.insert (unKey . alpha3ToKey  $ getAlpha3  val) val
    . IntMap.insert (unKey . numericToKey $ getNumeric val) val
    $ dict



-- | Remove a country from a revision.
delete :: Country -> Revision -> Revision
delete val rev
  | member val rev = unsafeDelete val rev
  | otherwise      = rev

-- | Remove the representations of a given country from a revision.
--
--   If the revision does not contain in it the given country,
--   it __MUST NOT__ have in it other countries with the same representation(s).
unsafeDelete :: Country -> Revision -> Revision
unsafeDelete val (Revision dict) =
  Revision $
      IntMap.delete (unKey . alpha2ToKey  $ getAlpha2  val)
    . IntMap.delete (unKey . alpha3ToKey  $ getAlpha3  val)
    . IntMap.delete (unKey . numericToKey $ getNumeric val)
    $ dict



-- | List all countries in a revision.
toList :: Revision -> [Country]
toList (Revision rev) = IntMap.elems $ filterAlpha2 rev
