{-# OPTIONS_GHC -Wno-orphans #-}

{-# LANGUAGE DataKinds
           , OverloadedStrings
           , RecordWildCards
           , StandaloneDeriving #-}

module Test.Currency
  ( spec
  ) where

import           Data.Currency
import           Data.Currency.Aeson as Aeson
import           Data.Currency.PostgreSQL as PostgreSQL
import           Data.Currency.Revision as Revision
import           Data.Currency.Revision.Unsafe as Revision
import           Data.Currency.Unsafe

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



instance Show Alpha   where showsPrec _ = showsAlpha
instance Show Numeric where showsPrec _ = showsNumeric
deriving instance Show Digits



data Ref =
       Ref
         { refAlpha    :: ByteString
         , refNumeric  :: ByteString
         , refInt      :: Int
         , refDigits   :: Int
         , refCurrency :: Currency
         , refRevision :: Revision
         }

mkRef :: ByteString -> ByteString -> Int -> Int -> Ref
mkRef a b c d =
  case mkCurrency a b d of
    Nothing  -> error $ "Cannot construct a reference currency: " <> show (a, b, c)
    Just val ->
      let rev = Revision.unsafeInsert val Revision.empty
      in Ref a b c d val rev

refs :: [Ref]
refs =
  [ mkRef "AAA" "000"   0 0
  , mkRef "AUS" "036"  36 2
  , mkRef "PKR" "408" 408 4
  , mkRef "USA" "840" 840 5
  , mkRef "ZZZ" "999" 999 7
  ]



test_getAlpha, test_getNumeric, test_getDigits :: Ref -> SpecWith ()
test_getAlpha Ref {..} =
  it (BC.unpack refAlpha) $
    Just (getAlpha refCurrency) `shouldBe` mkAlpha refAlpha

test_getNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    Just (getNumeric refCurrency) `shouldBe` mkNumeric refNumeric

test_getDigits Ref {..} =
  it (BC.unpack refAlpha) $
    Just (getDigits refCurrency) `shouldBe` mkDigits refDigits



test_showsAlpha, test_showsNumeric :: Ref -> SpecWith ()
test_showsAlpha Ref {..} =
  it (BC.unpack refAlpha) $
    showsAlpha (getAlpha refCurrency) [] `shouldBe` BC.unpack refAlpha

test_showsNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    showsNumeric (getNumeric refCurrency) [] `shouldBe` BC.unpack refNumeric



test_alphaToByteString, test_numericToByteString :: Ref -> Spec
test_alphaToByteString Ref {..} =
  it (BC.unpack refAlpha) $
    alphaToByteString (getAlpha refCurrency) `shouldBe` refAlpha

test_numericToByteString Ref {..} =
  it (BC.unpack refNumeric) $
    numericToByteString (getNumeric refCurrency) `shouldBe` refNumeric



test_alphaToText, test_numericToText :: Ref -> Spec
test_alphaToText Ref {..} =
  it (BC.unpack refAlpha) $
    alphaToText (getAlpha refCurrency) `shouldBe` decodeUtf8 refAlpha

test_numericToText Ref {..} =
  it (BC.unpack refNumeric) $
    numericToText (getNumeric refCurrency) `shouldBe` decodeUtf8 refNumeric



test_encodeAlpha, test_encodeNumeric, test_encodeNumericAsInt :: Ref -> SpecWith ()
test_encodeAlpha Ref {..} =
  it (BC.unpack refAlpha) $
    encodeAlpha refCurrency `shouldBe` decodeUtf8 refAlpha

test_encodeNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    encodeNumeric refCurrency `shouldBe` decodeUtf8 refNumeric


test_encodeNumericAsInt Ref {..} =
  it (BC.unpack refNumeric) $
    encodeNumericAsInt refCurrency `shouldBe` refInt



test_decodeAlpha, test_decodeNumeric, test_decodeNumericFromInt :: Ref -> Spec
test_decodeAlpha Ref {..} =
  it (BC.unpack refAlpha) $
    decodeAlpha' refRevision refAlpha `shouldBe` Right refCurrency

test_decodeNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    decodeNumeric' refRevision refNumeric `shouldBe` Right refCurrency


test_decodeNumericFromInt Ref {..} =
  it (BC.unpack refNumeric) $
    decodeNumericFromInt' refRevision refInt `shouldBe` Right refCurrency



test_aeson_toAlpha, test_aeson_toNumeric :: Ref -> SpecWith ()
test_aeson_toAlpha Ref {..} =
  it (BC.unpack refAlpha) $
    Aeson.toAlpha refCurrency `shouldBe` Aeson.String (decodeUtf8 refAlpha)

test_aeson_toNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    Aeson.toNumeric refCurrency `shouldBe` Aeson.String (decodeUtf8 refNumeric)



test_aeson_parseAlpha, test_aeson_parseNumeric :: Ref -> SpecWith ()
test_aeson_parseAlpha Ref {..} =
  it (BC.unpack refAlpha) $
    Aeson.parseEither (Aeson.parseAlpha' refRevision) (Aeson.String $ decodeUtf8 refAlpha)
      `shouldBe` Right refCurrency

test_aeson_parseNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    Aeson.parseEither (Aeson.parseNumeric' refRevision) (Aeson.String $ decodeUtf8 refNumeric)
      `shouldBe` Right refCurrency


test_aeson_parseNumericFromNumber :: Ref -> SpecWith ()
test_aeson_parseNumericFromNumber Ref {..} =
  it (BC.unpack refNumeric) $
    Aeson.parseEither (Aeson.parseNumericFromNumber' refRevision) (Number $ fromIntegral refInt)
      `shouldBe` Right refCurrency



eqPostgreSQLEscape :: ByteString -> Action -> Bool
eqPostgreSQLEscape a (Escape b) = a == b
eqPostgreSQLEscape _ _          = False

test_postgres_toAlpha, test_postgres_toNumeric :: Ref -> SpecWith ()
test_postgres_toAlpha Ref {..} =
  it (BC.unpack refAlpha) $
    PostgreSQL.toAlpha refCurrency `shouldSatisfy` eqPostgreSQLEscape refAlpha

test_postgres_toNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    PostgreSQL.toNumeric refCurrency `shouldSatisfy` eqPostgreSQLEscape refNumeric



dudField :: PostgreSQL.Field
dudField = error "Tried to evaluated a PostgreSQL Field"

dudConn :: PostgreSQL.Connection
dudConn = error "Tried to evaluated a PostgreSQL Connection"

test_postgres_fromAlpha, test_postgres_fromNumeric :: Ref -> Spec
test_postgres_fromAlpha Ref {..} =
  it (BC.unpack refAlpha) $
    runConversion (PostgreSQL.fromAlpha' refRevision dudField $ Just refAlpha) dudConn
      `shouldReturn` (Ok refCurrency)

test_postgres_fromNumeric Ref {..} =
  it (BC.unpack refNumeric) $
    runConversion (PostgreSQL.fromNumeric' refRevision dudField $ Just refNumeric) dudConn
      `shouldReturn` (Ok refCurrency)



spec :: Spec
spec = do
  describe "Alpha" $ do
    describe "mkAlpha" $ do
      it "AAA"  $ mkAlpha "AAA"  `shouldBe` Just (Alpha 0x41 0x41 0x41)
      it "@AA"  $ mkAlpha "@AA"  `shouldBe` Nothing
      it "A@A"  $ mkAlpha "A@A"  `shouldBe` Nothing
      it "AA@"  $ mkAlpha "AA@"  `shouldBe` Nothing

      it "ZZZ"  $ mkAlpha "ZZZ"  `shouldBe` Just (Alpha 0x5A 0x5A 0x5A)
      it "[ZZ"  $ mkAlpha "[ZZ"  `shouldBe` Nothing
      it "Z[Z"  $ mkAlpha "Z[Z"  `shouldBe` Nothing
      it "ZZ["  $ mkAlpha "ZZ["  `shouldBe` Nothing

      it "AUS"  $ mkAlpha "AUS"  `shouldBe` Just (Alpha 0x41 0x55 0x53)
      it "PKR"  $ mkAlpha "PKR"  `shouldBe` Just (Alpha 0x50 0x4B 0x52)
      it "USA"  $ mkAlpha "USA"  `shouldBe` Just (Alpha 0x55 0x53 0x41)

      it "AA"   $ mkAlpha "AA"   `shouldBe` Nothing
      it "AAAA" $ mkAlpha "AAAA" `shouldBe` Nothing

    describe "getAlpha" $ for_ refs test_getAlpha
    describe "showsAlpha" $ for_ refs test_showsAlpha
    describe "alphaToByteString" $ for_ refs test_alphaToByteString
    describe "alphaToText" $ for_ refs test_alphaToText

    describe "encodeAlpha" $ for_ refs test_encodeAlpha
    describe "decodeAlpha" $ for_ refs test_decodeAlpha

    describe "aeson" $ do
      describe "toAlpha" $ for_ refs test_aeson_toAlpha
      describe "parseAlpha" $ for_ refs test_aeson_parseAlpha

    describe "postgresql-simple" $ do
      describe "toAlpha" $ for_ refs test_postgres_toAlpha
      describe "fromAlpha" $ for_ refs test_postgres_fromAlpha

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

  describe "Digits" $ do
    describe "mkDigits" $ do
      it "0"  $ mkDigits    0 `shouldBe` Just (Digits 0)
      it "-1" $ mkDigits (-1) `shouldBe` Nothing

      it "7"  $ mkDigits    7 `shouldBe` Just (Digits 7)
      it "8"  $ mkDigits    8 `shouldBe` Nothing

      it "2"  $ mkDigits    2 `shouldBe` Just (Digits 2)
      it "4"  $ mkDigits    4 `shouldBe` Just (Digits 4)
      it "5"  $ mkDigits    5 `shouldBe` Just (Digits 5)

    describe "getDigits" $ for_ refs test_getDigits
