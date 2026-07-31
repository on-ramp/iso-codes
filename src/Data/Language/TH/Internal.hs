{-# LANGUAGE TemplateHaskellQuotes #-}

module Data.Language.TH.Internal
  ( bakeLanguage
  ) where

import           Data.Language.Internal

import           Data.ByteString (ByteString)
import           Language.Haskell.TH.Lib
import           Language.Haskell.TH.Syntax



bakeLanguage :: Maybe ByteString -> ByteString -> Q Pat
bakeLanguage a b =
  case mkLanguage a b of
    Nothing             -> fail "Not a valid language declaration"
    Just (Language val) -> conP 'Language [litP $ IntegerL (fromIntegral val)]
