{-# OPTIONS_GHC -Wno-orphans #-}

{-# LANGUAGE DataKinds
           , FlexibleInstances
           , KindSignatures #-}

module Data.As.Internal
  ( As (..)
  , unAs
  ) where

import           Data.Country.Aeson as Country.Aeson
import           Data.Country.Codec.Internal as Country
import           Data.Country.Internal as Country
import           Data.Country.PostgreSQL as Country.PostgreSQL
import           Data.Currency.Aeson as Currency.Aeson
import           Data.Currency.Codec.Internal as Currency
import           Data.Currency.Internal as Currency
import           Data.Currency.PostgreSQL as Currency.PostgreSQL
import           Data.Language.Aeson as Language.Aeson
import           Data.Language.Codec.Internal as Language
import           Data.Language.Internal as Language
import           Data.Language.PostgreSQL as Language.PostgreSQL

import           Data.Aeson
import           Data.Coerce
import           Data.Function
import           Data.Text.Encoding (encodeUtf8)
import           Database.PostgreSQL.Simple.FromField
import           Database.PostgreSQL.Simple.ToField
import           GHC.TypeLits
import           Web.HttpApiData



-- | Tagged type.
newtype As (s :: Symbol) a = As a

-- | Remove the tag.
unAs :: As s a -> a
unAs (As a) = a



instance Show (As "alpha-2" Country) where
  showsPrec _ = Country.showsAlpha2 . Country.getAlpha2 . unAs

instance Eq (As "alpha-2" Country) where
  (==) = (==) `on` Country.getAlpha2 . unAs

instance Ord (As "alpha-2" Country) where
  compare = compare `on` Country.getAlpha2 . unAs

instance ToJSON (As "alpha-2" Country) where
  toJSON = Country.Aeson.toAlpha2 . unAs

instance FromJSON (As "alpha-2" Country) where
  parseJSON = coerce Country.Aeson.parseAlpha2

instance ToField (As "alpha-2" Country) where
  toField = Country.PostgreSQL.toAlpha2 . unAs

instance FromField (As "alpha-2" Country) where
  fromField = coerce Country.PostgreSQL.fromAlpha2

instance ToHttpApiData (As "alpha-2" Country) where
  toQueryParam = Country.encodeAlpha2 . unAs

instance FromHttpApiData (As "alpha-2" Country) where
  parseQueryParam = coerce . Country.decodeAlpha2 . encodeUtf8



instance Show (As "alpha-3" Country) where
  showsPrec _ = Country.showsAlpha3 . Country.getAlpha3 . unAs

instance Eq (As "alpha-3" Country) where
  (==) = (==) `on` Country.getAlpha3 . unAs

instance Ord (As "alpha-3" Country) where
  compare = compare `on` Country.getAlpha3 . unAs

instance ToJSON (As "alpha-3" Country) where
  toJSON = Country.Aeson.toAlpha3 . unAs

instance FromJSON (As "alpha-3" Country) where
  parseJSON = coerce Country.Aeson.parseAlpha3

instance ToField (As "alpha-3" Country) where
  toField = Country.PostgreSQL.toAlpha3 . unAs

instance FromField (As "alpha-3" Country) where
  fromField = coerce Country.PostgreSQL.fromAlpha3

instance ToHttpApiData (As "alpha-3" Country) where
  toQueryParam = Country.encodeAlpha3 . unAs

instance FromHttpApiData (As "alpha-3" Country) where
  parseQueryParam = coerce . Country.decodeAlpha3 . encodeUtf8



instance Show (As "numeric" Country) where
  showsPrec _ = Country.showsNumeric . Country.getNumeric . unAs

instance Eq (As "numeric" Country) where
  (==) = (==) `on` Country.getNumeric . unAs

instance Ord (As "numeric" Country) where
  compare = compare `on` Country.getNumeric . unAs

instance ToJSON (As "numeric" Country) where
  toJSON = Country.Aeson.toNumeric . unAs

instance FromJSON (As "numeric" Country) where
  parseJSON = coerce Country.Aeson.parseNumeric

instance ToField (As "numeric" Country) where
  toField = Country.PostgreSQL.toNumeric . unAs

instance FromField (As "numeric" Country) where
  fromField = coerce Country.PostgreSQL.fromNumeric

instance ToHttpApiData (As "numeric" Country) where
  toQueryParam = Country.encodeNumeric . unAs

instance FromHttpApiData (As "numeric" Country) where
  parseQueryParam = coerce . Country.decodeNumeric . encodeUtf8



instance Show (As "alpha" Currency) where
  showsPrec _ = Currency.showsAlpha . Currency.getAlpha . unAs

instance Eq (As "alpha" Currency) where
  (==) = (==) `on` Currency.getAlpha . unAs

instance Ord (As "alpha" Currency) where
  compare = compare `on` Currency.getAlpha . unAs

instance ToJSON (As "alpha" Currency) where
  toJSON = Currency.Aeson.toAlpha . unAs

instance FromJSON (As "alpha" Currency) where
  parseJSON = coerce Currency.Aeson.parseAlpha

instance ToField (As "alpha" Currency) where
  toField = Currency.PostgreSQL.toAlpha . unAs

instance FromField (As "alpha" Currency) where
  fromField = coerce Currency.PostgreSQL.fromAlpha

instance ToHttpApiData (As "alpha" Currency) where
  toQueryParam = Currency.encodeAlpha . unAs

instance FromHttpApiData (As "alpha" Currency) where
  parseQueryParam = coerce . Currency.decodeAlpha . encodeUtf8



instance Show (As "numeric" Currency) where
  showsPrec _ = Currency.showsNumeric . Currency.getNumeric . unAs

instance Eq (As "numeric" Currency) where
  (==) = (==) `on` Currency.getNumeric . unAs

instance Ord (As "numeric" Currency) where
  compare = compare `on` Currency.getNumeric . unAs

instance ToJSON (As "numeric" Currency) where
  toJSON = Currency.Aeson.toNumeric . unAs

instance FromJSON (As "numeric" Currency) where
  parseJSON = coerce Currency.Aeson.parseNumeric

instance ToField (As "numeric" Currency) where
  toField = Currency.PostgreSQL.toNumeric . unAs

instance FromField (As "numeric" Currency) where
  fromField = coerce Currency.PostgreSQL.fromNumeric

instance ToHttpApiData (As "numeric" Currency) where
  toQueryParam = Currency.encodeNumeric . unAs

instance FromHttpApiData (As "numeric" Currency) where
  parseQueryParam = coerce . Currency.decodeNumeric . encodeUtf8



-- | Encoded as an ISO 639-1 (if available) or ISO 639-3 code.
instance ToJSON Language where
  toJSON = Language.Aeson.toAlpha

-- | Accepts both ISO 639-1 or ISO 639-3 codes.
instance FromJSON Language where
  parseJSON = Language.Aeson.parseAlpha

-- | Encoded as an ISO 639-1 (if available) or ISO 639-3 code.
instance ToField Language where
  toField = Language.PostgreSQL.toAlpha

-- | Accepts both ISO 639-1 or ISO 639-3 codes.
instance FromField Language where
  fromField = Language.PostgreSQL.fromAlpha

-- | Encoded as an ISO 639-1 (if available) or ISO 639-3 code.
instance ToHttpApiData Language where
  toQueryParam = Language.encodeAlpha

-- | Accepts both ISO 639-1 or ISO 639-3 codes.
instance FromHttpApiData Language where
  parseQueryParam = Language.decodeAlpha . encodeUtf8



instance Show (As "alpha-3" Language) where
  showsPrec _ = Language.showsAlpha3 . Language.getAlpha3 . unAs

instance Eq (As "alpha-3" Language) where
  (==) = (==) `on` Language.getAlpha3 . unAs

instance Ord (As "alpha-3" Language) where
  compare = compare `on` Language.getAlpha3 . unAs

instance ToJSON (As "alpha-3" Language) where
  toJSON = Language.Aeson.toAlpha3 . unAs

instance FromJSON (As "alpha-3" Language) where
  parseJSON = coerce Language.Aeson.parseAlpha3

instance ToField (As "alpha-3" Language) where
  toField = Language.PostgreSQL.toAlpha3 . unAs

instance FromField (As "alpha-3" Language) where
  fromField = coerce Language.PostgreSQL.fromAlpha3

instance ToHttpApiData (As "alpha-3" Language) where
  toQueryParam = Language.encodeAlpha3 . unAs

instance FromHttpApiData (As "alpha-3" Language) where
  parseQueryParam = coerce . Language.decodeAlpha3 . encodeUtf8
