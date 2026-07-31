{-# LANGUAGE RecordWildCards #-}

module Test.Currency.Revision
  ( spec
  ) where

import           Data.Currency
import           Data.Currency.Revision as Revision
import qualified ISO.Currency.Revisions as Revision (latest)
import           Test.Currency.Dataset

import           Data.Foldable
import qualified Data.Text as Text
import           Data.Text.Encoding
import           Test.Hspec



currencyFromEntry :: Entry -> Currency
currencyFromEntry Entry {..} =
  case mkCurrency (encodeUtf8 entryAlpha) (encodeUtf8 entryNumeric) entryDigits of
    Just val -> val
    Nothing  ->
      error $ "Cannot make currency from dataset entry for " <> Text.unpack entryAlpha



mkRevision :: [Entry] -> Revision
mkRevision = foldl' f Revision.empty
  where
    f acc entry =
      let ref = currencyFromEntry entry
      in case Revision.insert (currencyFromEntry entry) acc of
           Nothing   -> error $ "Cannot insert " <> show ref <> " into revision"
           Just acc' -> acc'

reduceRevision :: [Entry] -> Revision -> Revision
reduceRevision = flip $ foldl' f
  where
    f acc entry = Revision.delete (currencyFromEntry entry) acc



test_member :: [Entry] -> IO ()
test_member entries =
  for_ entries $ \entry -> do
    let ref = currencyFromEntry entry
    if Revision.member ref Revision.latest
      then pure ()
      else error $ show ref <> " not found"

test_overlaps :: [Entry] -> IO ()
test_overlaps entries =
  for_ entries $ \entry -> do
    let ref = currencyFromEntry entry
    if Revision.overlaps ref Revision.latest
      then pure ()
      else error $ show ref <> " not found"



test_lookupAlpha :: [Entry] -> IO ()
test_lookupAlpha entries =
  for_ entries $ \entry@Entry {..} -> do
    let ref = currencyFromEntry entry
    case lookupAlpha (encodeUtf8 entryAlpha) Revision.latest of
      Just val
        | val == ref -> pure ()
        | otherwise  ->
            error $ "Expected " <> show ref <> ", got " <> show val

      Nothing -> error $ show ref <> " not found"

test_lookupNumeric :: [Entry] -> IO ()
test_lookupNumeric entries =
  for_ entries $ \entry@Entry {..} -> do
    let ref = currencyFromEntry entry
    case lookupNumeric (encodeUtf8 entryNumeric) Revision.latest of
      Just val
        | val == ref -> pure ()
        | otherwise  ->
            error $ "Expected " <> show ref <> ", got " <> show val

      Nothing -> error $ show ref <> " not found"



spec :: Spec
spec =
  beforeAll getDataset $ do
    it "latest" $ \entries ->
      mkRevision entries `shouldBe` Revision.latest

    it "member" test_member
    it "overlaps" test_overlaps

    it "lookupAlpha" test_lookupAlpha
    it "lookupNumeric" test_lookupNumeric

    it "reduce" $ \entries ->
      reduceRevision entries Revision.latest `shouldBe` Revision.empty
