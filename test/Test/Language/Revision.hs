{-# LANGUAGE RecordWildCards #-}

module Test.Language.Revision
  ( spec
  ) where

import           Data.Language
import           Data.Language.Revision as Revision
import qualified ISO.Language.Revisions as Revision (latest)
import           Test.Language.Dataset

import qualified Data.ByteString.Char8 as BC
import           Data.Foldable
import           Test.Hspec



languageFromEntry :: Entry -> Language
languageFromEntry Entry {..} =
  case mkLanguage entryAlpha2 entryAlpha3 of
    Just val -> val
    Nothing  ->
      error $ "Cannot make language from dataset entry for "
                <> BC.unpack (maybe entryAlpha3 id entryAlpha2)



mkRevision :: [Entry] -> Revision
mkRevision = foldl' f Revision.empty
  where
    f acc entry =
      let ref = languageFromEntry entry
      in case Revision.insert (languageFromEntry entry) acc of
           Nothing   -> error $ "Cannot insert " <> show ref <> " into revision"
           Just acc' -> acc'

reduceRevision :: [Entry] -> Revision -> Revision
reduceRevision = flip $ foldl' f
  where
    f acc entry = Revision.delete (languageFromEntry entry) acc



test_member :: [Entry] -> IO ()
test_member entries =
  for_ entries $ \entry -> do
    let ref = languageFromEntry entry
    if Revision.member ref Revision.latest
      then pure ()
      else error $ show ref <> " not found"

test_overlaps :: [Entry] -> IO ()
test_overlaps entries =
  for_ entries $ \entry -> do
    let ref = languageFromEntry entry
    if Revision.overlaps ref Revision.latest
      then pure ()
      else error $ show ref <> " not found"



test_lookupAlpha2 :: [Entry] -> IO ()
test_lookupAlpha2 entries =
  for_ entries $ \entry@Entry {..} -> do
    let ref = languageFromEntry entry
    case entryAlpha2 of
      Nothing -> pure ()
      Just a2 ->
        case lookupAlpha2 a2 Revision.latest of
          Just val
            | val == ref -> pure ()
            | otherwise  ->
                error $ "Expected " <> show ref <> ", got " <> show val
    
          Nothing -> error $ show ref <> " not found"

test_lookupAlpha3 :: [Entry] -> IO ()
test_lookupAlpha3 entries =
  for_ entries $ \entry@Entry {..} -> do
    let ref = languageFromEntry entry
    case lookupAlpha3 entryAlpha3 Revision.latest of
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

    it "reduce" $ \entries ->
      reduceRevision entries Revision.latest `shouldBe` Revision.empty
