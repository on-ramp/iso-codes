{-# LANGUAGE OverloadedStrings
           , RecordWildCards #-}

module Test.Currency.Dataset
  ( Entry (..)

  , getDataset
  ) where

import           Paths_iso_codes

import           Control.Monad
import qualified Data.ByteString.Lazy as LB
import           Data.Function
import qualified Data.List as List
import           Data.Maybe
import           Data.Text (Text)
import qualified Data.Text as Text
import           System.FilePath
import           Text.Read
import           Text.XML as XML
import           Text.XML.Cursor



csvPath :: FilePath
csvPath = "datasets" </> "list-one" <.> "xml"



data SomeEntry =
       SomeEntry
         { someCountry :: Text
         , someKind    :: SomeEntryKind
         }
       deriving Show

data SomeEntryKind = UnassignedEntry
                   | AssignedEntry ProperEntry
                     deriving Show

data ProperEntry =
       ProperEntry
         { properName    :: Text
         , properAlpha   :: Text
         , properNumeric :: Text
         , properDigits  :: Maybe Int
         , properIsFund  :: Bool
         }
       deriving Show


xmlParser :: Cursor -> Either String [SomeEntry]
xmlParser = traverse (uncurry elementParser) . zip [1..] . topLevelParser


topLevelParser :: Axis
topLevelParser =
      element "ISO_4217" >=> child
  >=> element "CcyTbl" >=> child
  >=> checkElement ((== "CcyNtry") . elementName)


elementParser :: Int -> Cursor -> Either String SomeEntry
elementParser n cursor = do
  let ref = "Entry #" <> show n <> ": "

  someCountry <- case (child >=> element "CtryNm" >=> child >=> content) cursor of
                   [field] -> Right field
                   _       -> Left $ ref <> "missing CtryNm"

  mayName     <- case (child >=> element "CcyNm" >=> child >=> content) cursor of
                   [field]
                     | field == "No universal currency" -> Right Nothing
                     | otherwise                        -> Right $ Just field

                   _       -> Left $ ref <> "missing CcyNm"

  case mayName of
    Nothing         -> Right $ SomeEntry { someKind = UnassignedEntry, ..}
    Just properName -> do
      properAlpha   <- case (child >=> element "Ccy" >=> child >=> content) cursor of
                        [field] -> Right field
                        _       -> Left $ ref <> "missing Ccy"

      let exref = "Entry #" <> show n <> "/" <> Text.unpack properAlpha <> ": "

      properNumeric <- case (child >=> element "CcyNbr" >=> child >=> content) cursor of
                        [field] -> Right field
                        _       -> Left $ exref <> "missing CcyNbr"

      properDigits  <- case (child >=> element "CcyMnrUnts" >=> child >=> content) cursor of
                         [field]
                           | field == "N.A."                           -> Right Nothing
                           | Right d <- readEither $ Text.unpack field -> Right $ Just d
                           | otherwise ->
                               Left $ exref <> "CcyMnrUnts is not 'N.A.' or an integer"

                         _       -> Left $ exref <> "missing CcyMnrUnts"

      properIsFund  <- case (child >=> element "CcyNm" >=> attribute "IsFund") cursor of
                        []      -> Right False
                        [field]
                          | field == "true" -> Right True
                          | otherwise       ->
                              Left $ exref <> "CcyNm IsFund attribute is not 'true'"

                        _       -> Left $ exref <> "multiple CcyNm IsFund attributes"

      let proper = ProperEntry {..}

      Right $ SomeEntry { someKind = AssignedEntry proper, ..}



data Entry =
       Entry
         { entryName    :: Text
         , entryAlpha   :: Text
         , entryNumeric :: Text
         , entryDigits  :: Int
         }
       deriving Show

filterEntries :: [SomeEntry] -> [Entry]
filterEntries raw =
  flip mapMaybe raw $ \SomeEntry {..} ->
    case someKind of
      UnassignedEntry                -> Nothing
      AssignedEntry ProperEntry {..} -> do
        guard $ not properIsFund
        num <- properDigits
        Just $! Entry
                  { entryName    = properName
                  , entryAlpha   = properAlpha
                  , entryNumeric = properNumeric
                  , entryDigits  = num
                  }

deduplicateEntries :: [Entry] -> [Entry]
deduplicateEntries = List.nubBy ((==) `on` entryAlpha)



getDataset :: IO [Entry]
getDataset = do
  dataDir <- Paths_iso_codes.getDataDir
  let path = dataDir </> csvPath

  file <- LB.readFile path
  case XML.parseLBS XML.def file of
    Left ex   -> fail $ "Could not parse currency dataset XML: " <> show ex
    Right doc ->
      case xmlParser $ fromDocument doc of
        Left err      -> fail $ "Could not decode currency dataset: " <> show err
        Right entries -> pure . deduplicateEntries $ filterEntries entries
