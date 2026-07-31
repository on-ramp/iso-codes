{-# LANGUAGE NoImplicitPrelude
           , OverloadedStrings
           , PatternSynonyms
           , TemplateHaskell #-}

{- |
     Pattern synonyms for all currency codes supplied
     in the 'ISO.Currency.Revisions.latest' revision.
 -}

module ISO.Currency.Codes
  ( Currency
      ( AED
      , AFN
      , ALL
      , AMD
      , AOA
      , ARS
      , AUD
      , AWG
      , AZN
      , BAM
      , BBD
      , BDT
      , BHD
      , BIF
      , BMD
      , BND
      , BOB
      , BRL
      , BSD
      , BTN
      , BWP
      , BYN
      , BZD
      , CAD
      , CDF
      , CHF
      , CLP
      , CNY
      , COP
      , CRC
      , CUP
      , CVE
      , CZK
      , DJF
      , DKK
      , DOP
      , DZD
      , EGP
      , ERN
      , ETB
      , EUR
      , FJD
      , FKP
      , GBP
      , GEL
      , GHS
      , GIP
      , GMD
      , GNF
      , GTQ
      , GYD
      , HKD
      , HNL
      , HTG
      , HUF
      , IDR
      , ILS
      , INR
      , IQD
      , IRR
      , ISK
      , JMD
      , JOD
      , JPY
      , KES
      , KGS
      , KHR
      , KMF
      , KPW
      , KRW
      , KWD
      , KYD
      , KZT
      , LAK
      , LBP
      , LKR
      , LRD
      , LSL
      , LYD
      , MAD
      , MDL
      , MGA
      , MKD
      , MMK
      , MNT
      , MOP
      , MRU
      , MUR
      , MVR
      , MWK
      , MXN
      , MYR
      , MZN
      , NAD
      , NGN
      , NIO
      , NOK
      , NPR
      , NZD
      , OMR
      , PAB
      , PEN
      , PGK
      , PHP
      , PKR
      , PLN
      , PYG
      , QAR
      , RON
      , RSD
      , RUB
      , RWF
      , SAR
      , SBD
      , SCR
      , SDG
      , SEK
      , SGD
      , SHP
      , SLE
      , SOS
      , SRD
      , SSP
      , STN
      , SVC
      , SYP
      , SZL
      , THB
      , TJS
      , TMT
      , TND
      , TOP
      , TRY
      , TTD
      , TWD
      , TZS
      , UAH
      , UGX
      , USD
      , UYU
      , UYW
      , UZS
      , VED
      , VES
      , VND
      , VUV
      , WST
      , XAD
      , XAF
      , XCD
      , XCG
      , XOF
      , XPF
      , YER
      , ZAR
      , ZMW
      , ZWG
      )
  ) where

import           Data.Currency.Internal
import           Data.Currency.TH.Internal



-- | UAE Dirham.
pattern AED :: Currency
pattern AED = $(bakeCurrency "AED" "784" 2)

-- | Afghani.
pattern AFN :: Currency
pattern AFN = $(bakeCurrency "AFN" "971" 2)

-- | Lek.
pattern ALL :: Currency
pattern ALL = $(bakeCurrency "ALL" "008" 2)

-- | Armenian Dram.
pattern AMD :: Currency
pattern AMD = $(bakeCurrency "AMD" "051" 2)

-- | Kwanza.
pattern AOA :: Currency
pattern AOA = $(bakeCurrency "AOA" "973" 2)

-- | Argentine Peso.
pattern ARS :: Currency
pattern ARS = $(bakeCurrency "ARS" "032" 2)

-- | Australian Dollar.
pattern AUD :: Currency
pattern AUD = $(bakeCurrency "AUD" "036" 2)

-- | Aruban Florin.
pattern AWG :: Currency
pattern AWG = $(bakeCurrency "AWG" "533" 2)

-- | Azerbaijan Manat.
pattern AZN :: Currency
pattern AZN = $(bakeCurrency "AZN" "944" 2)

-- | Convertible Mark.
pattern BAM :: Currency
pattern BAM = $(bakeCurrency "BAM" "977" 2)

-- | Barbados Dollar.
pattern BBD :: Currency
pattern BBD = $(bakeCurrency "BBD" "052" 2)

-- | Taka.
pattern BDT :: Currency
pattern BDT = $(bakeCurrency "BDT" "050" 2)

-- | Bahraini Dinar.
pattern BHD :: Currency
pattern BHD = $(bakeCurrency "BHD" "048" 3)

-- | Burundi Franc.
pattern BIF :: Currency
pattern BIF = $(bakeCurrency "BIF" "108" 0)

-- | Bermudian Dollar.
pattern BMD :: Currency
pattern BMD = $(bakeCurrency "BMD" "060" 2)

-- | Brunei Dollar.
pattern BND :: Currency
pattern BND = $(bakeCurrency "BND" "096" 2)

-- | Boliviano.
pattern BOB :: Currency
pattern BOB = $(bakeCurrency "BOB" "068" 2)

-- | Brazilian Real.
pattern BRL :: Currency
pattern BRL = $(bakeCurrency "BRL" "986" 2)

-- | Bahamian Dollar.
pattern BSD :: Currency
pattern BSD = $(bakeCurrency "BSD" "044" 2)

-- | Ngultrum.
pattern BTN :: Currency
pattern BTN = $(bakeCurrency "BTN" "064" 2)

-- | Pula.
pattern BWP :: Currency
pattern BWP = $(bakeCurrency "BWP" "072" 2)

-- | Belarusian Ruble.
pattern BYN :: Currency
pattern BYN = $(bakeCurrency "BYN" "933" 2)

-- | Belize Dollar.
pattern BZD :: Currency
pattern BZD = $(bakeCurrency "BZD" "084" 2)

-- | Canadian Dollar.
pattern CAD :: Currency
pattern CAD = $(bakeCurrency "CAD" "124" 2)

-- | Congolese Franc.
pattern CDF :: Currency
pattern CDF = $(bakeCurrency "CDF" "976" 2)

-- | Swiss Franc.
pattern CHF :: Currency
pattern CHF = $(bakeCurrency "CHF" "756" 2)

-- | Chilean Peso.
pattern CLP :: Currency
pattern CLP = $(bakeCurrency "CLP" "152" 0)

-- | Yuan Renminbi.
pattern CNY :: Currency
pattern CNY = $(bakeCurrency "CNY" "156" 2)

-- | Colombian Peso.
pattern COP :: Currency
pattern COP = $(bakeCurrency "COP" "170" 2)

-- | Costa Rican Colon.
pattern CRC :: Currency
pattern CRC = $(bakeCurrency "CRC" "188" 2)

-- | Cuban Peso.
pattern CUP :: Currency
pattern CUP = $(bakeCurrency "CUP" "192" 2)

-- | Cabo Verde Escudo.
pattern CVE :: Currency
pattern CVE = $(bakeCurrency "CVE" "132" 2)

-- | Czech Koruna.
pattern CZK :: Currency
pattern CZK = $(bakeCurrency "CZK" "203" 2)

-- | Djibouti Franc.
pattern DJF :: Currency
pattern DJF = $(bakeCurrency "DJF" "262" 0)

-- | Danish Krone.
pattern DKK :: Currency
pattern DKK = $(bakeCurrency "DKK" "208" 2)

-- | Dominican Peso.
pattern DOP :: Currency
pattern DOP = $(bakeCurrency "DOP" "214" 2)

-- | Algerian Dinar.
pattern DZD :: Currency
pattern DZD = $(bakeCurrency "DZD" "012" 2)

-- | Egyptian Pound.
pattern EGP :: Currency
pattern EGP = $(bakeCurrency "EGP" "818" 2)

-- | Nakfa.
pattern ERN :: Currency
pattern ERN = $(bakeCurrency "ERN" "232" 2)

-- | Ethiopian Birr.
pattern ETB :: Currency
pattern ETB = $(bakeCurrency "ETB" "230" 2)

-- | Euro.
pattern EUR :: Currency
pattern EUR = $(bakeCurrency "EUR" "978" 2)

-- | Fiji Dollar.
pattern FJD :: Currency
pattern FJD = $(bakeCurrency "FJD" "242" 2)

-- | Falkland Islands Pound.
pattern FKP :: Currency
pattern FKP = $(bakeCurrency "FKP" "238" 2)

-- | Pound Sterling.
pattern GBP :: Currency
pattern GBP = $(bakeCurrency "GBP" "826" 2)

-- | Lari.
pattern GEL :: Currency
pattern GEL = $(bakeCurrency "GEL" "981" 2)

-- | Ghana Cedi.
pattern GHS :: Currency
pattern GHS = $(bakeCurrency "GHS" "936" 2)

-- | Gibraltar Pound.
pattern GIP :: Currency
pattern GIP = $(bakeCurrency "GIP" "292" 2)

-- | Dalasi.
pattern GMD :: Currency
pattern GMD = $(bakeCurrency "GMD" "270" 2)

-- | Guinean Franc.
pattern GNF :: Currency
pattern GNF = $(bakeCurrency "GNF" "324" 0)

-- | Quetzal.
pattern GTQ :: Currency
pattern GTQ = $(bakeCurrency "GTQ" "320" 2)

-- | Guyana Dollar.
pattern GYD :: Currency
pattern GYD = $(bakeCurrency "GYD" "328" 2)

-- | Hong Kong Dollar.
pattern HKD :: Currency
pattern HKD = $(bakeCurrency "HKD" "344" 2)

-- | Lempira.
pattern HNL :: Currency
pattern HNL = $(bakeCurrency "HNL" "340" 2)

-- | Gourde.
pattern HTG :: Currency
pattern HTG = $(bakeCurrency "HTG" "332" 2)

-- | Forint.
pattern HUF :: Currency
pattern HUF = $(bakeCurrency "HUF" "348" 2)

-- | Rupiah.
pattern IDR :: Currency
pattern IDR = $(bakeCurrency "IDR" "360" 2)

-- | New Israeli Sheqel.
pattern ILS :: Currency
pattern ILS = $(bakeCurrency "ILS" "376" 2)

-- | Indian Rupee.
pattern INR :: Currency
pattern INR = $(bakeCurrency "INR" "356" 2)

-- | Iraqi Dinar.
pattern IQD :: Currency
pattern IQD = $(bakeCurrency "IQD" "368" 3)

-- | Iranian Rial.
pattern IRR :: Currency
pattern IRR = $(bakeCurrency "IRR" "364" 2)

-- | Iceland Krona.
pattern ISK :: Currency
pattern ISK = $(bakeCurrency "ISK" "352" 0)

-- | Jamaican Dollar.
pattern JMD :: Currency
pattern JMD = $(bakeCurrency "JMD" "388" 2)

-- | Jordanian Dinar.
pattern JOD :: Currency
pattern JOD = $(bakeCurrency "JOD" "400" 3)

-- | Yen.
pattern JPY :: Currency
pattern JPY = $(bakeCurrency "JPY" "392" 0)

-- | Kenyan Shilling.
pattern KES :: Currency
pattern KES = $(bakeCurrency "KES" "404" 2)

-- | Som.
pattern KGS :: Currency
pattern KGS = $(bakeCurrency "KGS" "417" 2)

-- | Riel.
pattern KHR :: Currency
pattern KHR = $(bakeCurrency "KHR" "116" 2)

-- | Comorian Franc .
pattern KMF :: Currency
pattern KMF = $(bakeCurrency "KMF" "174" 0)

-- | North Korean Won.
pattern KPW :: Currency
pattern KPW = $(bakeCurrency "KPW" "408" 2)

-- | Won.
pattern KRW :: Currency
pattern KRW = $(bakeCurrency "KRW" "410" 0)

-- | Kuwaiti Dinar.
pattern KWD :: Currency
pattern KWD = $(bakeCurrency "KWD" "414" 3)

-- | Cayman Islands Dollar.
pattern KYD :: Currency
pattern KYD = $(bakeCurrency "KYD" "136" 2)

-- | Tenge.
pattern KZT :: Currency
pattern KZT = $(bakeCurrency "KZT" "398" 2)

-- | Lao Kip.
pattern LAK :: Currency
pattern LAK = $(bakeCurrency "LAK" "418" 2)

-- | Lebanese Pound.
pattern LBP :: Currency
pattern LBP = $(bakeCurrency "LBP" "422" 2)

-- | Sri Lanka Rupee.
pattern LKR :: Currency
pattern LKR = $(bakeCurrency "LKR" "144" 2)

-- | Liberian Dollar.
pattern LRD :: Currency
pattern LRD = $(bakeCurrency "LRD" "430" 2)

-- | Loti.
pattern LSL :: Currency
pattern LSL = $(bakeCurrency "LSL" "426" 2)

-- | Libyan Dinar.
pattern LYD :: Currency
pattern LYD = $(bakeCurrency "LYD" "434" 3)

-- | Moroccan Dirham.
pattern MAD :: Currency
pattern MAD = $(bakeCurrency "MAD" "504" 2)

-- | Moldovan Leu.
pattern MDL :: Currency
pattern MDL = $(bakeCurrency "MDL" "498" 2)

-- | Malagasy Ariary.
pattern MGA :: Currency
pattern MGA = $(bakeCurrency "MGA" "969" 2)

-- | Denar.
pattern MKD :: Currency
pattern MKD = $(bakeCurrency "MKD" "807" 2)

-- | Kyat.
pattern MMK :: Currency
pattern MMK = $(bakeCurrency "MMK" "104" 2)

-- | Tugrik.
pattern MNT :: Currency
pattern MNT = $(bakeCurrency "MNT" "496" 2)

-- | Pataca.
pattern MOP :: Currency
pattern MOP = $(bakeCurrency "MOP" "446" 2)

-- | Ouguiya.
pattern MRU :: Currency
pattern MRU = $(bakeCurrency "MRU" "929" 2)

-- | Mauritius Rupee.
pattern MUR :: Currency
pattern MUR = $(bakeCurrency "MUR" "480" 2)

-- | Rufiyaa.
pattern MVR :: Currency
pattern MVR = $(bakeCurrency "MVR" "462" 2)

-- | Malawi Kwacha.
pattern MWK :: Currency
pattern MWK = $(bakeCurrency "MWK" "454" 2)

-- | Mexican Peso.
pattern MXN :: Currency
pattern MXN = $(bakeCurrency "MXN" "484" 2)

-- | Malaysian Ringgit.
pattern MYR :: Currency
pattern MYR = $(bakeCurrency "MYR" "458" 2)

-- | Mozambique Metical.
pattern MZN :: Currency
pattern MZN = $(bakeCurrency "MZN" "943" 2)

-- | Namibia Dollar.
pattern NAD :: Currency
pattern NAD = $(bakeCurrency "NAD" "516" 2)

-- | Naira.
pattern NGN :: Currency
pattern NGN = $(bakeCurrency "NGN" "566" 2)

-- | Cordoba Oro.
pattern NIO :: Currency
pattern NIO = $(bakeCurrency "NIO" "558" 2)

-- | Norwegian Krone.
pattern NOK :: Currency
pattern NOK = $(bakeCurrency "NOK" "578" 2)

-- | Nepalese Rupee.
pattern NPR :: Currency
pattern NPR = $(bakeCurrency "NPR" "524" 2)

-- | New Zealand Dollar.
pattern NZD :: Currency
pattern NZD = $(bakeCurrency "NZD" "554" 2)

-- | Rial Omani.
pattern OMR :: Currency
pattern OMR = $(bakeCurrency "OMR" "512" 3)

-- | Balboa.
pattern PAB :: Currency
pattern PAB = $(bakeCurrency "PAB" "590" 2)

-- | Sol.
pattern PEN :: Currency
pattern PEN = $(bakeCurrency "PEN" "604" 2)

-- | Kina.
pattern PGK :: Currency
pattern PGK = $(bakeCurrency "PGK" "598" 2)

-- | Philippine Peso.
pattern PHP :: Currency
pattern PHP = $(bakeCurrency "PHP" "608" 2)

-- | Pakistan Rupee.
pattern PKR :: Currency
pattern PKR = $(bakeCurrency "PKR" "586" 2)

-- | Zloty.
pattern PLN :: Currency
pattern PLN = $(bakeCurrency "PLN" "985" 2)

-- | Guarani.
pattern PYG :: Currency
pattern PYG = $(bakeCurrency "PYG" "600" 0)

-- | Qatari Rial.
pattern QAR :: Currency
pattern QAR = $(bakeCurrency "QAR" "634" 2)

-- | Romanian Leu.
pattern RON :: Currency
pattern RON = $(bakeCurrency "RON" "946" 2)

-- | Serbian Dinar.
pattern RSD :: Currency
pattern RSD = $(bakeCurrency "RSD" "941" 2)

-- | Russian Ruble.
pattern RUB :: Currency
pattern RUB = $(bakeCurrency "RUB" "643" 2)

-- | Rwanda Franc.
pattern RWF :: Currency
pattern RWF = $(bakeCurrency "RWF" "646" 0)

-- | Saudi Riyal.
pattern SAR :: Currency
pattern SAR = $(bakeCurrency "SAR" "682" 2)

-- | Solomon Islands Dollar.
pattern SBD :: Currency
pattern SBD = $(bakeCurrency "SBD" "090" 2)

-- | Seychelles Rupee.
pattern SCR :: Currency
pattern SCR = $(bakeCurrency "SCR" "690" 2)

-- | Sudanese Pound.
pattern SDG :: Currency
pattern SDG = $(bakeCurrency "SDG" "938" 2)

-- | Swedish Krona.
pattern SEK :: Currency
pattern SEK = $(bakeCurrency "SEK" "752" 2)

-- | Singapore Dollar.
pattern SGD :: Currency
pattern SGD = $(bakeCurrency "SGD" "702" 2)

-- | Saint Helena Pound.
pattern SHP :: Currency
pattern SHP = $(bakeCurrency "SHP" "654" 2)

-- | Leone.
pattern SLE :: Currency
pattern SLE = $(bakeCurrency "SLE" "925" 2)

-- | Somali Shilling.
pattern SOS :: Currency
pattern SOS = $(bakeCurrency "SOS" "706" 2)

-- | Surinam Dollar.
pattern SRD :: Currency
pattern SRD = $(bakeCurrency "SRD" "968" 2)

-- | South Sudanese Pound.
pattern SSP :: Currency
pattern SSP = $(bakeCurrency "SSP" "728" 2)

-- | Dobra.
pattern STN :: Currency
pattern STN = $(bakeCurrency "STN" "930" 2)

-- | El Salvador Colon.
pattern SVC :: Currency
pattern SVC = $(bakeCurrency "SVC" "222" 2)

-- | Syrian Pound.
pattern SYP :: Currency
pattern SYP = $(bakeCurrency "SYP" "760" 2)

-- | Lilangeni.
pattern SZL :: Currency
pattern SZL = $(bakeCurrency "SZL" "748" 2)

-- | Baht.
pattern THB :: Currency
pattern THB = $(bakeCurrency "THB" "764" 2)

-- | Somoni.
pattern TJS :: Currency
pattern TJS = $(bakeCurrency "TJS" "972" 2)

-- | Turkmenistan New Manat.
pattern TMT :: Currency
pattern TMT = $(bakeCurrency "TMT" "934" 2)

-- | Tunisian Dinar.
pattern TND :: Currency
pattern TND = $(bakeCurrency "TND" "788" 3)

-- | Pa’anga.
pattern TOP :: Currency
pattern TOP = $(bakeCurrency "TOP" "776" 2)

-- | Turkish Lira.
pattern TRY :: Currency
pattern TRY = $(bakeCurrency "TRY" "949" 2)

-- | Trinidad and Tobago Dollar.
pattern TTD :: Currency
pattern TTD = $(bakeCurrency "TTD" "780" 2)

-- | New Taiwan Dollar.
pattern TWD :: Currency
pattern TWD = $(bakeCurrency "TWD" "901" 2)

-- | Tanzanian Shilling.
pattern TZS :: Currency
pattern TZS = $(bakeCurrency "TZS" "834" 2)

-- | Hryvnia.
pattern UAH :: Currency
pattern UAH = $(bakeCurrency "UAH" "980" 2)

-- | Uganda Shilling.
pattern UGX :: Currency
pattern UGX = $(bakeCurrency "UGX" "800" 0)

-- | US Dollar.
pattern USD :: Currency
pattern USD = $(bakeCurrency "USD" "840" 2)

-- | Peso Uruguayo.
pattern UYU :: Currency
pattern UYU = $(bakeCurrency "UYU" "858" 2)

-- | Unidad Previsional.
pattern UYW :: Currency
pattern UYW = $(bakeCurrency "UYW" "927" 4)

-- | Uzbekistan Sum.
pattern UZS :: Currency
pattern UZS = $(bakeCurrency "UZS" "860" 2)

-- | Bolívar Soberano.
pattern VED :: Currency
pattern VED = $(bakeCurrency "VED" "926" 2)

-- | Bolívar Soberano.
pattern VES :: Currency
pattern VES = $(bakeCurrency "VES" "928" 2)

-- | Dong.
pattern VND :: Currency
pattern VND = $(bakeCurrency "VND" "704" 0)

-- | Vatu.
pattern VUV :: Currency
pattern VUV = $(bakeCurrency "VUV" "548" 0)

-- | Tala.
pattern WST :: Currency
pattern WST = $(bakeCurrency "WST" "882" 2)

-- | Arab Accounting Dinar.
pattern XAD :: Currency
pattern XAD = $(bakeCurrency "XAD" "396" 2)

-- | CFA Franc BEAC.
pattern XAF :: Currency
pattern XAF = $(bakeCurrency "XAF" "950" 0)

-- | East Caribbean Dollar.
pattern XCD :: Currency
pattern XCD = $(bakeCurrency "XCD" "951" 2)

-- | Caribbean Guilder.
pattern XCG :: Currency
pattern XCG = $(bakeCurrency "XCG" "532" 2)

-- | CFA Franc BCEAO.
pattern XOF :: Currency
pattern XOF = $(bakeCurrency "XOF" "952" 0)

-- | CFP Franc.
pattern XPF :: Currency
pattern XPF = $(bakeCurrency "XPF" "953" 0)

-- | Yemeni Rial.
pattern YER :: Currency
pattern YER = $(bakeCurrency "YER" "886" 2)

-- | Rand.
pattern ZAR :: Currency
pattern ZAR = $(bakeCurrency "ZAR" "710" 2)

-- | Zambian Kwacha.
pattern ZMW :: Currency
pattern ZMW = $(bakeCurrency "ZMW" "967" 2)

-- | Zimbabwe Gold.
pattern ZWG :: Currency
pattern ZWG = $(bakeCurrency "ZWG" "924" 2)
