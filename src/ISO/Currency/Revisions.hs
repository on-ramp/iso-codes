{-# LANGUAGE TemplateHaskell #-}

{- |
     Most recent and historical currency revisions.
 -}

module ISO.Currency.Revisions
  ( latest

  , revision'2025'12'31
  ) where

import           Data.Currency.Revision.Internal
import           ISO.Currency.Codes

import           Data.Foldable
import           Language.Haskell.TH.Syntax
import           Prelude (($), flip)



-- | The most recent revision.
latest :: Revision
latest = revision'2025'12'31



-- | Removed @BGN'1999@.
revision'2025'12'31 :: Revision
revision'2025'12'31 =
 $( let xs =
          [ AED, AFN, ALL, AMD, AOA, ARS, AUD, AWG, AZN
          , BAM, BBD, BDT, BHD, BIF, BMD, BND, BOB, BRL, BSD, BTN, BWP, BYN, BZD
          , CAD, CDF, CHF, CLP, CNY, COP, CRC, CUP, CVE, CZK
          , DJF, DKK, DOP, DZD
          , EGP, ERN, ETB, EUR
          , FJD, FKP
          , GBP, GEL, GHS, GIP, GMD, GNF, GTQ, GYD
          , HKD, HNL, HTG, HUF
          , IDR, ILS, INR, IQD, IRR, ISK
          , JMD, JOD, JPY
          , KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT
          , LAK, LBP, LKR, LRD, LSL, LYD
          , MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRU, MUR, MVR, MWK, MXN, MYR, MZN
          , NAD, NGN, NIO, NOK, NPR, NZD
          , OMR
          , PAB, PEN, PGK, PHP, PKR, PLN, PYG
          , QAR
          , RON, RSD, RUB, RWF
          , SAR, SBD, SCR, SDG, SEK, SGD, SHP, SLE, SOS, SRD, SSP, STN, SVC, SYP, SZL
          , THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS
          , UAH, UGX, USD, UYU, UYW, UZS
          , VED, VES, VND, VUV
          , WST
          , XAD, XAF, XCD, XCG, XOF, XPF
          , YER
          , ZAR, ZMW, ZWG
          ]

    in lift $ foldl' (flip unsafeInsert) empty xs
  )
