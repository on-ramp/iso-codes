{-# OPTIONS_GHC -Wno-orphans #-}

{-# LANGUAGE DataKinds
           , OverloadedStrings
           , RecordWildCards
           , TypeApplications #-}

module Test.Country
  ( spec
  ) where

import           Data.Country
import           Data.Country.Aeson as Aeson
import           Data.Country.PostgreSQL as PostgreSQL
import           Data.Country.Revision as Revision
import           Data.Country.Revision.Unsafe as Revision
import           Data.Country.Unsafe

import           Data.Aeson as Aeson
import           Data.Aeson.Types as Aeson (parseEither)
import           Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as BC
import           Data.Foldable
import           Data.Text.Encoding (decodeUtf8)
import           Database.PostgreSQL.Simple as PostgreSQL
import           Database.PostgreSQL.Simple.FromField as PostgreSQL
import           Database.PostgreSQL.Simple.Ok as PostgreSQL
import           Database.PostgreSQL.Simple.ToField as PostgreSQL
import           Test.Hspec



instance Show Alpha2  where showsPrec _ = showsAlpha2
instance Show Alpha3  where showsPrec _ = showsAlpha3
instance Show Numeric where showsPrec _ = showsNumeric



data Ref =
       Ref
         { refAlpha2   :: ByteString
         , refAlpha3   :: ByteString
         , refNumeric  :: ByteString
         , refInt      :: Int
         , refCountry  :: Country
         , refRevision :: Revision
         }

mkRef :: ByteString -> ByteString -> ByteString -> Int -> Ref
mkRef a b c d =
  case mkCountry a b c of
    Nothing  -> error $ "Cannot construct a reference country: " <> show (a, b, c)
    Just val ->
      let rev = Revision.unsafeInsert val Revision.empty
      in Ref a b c d val rev

refs :: [Ref]
refs =
  [ mkRef "AA" "AAA" "000"   0
  , mkRef "AU" "AUS" "036"  36
  , mkRef "KP" "PKR" "408" 408
  , mkRef "US" "USA" "840" 840
  , mkRef "ZZ" "ZZZ" "999" 999
  ]



test_getAlpha2, test_getAlpha3, test_getNumeric :: Ref -> Spec
test_getAlpha2 Ref {..} =
  it (BC.unpack refAlpha2) $
    Just (getAlpha2 refCountry) `shouldBe` mkAlpha2 refAlpha2

test_getAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    Just (getAlpha3 refCountry) `shouldBe` mkAlpha3 refAlpha3

test_getNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    Just (getNumeric refCountry) `shouldBe` mkNumeric refNumeric



test_showsAlpha2, test_showsAlpha3, test_showsNumeric :: Ref -> Spec
test_showsAlpha2 Ref {..} =
  it (BC.unpack refAlpha2) $
    showsAlpha2 (getAlpha2 refCountry) [] `shouldBe` BC.unpack refAlpha2

test_showsAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    showsAlpha3 (getAlpha3 refCountry) [] `shouldBe` BC.unpack refAlpha3

test_showsNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    showsNumeric (getNumeric refCountry) [] `shouldBe` BC.unpack refNumeric



test_alpha2ToByteString, test_alpha3ToByteString, test_numericToByteString :: Ref -> Spec
test_alpha2ToByteString Ref {..} =
  it (BC.unpack refAlpha2) $
    alpha2ToByteString (getAlpha2 refCountry) `shouldBe` refAlpha2

test_alpha3ToByteString Ref {..} =
  it (BC.unpack refAlpha3) $
    alpha3ToByteString (getAlpha3 refCountry) `shouldBe` refAlpha3

test_numericToByteString Ref {..} =
  it (BC.unpack refNumeric) $
    numericToByteString (getNumeric refCountry) `shouldBe` refNumeric



test_alpha2ToText, test_alpha3ToText, test_numericToText :: Ref -> Spec
test_alpha2ToText Ref {..} =
  it (BC.unpack refAlpha2) $
    alpha2ToText (getAlpha2 refCountry) `shouldBe` decodeUtf8 refAlpha2

test_alpha3ToText Ref {..} =
  it (BC.unpack refAlpha3) $
    alpha3ToText (getAlpha3 refCountry) `shouldBe` decodeUtf8 refAlpha3

test_numericToText Ref {..} =
  it (BC.unpack refNumeric) $
    numericToText (getNumeric refCountry) `shouldBe` decodeUtf8 refNumeric



test_encodeAlpha2, test_encodeAlpha3, test_encodeNumeric :: Ref -> Spec
test_encodeAlpha2 Ref {..} =
  it (BC.unpack refAlpha2) $
    encodeAlpha2 refCountry `shouldBe` decodeUtf8 refAlpha2

test_encodeAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    encodeAlpha3 refCountry `shouldBe` decodeUtf8 refAlpha3

test_encodeNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    encodeNumeric refCountry `shouldBe` decodeUtf8 refNumeric


test_encodeNumericAsInt :: Ref -> Spec
test_encodeNumericAsInt Ref {..} =
  it (BC.unpack refNumeric) $
    encodeNumericAsInt refCountry `shouldBe` refInt



test_decodeAlpha2, test_decodeAlpha3, test_decodeNumeric :: Ref -> Spec
test_decodeAlpha2 Ref {..} =
  it (BC.unpack refAlpha2) $
    decodeAlpha2' refRevision refAlpha2 `shouldBe` Right refCountry

test_decodeAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    decodeAlpha3' refRevision refAlpha3 `shouldBe` Right refCountry

test_decodeNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    decodeNumeric' refRevision refNumeric `shouldBe` Right refCountry


test_decodeNumericFromInt :: Ref -> Spec
test_decodeNumericFromInt Ref {..} =
  it (BC.unpack refNumeric) $
    decodeNumericFromInt' refRevision refInt `shouldBe` Right refCountry



test_aeson_toAlpha2, test_aeson_toAlpha3, test_aeson_toNumeric :: Ref -> Spec
test_aeson_toAlpha2 Ref {..} =
  it (BC.unpack refAlpha2) $
    Aeson.toAlpha2 refCountry `shouldBe` Aeson.String (decodeUtf8 refAlpha2)

test_aeson_toAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    Aeson.toAlpha3 refCountry `shouldBe` Aeson.String (decodeUtf8 refAlpha3)

test_aeson_toNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    Aeson.toNumeric refCountry `shouldBe` Aeson.String (decodeUtf8 refNumeric)



test_aeson_parseAlpha2, test_aeson_parseAlpha3, test_aeson_parseNumeric :: Ref -> Spec
test_aeson_parseAlpha2 Ref {..} =
  it (BC.unpack refAlpha2) $
    Aeson.parseEither (Aeson.parseAlpha2' refRevision) (Aeson.String $ decodeUtf8 refAlpha2)
      `shouldBe` Right refCountry

test_aeson_parseAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    Aeson.parseEither (Aeson.parseAlpha3' refRevision) (Aeson.String $ decodeUtf8 refAlpha3)
      `shouldBe` Right refCountry

test_aeson_parseNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    Aeson.parseEither (Aeson.parseNumeric' refRevision) (Aeson.String $ decodeUtf8 refNumeric)
      `shouldBe` Right refCountry


test_aeson_parseNumericFromNumber :: Ref -> Spec
test_aeson_parseNumericFromNumber Ref {..} =
  it (BC.unpack refNumeric) $
    Aeson.parseEither (Aeson.parseNumericFromNumber' refRevision) (Number $ fromIntegral refInt)
      `shouldBe` Right refCountry



eqPostgreSQLEscape :: ByteString -> Action -> Bool
eqPostgreSQLEscape a (Escape b) = a == b
eqPostgreSQLEscape _ _          = False

test_postgres_toAlpha2, test_postgres_toAlpha3, test_postgres_toNumeric :: Ref -> Spec
test_postgres_toAlpha2 Ref {..} =
  it (BC.unpack refAlpha2) $
    PostgreSQL.toAlpha2 refCountry `shouldSatisfy` eqPostgreSQLEscape refAlpha2

test_postgres_toAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    PostgreSQL.toAlpha3 refCountry `shouldSatisfy` eqPostgreSQLEscape refAlpha3

test_postgres_toNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    PostgreSQL.toNumeric refCountry `shouldSatisfy` eqPostgreSQLEscape refNumeric



dudField :: PostgreSQL.Field
dudField = error "Tried to evaluated a PostgreSQL Field"

dudConn :: PostgreSQL.Connection
dudConn = error "Tried to evaluated a PostgreSQL Connection"

test_postgres_fromAlpha2, test_postgres_fromAlpha3, test_postgres_fromNumeric :: Ref -> Spec
test_postgres_fromAlpha2 Ref {..} =
  it (BC.unpack refAlpha2) $
    runConversion (PostgreSQL.fromAlpha2' refRevision dudField $ Just refAlpha2) dudConn
      `shouldReturn` (Ok refCountry)

test_postgres_fromAlpha3 Ref {..} =
  it (BC.unpack refAlpha3) $
    runConversion (PostgreSQL.fromAlpha3' refRevision dudField $ Just refAlpha3) dudConn
      `shouldReturn` (Ok refCountry)

test_postgres_fromNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    runConversion (PostgreSQL.fromNumeric' refRevision dudField $ Just refNumeric) dudConn
      `shouldReturn` (Ok refCountry)



spec :: Spec
spec = do
  describe "Alpha2" $ do
    describe "mkAlpha2" $ do
      it "AA"  $ mkAlpha2 "AA"  `shouldBe` Just (Alpha2 0x41 0x41)
      it "@A"  $ mkAlpha2 "@A"  `shouldBe` Nothing
      it "A@"  $ mkAlpha2 "A@"  `shouldBe` Nothing

      it "ZZ"  $ mkAlpha2 "ZZ"  `shouldBe` Just (Alpha2 0x5A 0x5A)
      it "[Z"  $ mkAlpha2 "[Z"  `shouldBe` Nothing
      it "Z["  $ mkAlpha2 "Z["  `shouldBe` Nothing

      it "AU"  $ mkAlpha2 "AU"  `shouldBe` Just (Alpha2 0x41 0x55)
      it "KP"  $ mkAlpha2 "KP"  `shouldBe` Just (Alpha2 0x4B 0x50)
      it "US"  $ mkAlpha2 "US"  `shouldBe` Just (Alpha2 0x55 0x53)

      it "A"   $ mkAlpha2 "A"   `shouldBe` Nothing
      it "AAA" $ mkAlpha2 "AAA" `shouldBe` Nothing

    describe "getAlpha2" $ for_ refs test_getAlpha2
    describe "showsAlpha2" $ for_ refs test_showsAlpha2
    describe "alpha2ToByteString" $ for_ refs test_alpha2ToByteString
    describe "alpha2ToText" $ for_ refs test_alpha2ToText

    describe "encodeAlpha2" $ for_ refs test_encodeAlpha2
    describe "decodeAlpha2" $ for_ refs test_decodeAlpha2

    describe "aeson" $ do
      describe "toAlpha2" $ for_ refs test_aeson_toAlpha2
      describe "parseAlpha2" $ for_ refs test_aeson_parseAlpha2

    describe "postgresql-simple" $ do
      describe "toAlpha2" $ for_ refs test_postgres_toAlpha2
      describe "fromAlpha2" $ for_ refs test_postgres_fromAlpha2

  describe "Alpha3" $ do
    describe "mkAlpha3" $ do
      it "AAA"  $ mkAlpha3 "AAA"  `shouldBe` Just (Alpha3 0x41 0x41 0x41)
      it "@AA"  $ mkAlpha3 "@AA"  `shouldBe` Nothing
      it "A@A"  $ mkAlpha3 "A@A"  `shouldBe` Nothing
      it "AA@"  $ mkAlpha3 "AA@"  `shouldBe` Nothing

      it "ZZZ"  $ mkAlpha3 "ZZZ"  `shouldBe` Just (Alpha3 0x5A 0x5A 0x5A)
      it "[ZZ"  $ mkAlpha3 "[ZZ"  `shouldBe` Nothing
      it "Z[Z"  $ mkAlpha3 "Z[Z"  `shouldBe` Nothing
      it "ZZ["  $ mkAlpha3 "ZZ["  `shouldBe` Nothing

      it "AUS"  $ mkAlpha3 "AUS"  `shouldBe` Just (Alpha3 0x41 0x55 0x53)
      it "PKR"  $ mkAlpha3 "PKR"  `shouldBe` Just (Alpha3 0x50 0x4B 0x52)
      it "USA"  $ mkAlpha3 "USA"  `shouldBe` Just (Alpha3 0x55 0x53 0x41)

      it "AA"   $ mkAlpha3 "AA"   `shouldBe` Nothing
      it "AAAA" $ mkAlpha3 "AAAA" `shouldBe` Nothing

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

  describe "Numeric" $ do
    describe "mkNumeric" $ do
      it "000"  $ mkNumeric "000"  `shouldBe` Just (Numeric 0x30 0x30 0x30)
      it "/00"  $ mkNumeric "/00"  `shouldBe` Nothing
      it "0/0"  $ mkNumeric "0/0"  `shouldBe` Nothing
      it "00/"  $ mkNumeric "00/"  `shouldBe` Nothing

      it "999"  $ mkNumeric "999"  `shouldBe` Just (Numeric 0x39 0x39 0x39)
      it ":99"  $ mkNumeric ":99"  `shouldBe` Nothing
      it "9:9"  $ mkNumeric "9:9"  `shouldBe` Nothing
      it "99:"  $ mkNumeric "99:"  `shouldBe` Nothing

      it "036"  $ mkNumeric "036"  `shouldBe` Just (Numeric 0x30 0x33 0x36)
      it "408"  $ mkNumeric "408"  `shouldBe` Just (Numeric 0x34 0x30 0x38)
      it "840"  $ mkNumeric "840"  `shouldBe` Just (Numeric 0x38 0x34 0x30)

      it "00"   $ mkNumeric "00"   `shouldBe` Nothing
      it "0000" $ mkNumeric "0000" `shouldBe` Nothing

    describe "mkNumericFromInt" $ do
      it "0"    $ mkNumericFromInt    0 `shouldBe` Just (Numeric 0x30 0x30 0x30)
      it "-1"   $ mkNumericFromInt (-1) `shouldBe` Nothing

      it "999"  $ mkNumericFromInt  999 `shouldBe` Just (Numeric 0x39 0x39 0x39)
      it "1000" $ mkNumericFromInt 1000 `shouldBe` Nothing

      it "36"   $ mkNumericFromInt   36 `shouldBe` Just (Numeric 0x30 0x33 0x36)
      it "408"  $ mkNumericFromInt  408 `shouldBe` Just (Numeric 0x34 0x30 0x38)
      it "840"  $ mkNumericFromInt  840 `shouldBe` Just (Numeric 0x38 0x34 0x30)

    describe "getNumeric" $ for_ refs test_getNumeric
    describe "showsNumeric" $ for_ refs test_showsNumeric
    describe "numericToByteString" $ for_ refs test_numericToByteString
    describe "numericToText" $ for_ refs test_numericToText

    describe "encodeNumeric" $ for_ refs test_encodeNumeric
    describe "decodeNumeric" $ for_ refs test_decodeNumeric

    describe "encodeNumericAsInt" $ for_ refs test_encodeNumericAsInt
    describe "decodeNumericFromInt" $ for_ refs test_decodeNumericFromInt

    describe "aeson" $ do
      describe "toNumeric" $ for_ refs test_aeson_toNumeric
      describe "parseNumeric" $ for_ refs test_aeson_parseNumeric
      describe "parseNumericFromNumber" $ for_ refs test_aeson_parseNumericFromNumber

    describe "postgresql-simple" $ do
      describe "toNumeric" $ for_ refs test_postgres_toNumeric
      describe "fromNumeric" $ for_ refs test_postgres_fromNumeric
      it "fromNumericAsInt" $ pendingWith "Not tested; requires a database connection"
