{-# LANGUAGE CPP
           , DeriveLift
           , StandaloneDeriving #-}

#if !MIN_VERSION_containers(0,6,6)
{-# LANGUAGE TemplateHaskell #-}
#endif

module Data.Language.Revision.Internal
  ( Revision (..)

  , empty

  , member
  , overlaps

  , Data.Language.Revision.Internal.lookup

  , insert
  , unsafeInsert

  , delete
  , unsafeDelete

  , toList
  ) where

import           Data.Language.Internal

import           Data.IntMap.Lazy (IntMap)
import qualified Data.IntMap.Lazy as IntMap
#if !MIN_VERSION_containers(0,6,6)
import           Data.IntMap.Internal (IntMap (..))
#endif
import           Language.Haskell.TH.Syntax
import           Prelude hiding (Ordering (..))



-- | Set of languages.
newtype Revision = Revision (IntMap Language)
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
    showList $ IntMap.foldr (:) [] $ filterAlpha3 rev



unKey :: Key -> Int
unKey (Key x) = fromIntegral x


smallestAlpha3 :: Key
smallestAlpha3 = Key 0x616161

filterAlpha3 :: IntMap x -> IntMap x
filterAlpha3 = snd . IntMap.split (unKey smallestAlpha3 - 1)


-- | Revision with no languages.
empty :: Revision
empty = Revision IntMap.empty



memberAlpha2 :: Alpha2 -> Revision -> Bool
memberAlpha2 val (Revision dict) = IntMap.member (unKey $ alpha2ToKey val) dict

memberAlpha3 :: Language -> Revision -> Bool
memberAlpha3 val (Revision dict) = IntMap.member (unKey . alpha3ToKey $ getAlpha3 val) dict

-- | Check if the given language is in a revision.
member :: Language -> Revision -> Bool
member val rev =
     ( case getAlpha2 val of
         Nothing -> True
         Just a2 -> memberAlpha2 a2 rev
     )
  && memberAlpha3 val rev

-- | Check if any of the representations of the given language is in a revision.
overlaps :: Language -> Revision -> Bool
overlaps val rev =
     ( case getAlpha2 val of
         Nothing -> False
         Just a2 -> memberAlpha2 a2 rev
     )
  || memberAlpha3 val rev



-- | Look up a language at a key in a revision.
lookup :: Key -> Revision -> Maybe Language
lookup (Key w) (Revision dict) = IntMap.lookup (fromIntegral w) dict



-- | Add a language to a revision.
--
--   Returns 'Nothing' if any other languages in the revision already hold the same
--   representation.
insert :: Language -> Revision -> Maybe Revision
insert val dict
  | overlaps val dict = Nothing
  | otherwise         = Just $! unsafeInsert val dict

-- | Add the representations of a given language to a revision.
--
--   The revision __MUST NOT__ have in it other languages with the same representation(s).
unsafeInsert :: Language -> Revision -> Revision
unsafeInsert val (Revision dict) =
  Revision $
      ( case getAlpha2 val of
          Nothing -> id
          Just a2 -> IntMap.insert (unKey $ alpha2ToKey a2) val
      )
    . IntMap.insert (unKey . alpha3ToKey $ getAlpha3 val) val
    $ dict



-- | Remove a language from a revision.
delete :: Language -> Revision -> Revision
delete val rev
  | member val rev = unsafeDelete val rev
  | otherwise      = rev

-- | Remove the representations of a given language from a revision.
--
--   If the revision does not contain in it the given language,
--   it __MUST NOT__ have in it other languages with the same representation(s).
unsafeDelete :: Language -> Revision -> Revision
unsafeDelete val (Revision dict) =
  Revision $
      ( case getAlpha2 val of
          Nothing -> id
          Just a2 -> IntMap.delete (unKey $ alpha2ToKey a2)
      )
    . IntMap.delete (unKey . alpha3ToKey $ getAlpha3 val)
    $ dict



-- | List all languages in a revision.
toList :: Revision -> [Language]
toList (Revision rev) = IntMap.elems $ filterAlpha3 rev
