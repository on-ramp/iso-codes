{-# OPTIONS_GHC -Wno-orphans #-}

{-# LANGUAGE DataKinds
           , OverloadedStrings
           , RecordWildCards #-}

module Test.Language
  ( spec
  ) where

import           Data.Language
import           Data.Language.Aeson as Aeson
import           Data.Language.PostgreSQL as PostgreSQL
import           Data.Language.Revision as Revision
import           Data.Language.Revision.Unsafe as Revision
import           Data.Language.Unsafe

import           Data.Aeson as Aeson
import           Data.Aeson.Types as Aeson (parseEither)
import           Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as BC
import           Data.Foldable
import           Data.Maybe
import           Data.Text.Encoding (decodeUtf8)
import           Database.PostgreSQL.Simple as PostgreSQL
import           Database.PostgreSQL.Simple.FromField as PostgreSQL
import           Database.PostgreSQL.Simple.Ok as PostgreSQL
import           Database.PostgreSQL.Simple.ToField as PostgreSQL
import           Test.Hspec



instance Show Alpha2  where showsPrec _ = showsAlpha2
instance Show Alpha3  where showsPrec _ = showsAlpha3



data Ref =
       Ref
         { refAlpha2   :: Maybe ByteString
         , refAlpha3   :: ByteString
         , refLanguage :: Language
         , refRevision :: Revision
         }

refAlpha :: Ref -> ByteString
refAlpha Ref {..} = fromMaybe refAlpha3 refAlpha2

mkRef :: Maybe ByteString -> ByteString -> Ref
mkRef a b =
  case mkLanguage a b of
    Nothing  -> error $ "Cannot construct a reference country: " <> show (a, b)
    Just val ->
      let rev = Revision.unsafeInsert val Revision.empty
      in Ref a b val rev

refs :: [Ref]
refs =
  [ mkRef (Just "aa") "aaa"
  , mkRef (Just "au") "aus"
  , mkRef     Nothing "pkr"
  , mkRef (Just "kp") "twn"
  , mkRef     Nothing "usa"
  , mkRef (Just "zz") "zzz"
  ]



test_getAlpha2, test_getAlpha3 :: Ref -> SpecWith ()
test_getAlpha2 ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    getAlpha2 refLanguage `shouldBe` (mkAlpha2 =<< refAlpha2)

test_getAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    Just (getAlpha3 refLanguage) `shouldBe` mkAlpha3 refAlpha3



test_showsAlpha2, test_showsAlpha3 :: Ref -> SpecWith ()
test_showsAlpha2 ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    (flip showsAlpha2 [] <$> getAlpha2 refLanguage) `shouldBe` fmap BC.unpack refAlpha2

test_showsAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    showsAlpha3 (getAlpha3 refLanguage) [] `shouldBe` BC.unpack refAlpha3



test_alpha2ToByteString, test_alpha3ToByteString :: Ref -> Spec
test_alpha2ToByteString ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    fmap alpha2ToByteString (getAlpha2 refLanguage) `shouldBe` refAlpha2

test_alpha3ToByteString Ref {..} =
  it (BC.unpack refAlpha3) $
    alpha3ToByteString (getAlpha3 refLanguage) `shouldBe` refAlpha3



test_alpha2ToText, test_alpha3ToText :: Ref -> Spec
test_alpha2ToText ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    fmap alpha2ToText (getAlpha2 refLanguage) `shouldBe` fmap decodeUtf8 refAlpha2

test_alpha3ToText Ref {..} =
  it (BC.unpack refAlpha3) $
    alpha3ToText (getAlpha3 refLanguage) `shouldBe` decodeUtf8 refAlpha3



test_encodeAlpha, test_encodeAlpha2, test_encodeAlpha3 :: Ref -> Spec
test_encodeAlpha ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    encodeAlpha refLanguage `shouldBe` decodeUtf8 (refAlpha ref)

test_encodeAlpha2 ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    encodeAlpha2 refLanguage `shouldBe` fmap decodeUtf8 refAlpha2

test_encodeAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    encodeAlpha3 refLanguage `shouldBe` decodeUtf8 refAlpha3



test_decodeAlpha, test_decodeAlpha2, test_decodeAlpha3 :: Ref -> Spec
test_decodeAlpha ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    decodeAlpha' refRevision (refAlpha ref) `shouldBe` Right refLanguage

test_decodeAlpha2 ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    fmap (decodeAlpha2' refRevision) refAlpha2 `shouldBe` (Right refLanguage <$ refAlpha2)

test_decodeAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    decodeAlpha3' refRevision refAlpha3 `shouldBe` Right refLanguage



test_aeson_toAlpha, test_aeson_toAlpha3 :: Ref -> SpecWith ()
test_aeson_toAlpha ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    Aeson.toAlpha refLanguage `shouldBe` Aeson.String (decodeUtf8 $ refAlpha ref)

test_aeson_toAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    Aeson.toAlpha3 refLanguage `shouldBe` Aeson.String (decodeUtf8 refAlpha3)



test_aeson_parseAlpha, test_aeson_parseAlpha3 :: Ref -> SpecWith ()
test_aeson_parseAlpha ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    Aeson.parseEither (Aeson.parseAlpha' refRevision) (Aeson.String . decodeUtf8 $ refAlpha ref)
      `shouldBe` Right refLanguage

test_aeson_parseAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    Aeson.parseEither (Aeson.parseAlpha3' refRevision) (Aeson.String $ decodeUtf8 refAlpha3)
      `shouldBe` Right refLanguage



eqPostgreSQLEscape :: ByteString -> Action -> Bool
eqPostgreSQLEscape a (Escape b) = a == b
eqPostgreSQLEscape _ _          = False

test_postgres_toAlpha, test_postgres_toAlpha3 :: Ref -> SpecWith ()
test_postgres_toAlpha ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    PostgreSQL.toAlpha refLanguage `shouldSatisfy` eqPostgreSQLEscape (refAlpha ref)

test_postgres_toAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    PostgreSQL.toAlpha3 refLanguage `shouldSatisfy` eqPostgreSQLEscape refAlpha3



dudField :: PostgreSQL.Field
dudField = error "Tried to evaluated a PostgreSQL Field"

dudConn :: PostgreSQL.Connection
dudConn = error "Tried to evaluated a PostgreSQL Connection"

test_postgres_fromAlpha, test_postgres_fromAlpha3 :: Ref -> Spec
test_postgres_fromAlpha ref@Ref {..} =
  it (BC.unpack $ refAlpha ref) $
    runConversion (PostgreSQL.fromAlpha' refRevision dudField . Just $ refAlpha ref) dudConn
      `shouldReturn` (Ok refLanguage)

test_postgres_fromAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    runConversion (PostgreSQL.fromAlpha3' refRevision dudField $ Just refAlpha3) dudConn
      `shouldReturn` (Ok refLanguage)



spec :: Spec
spec = do
  describe "Alpha" $ do
    describe "encodeAlpha" $ for_ refs test_encodeAlpha
    describe "decodeAlpha" $ for_ refs test_decodeAlpha

    describe "aeson" $ do
      describe "toAlpha" $ for_ refs test_aeson_toAlpha
      describe "parseAlpha" $ for_ refs test_aeson_parseAlpha

    describe "postgresql-simple" $ do
      describe "toAlpha" $ for_ refs test_postgres_toAlpha
      describe "fromAlpha" $ for_ refs test_postgres_fromAlpha

  describe "Alpha2" $ do
    describe "mkAlpha2" $ do
      it "aa"  $ mkAlpha2 "aa"  `shouldBe` Just (Alpha2 0x61 0x61)
      it "@a"  $ mkAlpha2 "@a"  `shouldBe` Nothing
      it "a@"  $ mkAlpha2 "a@"  `shouldBe` Nothing

      it "zz"  $ mkAlpha2 "zz"  `shouldBe` Just (Alpha2 0x7A 0x7A)
      it "[z"  $ mkAlpha2 "[z"  `shouldBe` Nothing
      it "z["  $ mkAlpha2 "z["  `shouldBe` Nothing

      it "au"  $ mkAlpha2 "au"  `shouldBe` Just (Alpha2 0x61 0x75)
      it "kp"  $ mkAlpha2 "kp"  `shouldBe` Just (Alpha2 0x6B 0x70)
      it "us"  $ mkAlpha2 "us"  `shouldBe` Just (Alpha2 0x75 0x73)

      it "a"   $ mkAlpha2 "a"   `shouldBe` Nothing
      it "aaa" $ mkAlpha2 "aaa" `shouldBe` Nothing

    describe "getAlpha2" $ for_ refs test_getAlpha2
    describe "showsAlpha2" $ for_ refs test_showsAlpha2
    describe "alpha2ToByteString" $ for_ refs test_alpha2ToByteString
    describe "alpha2ToText" $ for_ refs test_alpha2ToText

    describe "encodeAlpha2" $ for_ refs test_encodeAlpha2
    describe "decodeAlpha2" $ for_ refs test_decodeAlpha2

  describe "Alpha3" $ do
    describe "mkAlpha3" $ do
      it "aaa"  $ mkAlpha3 "aaa"  `shouldBe` Just (Alpha3 0x61 0x61 0x61)
      it "@aa"  $ mkAlpha3 "@aa"  `shouldBe` Nothing
      it "a@a"  $ mkAlpha3 "a@a"  `shouldBe` Nothing
      it "aa@"  $ mkAlpha3 "aa@"  `shouldBe` Nothing

      it "zzz"  $ mkAlpha3 "zzz"  `shouldBe` Just (Alpha3 0x7A 0x7A 0x7A)
      it "[zz"  $ mkAlpha3 "[zz"  `shouldBe` Nothing
      it "z[z"  $ mkAlpha3 "z[z"  `shouldBe` Nothing
      it "zz["  $ mkAlpha3 "zz["  `shouldBe` Nothing

      it "aus"  $ mkAlpha3 "aus"  `shouldBe` Just (Alpha3 0x61 0x75 0x73)
      it "pkr"  $ mkAlpha3 "pkr"  `shouldBe` Just (Alpha3 0x70 0x6B 0x72)
      it "usa"  $ mkAlpha3 "usa"  `shouldBe` Just (Alpha3 0x75 0x73 0x61)

      it "aa"   $ mkAlpha3 "aa"   `shouldBe` Nothing
      it "aaaa" $ mkAlpha3 "aaaa" `shouldBe` Nothing

    describe "getAlpha3" $ for_ refs test_getAlpha3
    describe "showsAlpha3" $ for_ refs test_showsAlpha3
    describe "alpha3ToByteString" $ for_ refs test_alpha3ToByteString
    describe "alpha3ToText" $ for_ refs test_alpha3ToText

    describe "encodeAlpha3" $ for_ refs test_encodeAlpha3
    describe "decodeAlpha3" $ for_ refs test_decodeAlpha3

    describe "aeson" $ do
      describe "toAlpha3" $ for_ refs test_aeson_toAlpha3
      describe "parseAlpha3" $ for_ refs test_aeson_parseAlpha3

    describe "postgresql-simple" $ do
      describe "toAlpha3" $ for_ refs test_postgres_toAlpha3
      describe "fromAlpha3" $ for_ refs test_postgres_fromAlpha3
