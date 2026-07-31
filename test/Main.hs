module Main
  ( main
  ) where

import           Test.Country
import           Test.Country.Revision
import           Test.Currency
import           Test.Currency.Revision
import           Test.Language
import           Test.Language.Revision

import           Test.Hspec



main :: IO ()
main =
  hspec $ do
    describe "Country" $ Test.Country.spec
    describe "Country.Revision" $ Test.Country.Revision.spec

    describe "Currency" $ Test.Currency.spec
    describe "Currency.Revision" $ Test.Currency.Revision.spec

    describe "Language" $ Test.Language.spec
    describe "Language.Revision" $ Test.Language.Revision.spec
