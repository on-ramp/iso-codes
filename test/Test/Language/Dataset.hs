{-# LANGUAGE OverloadedStrings
           , RecordWildCards #-}

module Test.Language.Dataset
  ( Entry (..)

  , getDataset
  ) where

import           Paths_iso_codes

import           Data.ByteString (ByteString)
import qualified Data.ByteString.Lazy as LB
import           Data.Csv as CSV
import           Data.Foldable
import           Data.Text (Text)
import           System.FilePath



csvPath :: FilePath
csvPath = "datasets" </> "iso-639-3" <.> "tab"

csvOptions :: CSV.DecodeOptions
csvOptions =
  defaultDecodeOptions
    { decDelimiter = 0x09
    }



data Entry =
       Entry
         { entryName    :: Text
         , entryAlpha2  :: Maybe ByteString
         , entryAlpha3  :: ByteString
         }
       deriving Show

csvParser :: NamedRecord -> CSV.Parser Entry
csvParser dict = do
  entryName    <- CSV.lookup dict "Ref_Name"
  entryAlpha2  <- CSV.lookup dict "Part1"
  entryAlpha3  <- CSV.lookup dict "Id"

  pure Entry {..}



removeSh :: [Entry] -> [Entry]
removeSh =
  fmap $ \entry@Entry {..} ->
    if entryAlpha2 == Just "sh" && entryAlpha3 == "hbs"
      then Entry { entryAlpha2 = Nothing, .. }
      else entry



getDataset :: IO [Entry]
getDataset = do
  dataDir <- Paths_iso_codes.getDataDir
  let path = dataDir </> csvPath

  file <- LB.readFile path
  case CSV.decodeByNameWithP csvParser csvOptions file of
    Left err       -> fail $ "Could not decode country dataset: " <> err
    Right (_, vec) -> pure . removeSh $ toList vec
