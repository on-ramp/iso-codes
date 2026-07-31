{-# LANGUAGE TemplateHaskellQuotes #-}

module Data.Currency.TH.Internal
  ( bakeCurrency
  ) where

import           Data.Currency.Internal

import           Data.ByteString (ByteString)
import           Language.Haskell.TH.Lib
import           Language.Haskell.TH.Syntax



bakeCurrency :: ByteString -> ByteString -> Int -> Q Pat
bakeCurrency a b c =
  case mkCurrency a b c of
    Nothing             -> fail "Not a valid currency declaration"
    Just (Currency val) -> conP 'Currency [litP $ IntegerL (fromIntegral val)]
