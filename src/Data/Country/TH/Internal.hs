{-# LANGUAGE TemplateHaskellQuotes #-}

module Data.Country.TH.Internal
  ( bakeCountry
  ) where

import           Data.Country.Internal

import           Data.ByteString (ByteString)
import           Language.Haskell.TH.Lib
import           Language.Haskell.TH.Syntax



bakeCountry :: ByteString -> ByteString -> ByteString -> Q Pat
bakeCountry a b c =
  case mkCountry a b c of
    Nothing            -> fail "Not a valid country declaration"
    Just (Country val) -> conP 'Country [litP $ IntegerL (fromIntegral val)]
