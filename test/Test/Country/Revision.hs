{-# LANGUAGE RecordWildCards #-}

module Test.Country.Revision
  ( spec
  ) where

import           Data.Country
import           Data.Country.Revision as Revision
import qualified ISO.Country.Revisions as Revision (latest)
import           Test.Country.Dataset

import qualified Data.ByteString.Char8 as BC
import           Data.Foldable
import           Test.Hspec



countryFromEntry :: Entry -> Country
countryFromEntry Entry {..} =
  case mkCountry entryAlpha2 entryAlpha3 entryNumeric of
    Just val -> val
    Nothing  ->
      error $ "Cannot make country from dataset entry for " <> BC.unpack entryAlpha2



mkRevision :: [Entry] -> Revision
mkRevision = foldl' f Revision.empty
  where
    f acc entry =
      let ref = countryFromEntry entry
      in case Revision.insert (countryFromEntry entry) acc of
           Nothing   -> error $ "Cannot insert " <> show ref <> " into revision"
           Just acc' -> acc'

reduceRevision :: [Entry] -> Revision -> Revision
reduceRevision = flip $ foldl' f
  where
    f acc entry = Revision.delete (countryFromEntry entry) acc



test_member :: [Entry] -> IO ()
test_member entries =
  for_ entries $ \entry -> do
    let ref = countryFromEntry entry
    if Revision.member ref Revision.latest
      then pure ()
      else error $ show ref <> " not found"

test_overlaps :: [Entry] -> IO ()
test_overlaps entries =
  for_ entries $ \entry -> do
    let ref = countryFromEntry entry
    if Revision.overlaps ref Revision.latest
      then pure ()
      else error $ show ref <> " not found"



test_lookupAlpha2 :: [Entry] -> IO ()
test_lookupAlpha2 entries =
  for_ entries $ \entry@Entry {..} -> do
    let ref = countryFromEntry entry
    case lookupAlpha2 entryAlpha2 Revision.latest of
      Just val
        | val == ref -> pure ()
        | otherwise  ->
            error $ "Expected " <> show ref <> ", got " <> show val

      Nothing -> error $ show ref <> " not found"

test_lookupAlpha3 :: [Entry] -> IO ()
test_lookupAlpha3 entries =
  for_ entries $ \entry@Entry {..} -> do
    let ref = countryFromEntry entry
    case lookupAlpha3 entryAlpha3 Revision.latest of
      Just val
        | val == ref -> pure ()
        | otherwise  ->
            error $ "Expected " <> show ref <> ", got " <> show val

      Nothing -> error $ show ref <> " not found"

test_lookupNumeric :: [Entry] -> IO ()
test_lookupNumeric entries =
  for_ entries $ \entry@Entry {..} -> do
    let ref = countryFromEntry entry
    case lookupNumeric entryNumeric Revision.latest of
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

    it "lookupAlpha2" test_lookupAlpha2
    it "lookupAlpha3" test_lookupAlpha3
    it "lookupNumeric" test_lookupNumeric

    it "reduce" $ \entries ->
      reduceRevision entries Revision.latest `shouldBe` Revision.empty
