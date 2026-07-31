{-# LANGUAGE OverloadedStrings
           , RecordWildCards #-}

module Test.Country.Dataset
  ( Entry (..)

  , getDataset
  ) where

import           Paths_iso_codes

import           Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as LB
import           Data.Csv as CSV
import           Data.Foldable
import           Data.Text (Text)
import           System.FilePath



csvPath :: FilePath
csvPath = "datasets" </> "countries" <.> "csv"

csvOptions :: CSV.DecodeOptions
csvOptions =
  defaultDecodeOptions
    { decDelimiter = 0x2C
    }



data Entry =
       Entry
         { entryName    :: Text
         , entryAlpha2  :: ByteString
         , entryAlpha3  :: ByteString
         , entryNumeric :: ByteString
         }
       deriving Show

csvParser :: NamedRecord -> CSV.Parser Entry
csvParser dict = do
  entryName    <- CSV.lookup dict "name_short"
  entryAlpha2  <- CSV.lookup dict "#country_code_alpha2"
  entryAlpha3  <- CSV.lookup dict "country_code_alpha3"
  entryNumeric <- do raw <- CSV.lookup dict "numeric_code"
                     pure $ B.replicate (3 - B.length raw) 0x30 <> raw

  pure Entry {..}



getDataset :: IO [Entry]
getDataset = do
  dataDir <- Paths_iso_codes.getDataDir
  let path = dataDir </> csvPath

  file <- LB.readFile path
  case CSV.decodeByNameWithP csvParser csvOptions file of
    Left err       -> fail $ "Could not decode country dataset: " <> err
    Right (_, vec) -> pure $ toList vec
