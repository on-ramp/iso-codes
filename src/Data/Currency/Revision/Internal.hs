{-# LANGUAGE CPP
           , DeriveLift
           , StandaloneDeriving #-}

#if !MIN_VERSION_containers(0,6,6)
{-# LANGUAGE TemplateHaskell #-}
#endif

module Data.Currency.Revision.Internal
  ( Revision (..)

  , empty

  , member
  , overlaps

  , Data.Currency.Revision.Internal.lookup

  , insert
  , unsafeInsert

  , delete
  , unsafeDelete

  , toList
  ) where

import           Data.Currency.Internal

import           Data.IntMap.Lazy (IntMap)
import qualified Data.IntMap.Lazy as IntMap
#if !MIN_VERSION_containers(0,6,6)
import           Data.IntMap.Internal (IntMap (..))
#endif
import           Language.Haskell.TH.Syntax
import           Prelude hiding (Ordering (..))



-- | Set of currencies.
newtype Revision = Revision (IntMap Currency)
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
    showList $ IntMap.foldr (:) [] $ filterAlpha rev



unKey :: Key -> Int
unKey (Key x) = fromIntegral x


smallestAlpha :: Key
smallestAlpha = Key 0x414141

filterAlpha :: IntMap x -> IntMap x
filterAlpha = snd . IntMap.split (unKey smallestAlpha - 1)


-- | Revision with no currencies.
empty :: Revision
empty = Revision IntMap.empty



memberAlpha, memberNumeric :: Currency -> Revision -> Bool
memberAlpha   val (Revision dict) = IntMap.member (unKey . alphaToKey   $ getAlpha   val) dict
memberNumeric val (Revision dict) = IntMap.member (unKey . numericToKey $ getNumeric val) dict

-- | Check if a given currency is in a revision.
member :: Currency -> Revision -> Bool
member val rev = memberAlpha val rev && memberNumeric val rev

-- | Check if any of the representations of a given currency is in a revision.
overlaps :: Currency -> Revision -> Bool
overlaps val rev = memberAlpha val rev || memberNumeric val rev



-- | Look up a currency at a key in a revision.
lookup :: Key -> Revision -> Maybe Currency
lookup (Key w) (Revision dict) = IntMap.lookup (fromIntegral w) dict



-- | Add a currency to a revision.
--
--   Returns 'Nothing' if any other currencies in the revision already hold the same
--   representation.
insert :: Currency -> Revision -> Maybe Revision
insert val dict
  | overlaps val dict = Nothing
  | otherwise         = Just $! unsafeInsert val dict

-- | Add the representations of a given currency to a revision.
--
--   The revision __MUST NOT__ have in it other currencies with the same representation(s).
unsafeInsert :: Currency -> Revision -> Revision
unsafeInsert val (Revision dict) =
  Revision $
      IntMap.insert (unKey . alphaToKey   $ getAlpha   val) val
    . IntMap.insert (unKey . numericToKey $ getNumeric val) val
    $ dict



-- | Remove a currency from a revision.
delete :: Currency -> Revision -> Revision
delete val rev
  | member val rev = unsafeDelete val rev
  | otherwise      = rev

-- | Remove the representations of a given currency from a revision.
--
--   If the revision does not contain in it the given currency,
--   it __MUST NOT__ have in it other currencies with the same representation(s).
unsafeDelete :: Currency -> Revision -> Revision
unsafeDelete val (Revision dict) =
  Revision $
      IntMap.delete (unKey . alphaToKey   $ getAlpha   val)
    . IntMap.delete (unKey . numericToKey $ getNumeric val)
    $ dict



-- | List all currencies in a revision.
toList :: Revision -> [Currency]
toList (Revision rev) = IntMap.elems $ filterAlpha rev
