{-# LANGUAGE NoImplicitPrelude
           , OverloadedStrings
           , PatternSynonyms
           , TemplateHaskell #-}

{- |
     Pattern synonyms for all country codes supplied
     in the 'ISO.Country.Revisions.latest' revision.
 -}

module ISO.Country.Codes
  ( Country
      ( AD
      , AE
      , AF
      , AG
      , AI
      , AL
      , AM
      , AO
      , AQ
      , AR
      , AS
      , AT
      , AU
      , AW
      , AX
      , AZ
      , BA
      , BB
      , BD
      , BE
      , BF
      , BG
      , BH
      , BI
      , BJ
      , BL
      , BM
      , BN
      , BO
      , BQ
      , BR
      , BS
      , BT
      , BV
      , BW
      , BY
      , BZ
      , CA
      , CC
      , CD
      , CF
      , CG
      , CH
      , CI
      , CK
      , CL
      , CM
      , CN
      , CO
      , CR
      , CU
      , CV
      , CW
      , CX
      , CY
      , CZ
      , DE
      , DJ
      , DK
      , DM
      , DO
      , DZ
      , EC
      , EE
      , EG
      , EH
      , ER
      , ES
      , ET
      , FI
      , FJ
      , FK
      , FM
      , FO
      , FR
      , GA
      , GB
      , GD
      , GE
      , GF
      , GG
      , GH
      , GI
      , GL
      , GM
      , GN
      , GP
      , GQ
      , GR
      , GS
      , GT
      , GU
      , GW
      , GY
      , HK
      , HM
      , HN
      , HR
      , HT
      , HU
      , ID
      , IE
      , IL
      , IM
      , IN
      , IO
      , IQ
      , IR
      , IS
      , IT
      , JE
      , JM
      , JO
      , JP
      , KE
      , KG
      , KH
      , KI
      , KM
      , KN
      , KP
      , KR
      , KW
      , KY
      , KZ
      , LA
      , LB
      , LC
      , LI
      , LK
      , LR
      , LS
      , LT
      , LU
      , LV
      , LY
      , MA
      , MC
      , MD
      , ME
      , MF
      , MG
      , MH
      , MK
      , ML
      , MM
      , MN
      , MO
      , MP
      , MQ
      , MR
      , MS
      , MT
      , MU
      , MV
      , MW
      , MX
      , MY
      , MZ
      , NA
      , NC
      , NE
      , NF
      , NG
      , NI
      , NL
      , NO
      , NP
      , NR
      , NU
      , NZ
      , OM
      , PA
      , PE
      , PF
      , PG
      , PH
      , PK
      , PL
      , PM
      , PN
      , PR
      , PS
      , PT
      , PW
      , PY
      , QA
      , RE
      , RO
      , RS
      , RU
      , RW
      , SA
      , SB
      , SC
      , SD
      , SE
      , SG
      , SH
      , SI
      , SJ
      , SK
      , SL
      , SM
      , SN
      , SO
      , SR
      , SS
      , ST
      , SV
      , SX
      , SY
      , SZ
      , TC
      , TD
      , TF
      , TG
      , TH
      , TJ
      , TK
      , TL
      , TM
      , TN
      , TO
      , TR
      , TT
      , TV
      , TW
      , TZ
      , UA
      , UG
      , UM
      , US
      , UY
      , UZ
      , VA
      , VC
      , VE
      , VG
      , VI
      , VN
      , VU
      , WF
      , WS
      , YE
      , YT
      , ZA
      , ZM
      , ZW
      )
  ) where

import           Data.Country.Internal
import           Data.Country.TH.Internal



-- | Andorra.
pattern AD :: Country
pattern AD = $(bakeCountry "AD" "AND" "020")

-- | United Arab Emirates.
pattern AE :: Country
pattern AE = $(bakeCountry "AE" "ARE" "784")

-- | Afghanistan.
pattern AF :: Country
pattern AF = $(bakeCountry "AF" "AFG" "004")

-- | Antigua and Barbuda.
pattern AG :: Country
pattern AG = $(bakeCountry "AG" "ATG" "028")

-- | Anguilla.
pattern AI :: Country
pattern AI = $(bakeCountry "AI" "AIA" "660")

-- | Albania.
pattern AL :: Country
pattern AL = $(bakeCountry "AL" "ALB" "008")

-- | Armenia.
pattern AM :: Country
pattern AM = $(bakeCountry "AM" "ARM" "051")

-- | Angola.
pattern AO :: Country
pattern AO = $(bakeCountry "AO" "AGO" "024")

-- | Antarctica.
pattern AQ :: Country
pattern AQ = $(bakeCountry "AQ" "ATA" "010")

-- | Argentina.
pattern AR :: Country
pattern AR = $(bakeCountry "AR" "ARG" "032")

-- | American Samoa.
pattern AS :: Country
pattern AS = $(bakeCountry "AS" "ASM" "016")

-- | Austria.
pattern AT :: Country
pattern AT = $(bakeCountry "AT" "AUT" "040")

-- | Australia.
pattern AU :: Country
pattern AU = $(bakeCountry "AU" "AUS" "036")

-- | Aruba.
pattern AW :: Country
pattern AW = $(bakeCountry "AW" "ABW" "533")

-- | Åland Islands.
pattern AX :: Country
pattern AX = $(bakeCountry "AX" "ALA" "248")

-- | Azerbaijan.
pattern AZ :: Country
pattern AZ = $(bakeCountry "AZ" "AZE" "031")

-- | Bosnia and Herzegovina.
pattern BA :: Country
pattern BA = $(bakeCountry "BA" "BIH" "070")

-- | Barbados.
pattern BB :: Country
pattern BB = $(bakeCountry "BB" "BRB" "052")

-- | Bangladesh.
pattern BD :: Country
pattern BD = $(bakeCountry "BD" "BGD" "050")

-- | Belgium.
pattern BE :: Country
pattern BE = $(bakeCountry "BE" "BEL" "056")

-- | Burkina Faso.
pattern BF :: Country
pattern BF = $(bakeCountry "BF" "BFA" "854")

-- | Bulgaria.
pattern BG :: Country
pattern BG = $(bakeCountry "BG" "BGR" "100")

-- | Bahrain.
pattern BH :: Country
pattern BH = $(bakeCountry "BH" "BHR" "048")

-- | Burundi.
pattern BI :: Country
pattern BI = $(bakeCountry "BI" "BDI" "108")

-- | Benin.
pattern BJ :: Country
pattern BJ = $(bakeCountry "BJ" "BEN" "204")

-- | Saint Barthélemy.
pattern BL :: Country
pattern BL = $(bakeCountry "BL" "BLM" "652")

-- | Bermuda.
pattern BM :: Country
pattern BM = $(bakeCountry "BM" "BMU" "060")

-- | Brunei Darussalam.
pattern BN :: Country
pattern BN = $(bakeCountry "BN" "BRN" "096")

-- | Bolivia (Plurinational State of).
pattern BO :: Country
pattern BO = $(bakeCountry "BO" "BOL" "068")

-- | Bonaire, Sint Eustatius and Saba.
pattern BQ :: Country
pattern BQ = $(bakeCountry "BQ" "BES" "535")

-- | Brazil.
pattern BR :: Country
pattern BR = $(bakeCountry "BR" "BRA" "076")

-- | Bahamas.
pattern BS :: Country
pattern BS = $(bakeCountry "BS" "BHS" "044")

-- | Bhutan.
pattern BT :: Country
pattern BT = $(bakeCountry "BT" "BTN" "064")

-- | Bouvet Island.
pattern BV :: Country
pattern BV = $(bakeCountry "BV" "BVT" "074")

-- | Botswana.
pattern BW :: Country
pattern BW = $(bakeCountry "BW" "BWA" "072")

-- | Belarus.
pattern BY :: Country
pattern BY = $(bakeCountry "BY" "BLR" "112")

-- | Belize.
pattern BZ :: Country
pattern BZ = $(bakeCountry "BZ" "BLZ" "084")

-- | Canada.
pattern CA :: Country
pattern CA = $(bakeCountry "CA" "CAN" "124")

-- | Cocos (Keeling) Islands.
pattern CC :: Country
pattern CC = $(bakeCountry "CC" "CCK" "166")

-- | Congo (Democratic Republic of the).
pattern CD :: Country
pattern CD = $(bakeCountry "CD" "COD" "180")

-- | Central African Republic.
pattern CF :: Country
pattern CF = $(bakeCountry "CF" "CAF" "140")

-- | Congo.
pattern CG :: Country
pattern CG = $(bakeCountry "CG" "COG" "178")

-- | Switzerland.
pattern CH :: Country
pattern CH = $(bakeCountry "CH" "CHE" "756")

-- | Côte d'Ivoire.
pattern CI :: Country
pattern CI = $(bakeCountry "CI" "CIV" "384")

-- | Cook Islands.
pattern CK :: Country
pattern CK = $(bakeCountry "CK" "COK" "184")

-- | Chile.
pattern CL :: Country
pattern CL = $(bakeCountry "CL" "CHL" "152")

-- | Cameroon.
pattern CM :: Country
pattern CM = $(bakeCountry "CM" "CMR" "120")

-- | China.
pattern CN :: Country
pattern CN = $(bakeCountry "CN" "CHN" "156")

-- | Colombia.
pattern CO :: Country
pattern CO = $(bakeCountry "CO" "COL" "170")

-- | Costa Rica.
pattern CR :: Country
pattern CR = $(bakeCountry "CR" "CRI" "188")

-- | Cuba.
pattern CU :: Country
pattern CU = $(bakeCountry "CU" "CUB" "192")

-- | Cabo Verde.
pattern CV :: Country
pattern CV = $(bakeCountry "CV" "CPV" "132")

-- | Curaçao.
pattern CW :: Country
pattern CW = $(bakeCountry "CW" "CUW" "531")

-- | Christmas Island.
pattern CX :: Country
pattern CX = $(bakeCountry "CX" "CXR" "162")

-- | Cyprus.
pattern CY :: Country
pattern CY = $(bakeCountry "CY" "CYP" "196")

-- | Czech Republic.
pattern CZ :: Country
pattern CZ = $(bakeCountry "CZ" "CZE" "203")

-- | Germany.
pattern DE :: Country
pattern DE = $(bakeCountry "DE" "DEU" "276")

-- | Djibouti.
pattern DJ :: Country
pattern DJ = $(bakeCountry "DJ" "DJI" "262")

-- | Denmark.
pattern DK :: Country
pattern DK = $(bakeCountry "DK" "DNK" "208")

-- | Dominica.
pattern DM :: Country
pattern DM = $(bakeCountry "DM" "DMA" "212")

-- | Dominican Republic.
pattern DO :: Country
pattern DO = $(bakeCountry "DO" "DOM" "214")

-- | Algeria.
pattern DZ :: Country
pattern DZ = $(bakeCountry "DZ" "DZA" "012")

-- | Ecuador.
pattern EC :: Country
pattern EC = $(bakeCountry "EC" "ECU" "218")

-- | Estonia.
pattern EE :: Country
pattern EE = $(bakeCountry "EE" "EST" "233")

-- | Egypt.
pattern EG :: Country
pattern EG = $(bakeCountry "EG" "EGY" "818")

-- | Western Sahara.
pattern EH :: Country
pattern EH = $(bakeCountry "EH" "ESH" "732")

-- | Eritrea.
pattern ER :: Country
pattern ER = $(bakeCountry "ER" "ERI" "232")

-- | Spain.
pattern ES :: Country
pattern ES = $(bakeCountry "ES" "ESP" "724")

-- | Ethiopia.
pattern ET :: Country
pattern ET = $(bakeCountry "ET" "ETH" "231")

-- | Finland.
pattern FI :: Country
pattern FI = $(bakeCountry "FI" "FIN" "246")

-- | Fiji.
pattern FJ :: Country
pattern FJ = $(bakeCountry "FJ" "FJI" "242")

-- | Falkland Islands (Malvinas).
pattern FK :: Country
pattern FK = $(bakeCountry "FK" "FLK" "238")

-- | Micronesia (Federated States of).
pattern FM :: Country
pattern FM = $(bakeCountry "FM" "FSM" "583")

-- | Faroe Islands.
pattern FO :: Country
pattern FO = $(bakeCountry "FO" "FRO" "234")

-- | France.
pattern FR :: Country
pattern FR = $(bakeCountry "FR" "FRA" "250")

-- | Gabon.
pattern GA :: Country
pattern GA = $(bakeCountry "GA" "GAB" "266")

-- | United Kingdom of Great Britain and Northern Ireland.
pattern GB :: Country
pattern GB = $(bakeCountry "GB" "GBR" "826")

-- | Grenada.
pattern GD :: Country
pattern GD = $(bakeCountry "GD" "GRD" "308")

-- | Georgia.
pattern GE :: Country
pattern GE = $(bakeCountry "GE" "GEO" "268")

-- | French Guiana.
pattern GF :: Country
pattern GF = $(bakeCountry "GF" "GUF" "254")

-- | Guernsey.
pattern GG :: Country
pattern GG = $(bakeCountry "GG" "GGY" "831")

-- | Ghana.
pattern GH :: Country
pattern GH = $(bakeCountry "GH" "GHA" "288")

-- | Gibraltar.
pattern GI :: Country
pattern GI = $(bakeCountry "GI" "GIB" "292")

-- | Greenland.
pattern GL :: Country
pattern GL = $(bakeCountry "GL" "GRL" "304")

-- | Gambia.
pattern GM :: Country
pattern GM = $(bakeCountry "GM" "GMB" "270")

-- | Guinea.
pattern GN :: Country
pattern GN = $(bakeCountry "GN" "GIN" "324")

-- | Guadeloupe.
pattern GP :: Country
pattern GP = $(bakeCountry "GP" "GLP" "312")

-- | Equatorial Guinea.
pattern GQ :: Country
pattern GQ = $(bakeCountry "GQ" "GNQ" "226")

-- | Greece.
pattern GR :: Country
pattern GR = $(bakeCountry "GR" "GRC" "300")

-- | South Georgia and the South Sandwich Islands.
pattern GS :: Country
pattern GS = $(bakeCountry "GS" "SGS" "239")

-- | Guatemala.
pattern GT :: Country
pattern GT = $(bakeCountry "GT" "GTM" "320")

-- | Guam.
pattern GU :: Country
pattern GU = $(bakeCountry "GU" "GUM" "316")

-- | Guinea-Bissau.
pattern GW :: Country
pattern GW = $(bakeCountry "GW" "GNB" "624")

-- | Guyana.
pattern GY :: Country
pattern GY = $(bakeCountry "GY" "GUY" "328")

-- | Hong Kong.
pattern HK :: Country
pattern HK = $(bakeCountry "HK" "HKG" "344")

-- | Heard Island and McDonald Islands.
pattern HM :: Country
pattern HM = $(bakeCountry "HM" "HMD" "334")

-- | Honduras.
pattern HN :: Country
pattern HN = $(bakeCountry "HN" "HND" "340")

-- | Croatia.
pattern HR :: Country
pattern HR = $(bakeCountry "HR" "HRV" "191")

-- | Haiti.
pattern HT :: Country
pattern HT = $(bakeCountry "HT" "HTI" "332")

-- | Hungary.
pattern HU :: Country
pattern HU = $(bakeCountry "HU" "HUN" "348")

-- | Indonesia.
pattern ID :: Country
pattern ID = $(bakeCountry "ID" "IDN" "360")

-- | Ireland.
pattern IE :: Country
pattern IE = $(bakeCountry "IE" "IRL" "372")

-- | Israel.
pattern IL :: Country
pattern IL = $(bakeCountry "IL" "ISR" "376")

-- | Isle of Man.
pattern IM :: Country
pattern IM = $(bakeCountry "IM" "IMN" "833")

-- | India.
pattern IN :: Country
pattern IN = $(bakeCountry "IN" "IND" "356")

-- | British Indian Ocean Territory.
pattern IO :: Country
pattern IO = $(bakeCountry "IO" "IOT" "086")

-- | Iraq.
pattern IQ :: Country
pattern IQ = $(bakeCountry "IQ" "IRQ" "368")

-- | Iran (Islamic Republic of).
pattern IR :: Country
pattern IR = $(bakeCountry "IR" "IRN" "364")

-- | Iceland.
pattern IS :: Country
pattern IS = $(bakeCountry "IS" "ISL" "352")

-- | Italy.
pattern IT :: Country
pattern IT = $(bakeCountry "IT" "ITA" "380")

-- | Jersey.
pattern JE :: Country
pattern JE = $(bakeCountry "JE" "JEY" "832")

-- | Jamaica.
pattern JM :: Country
pattern JM = $(bakeCountry "JM" "JAM" "388")

-- | Jordan.
pattern JO :: Country
pattern JO = $(bakeCountry "JO" "JOR" "400")

-- | Japan.
pattern JP :: Country
pattern JP = $(bakeCountry "JP" "JPN" "392")

-- | Kenya.
pattern KE :: Country
pattern KE = $(bakeCountry "KE" "KEN" "404")

-- | Kyrgyzstan.
pattern KG :: Country
pattern KG = $(bakeCountry "KG" "KGZ" "417")

-- | Cambodia.
pattern KH :: Country
pattern KH = $(bakeCountry "KH" "KHM" "116")

-- | Kiribati.
pattern KI :: Country
pattern KI = $(bakeCountry "KI" "KIR" "296")

-- | Comoros.
pattern KM :: Country
pattern KM = $(bakeCountry "KM" "COM" "174")

-- | Saint Kitts and Nevis.
pattern KN :: Country
pattern KN = $(bakeCountry "KN" "KNA" "659")

-- | Korea (Democratic People's Republic of).
pattern KP :: Country
pattern KP = $(bakeCountry "KP" "PRK" "408")

-- | Korea (Republic of).
pattern KR :: Country
pattern KR = $(bakeCountry "KR" "KOR" "410")

-- | Kuwait.
pattern KW :: Country
pattern KW = $(bakeCountry "KW" "KWT" "414")

-- | Cayman Islands.
pattern KY :: Country
pattern KY = $(bakeCountry "KY" "CYM" "136")

-- | Kazakhstan.
pattern KZ :: Country
pattern KZ = $(bakeCountry "KZ" "KAZ" "398")

-- | Lao People's Democratic Republic.
pattern LA :: Country
pattern LA = $(bakeCountry "LA" "LAO" "418")

-- | Lebanon.
pattern LB :: Country
pattern LB = $(bakeCountry "LB" "LBN" "422")

-- | Saint Lucia.
pattern LC :: Country
pattern LC = $(bakeCountry "LC" "LCA" "662")

-- | Liechtenstein.
pattern LI :: Country
pattern LI = $(bakeCountry "LI" "LIE" "438")

-- | Sri Lanka.
pattern LK :: Country
pattern LK = $(bakeCountry "LK" "LKA" "144")

-- | Liberia.
pattern LR :: Country
pattern LR = $(bakeCountry "LR" "LBR" "430")

-- | Lesotho.
pattern LS :: Country
pattern LS = $(bakeCountry "LS" "LSO" "426")

-- | Lithuania.
pattern LT :: Country
pattern LT = $(bakeCountry "LT" "LTU" "440")

-- | Luxembourg.
pattern LU :: Country
pattern LU = $(bakeCountry "LU" "LUX" "442")

-- | Latvia.
pattern LV :: Country
pattern LV = $(bakeCountry "LV" "LVA" "428")

-- | Libya.
pattern LY :: Country
pattern LY = $(bakeCountry "LY" "LBY" "434")

-- | Morocco.
pattern MA :: Country
pattern MA = $(bakeCountry "MA" "MAR" "504")

-- | Monaco.
pattern MC :: Country
pattern MC = $(bakeCountry "MC" "MCO" "492")

-- | Moldova (Republic of).
pattern MD :: Country
pattern MD = $(bakeCountry "MD" "MDA" "498")

-- | Montenegro.
pattern ME :: Country
pattern ME = $(bakeCountry "ME" "MNE" "499")

-- | Saint Martin (French part).
pattern MF :: Country
pattern MF = $(bakeCountry "MF" "MAF" "663")

-- | Madagascar.
pattern MG :: Country
pattern MG = $(bakeCountry "MG" "MDG" "450")

-- | Marshall Islands.
pattern MH :: Country
pattern MH = $(bakeCountry "MH" "MHL" "584")

-- | Macedonia (the former Yugoslav Republic of).
pattern MK :: Country
pattern MK = $(bakeCountry "MK" "MKD" "807")

-- | Mali.
pattern ML :: Country
pattern ML = $(bakeCountry "ML" "MLI" "466")

-- | Myanmar.
pattern MM :: Country
pattern MM = $(bakeCountry "MM" "MMR" "104")

-- | Mongolia.
pattern MN :: Country
pattern MN = $(bakeCountry "MN" "MNG" "496")

-- | Macao.
pattern MO :: Country
pattern MO = $(bakeCountry "MO" "MAC" "446")

-- | Northern Mariana Islands.
pattern MP :: Country
pattern MP = $(bakeCountry "MP" "MNP" "580")

-- | Martinique.
pattern MQ :: Country
pattern MQ = $(bakeCountry "MQ" "MTQ" "474")

-- | Mauritania.
pattern MR :: Country
pattern MR = $(bakeCountry "MR" "MRT" "478")

-- | Montserrat.
pattern MS :: Country
pattern MS = $(bakeCountry "MS" "MSR" "500")

-- | Malta.
pattern MT :: Country
pattern MT = $(bakeCountry "MT" "MLT" "470")

-- | Mauritius.
pattern MU :: Country
pattern MU = $(bakeCountry "MU" "MUS" "480")

-- | Maldives.
pattern MV :: Country
pattern MV = $(bakeCountry "MV" "MDV" "462")

-- | Malawi.
pattern MW :: Country
pattern MW = $(bakeCountry "MW" "MWI" "454")

-- | Mexico.
pattern MX :: Country
pattern MX = $(bakeCountry "MX" "MEX" "484")

-- | Malaysia.
pattern MY :: Country
pattern MY = $(bakeCountry "MY" "MYS" "458")

-- | Mozambique.
pattern MZ :: Country
pattern MZ = $(bakeCountry "MZ" "MOZ" "508")

-- | Namibia.
pattern NA :: Country
pattern NA = $(bakeCountry "NA" "NAM" "516")

-- | New Caledonia.
pattern NC :: Country
pattern NC = $(bakeCountry "NC" "NCL" "540")

-- | Niger.
pattern NE :: Country
pattern NE = $(bakeCountry "NE" "NER" "562")

-- | Norfolk Island.
pattern NF :: Country
pattern NF = $(bakeCountry "NF" "NFK" "574")

-- | Nigeria.
pattern NG :: Country
pattern NG = $(bakeCountry "NG" "NGA" "566")

-- | Nicaragua.
pattern NI :: Country
pattern NI = $(bakeCountry "NI" "NIC" "558")

-- | Netherlands.
pattern NL :: Country
pattern NL = $(bakeCountry "NL" "NLD" "528")

-- | Norway.
pattern NO :: Country
pattern NO = $(bakeCountry "NO" "NOR" "578")

-- | Nepal.
pattern NP :: Country
pattern NP = $(bakeCountry "NP" "NPL" "524")

-- | Nauru.
pattern NR :: Country
pattern NR = $(bakeCountry "NR" "NRU" "520")

-- | Niue.
pattern NU :: Country
pattern NU = $(bakeCountry "NU" "NIU" "570")

-- | New Zealand.
pattern NZ :: Country
pattern NZ = $(bakeCountry "NZ" "NZL" "554")

-- | Oman.
pattern OM :: Country
pattern OM = $(bakeCountry "OM" "OMN" "512")

-- | Panama.
pattern PA :: Country
pattern PA = $(bakeCountry "PA" "PAN" "591")

-- | Peru.
pattern PE :: Country
pattern PE = $(bakeCountry "PE" "PER" "604")

-- | French Polynesia.
pattern PF :: Country
pattern PF = $(bakeCountry "PF" "PYF" "258")

-- | Papua New Guinea.
pattern PG :: Country
pattern PG = $(bakeCountry "PG" "PNG" "598")

-- | Philippines.
pattern PH :: Country
pattern PH = $(bakeCountry "PH" "PHL" "608")

-- | Pakistan.
pattern PK :: Country
pattern PK = $(bakeCountry "PK" "PAK" "586")

-- | Poland.
pattern PL :: Country
pattern PL = $(bakeCountry "PL" "POL" "616")

-- | Saint Pierre and Miquelon.
pattern PM :: Country
pattern PM = $(bakeCountry "PM" "SPM" "666")

-- | Pitcairn.
pattern PN :: Country
pattern PN = $(bakeCountry "PN" "PCN" "612")

-- | Puerto Rico.
pattern PR :: Country
pattern PR = $(bakeCountry "PR" "PRI" "630")

-- | Palestine, State of.
pattern PS :: Country
pattern PS = $(bakeCountry "PS" "PSE" "275")

-- | Portugal.
pattern PT :: Country
pattern PT = $(bakeCountry "PT" "PRT" "620")

-- | Palau.
pattern PW :: Country
pattern PW = $(bakeCountry "PW" "PLW" "585")

-- | Paraguay.
pattern PY :: Country
pattern PY = $(bakeCountry "PY" "PRY" "600")

-- | Qatar.
pattern QA :: Country
pattern QA = $(bakeCountry "QA" "QAT" "634")

-- | Réunion.
pattern RE :: Country
pattern RE = $(bakeCountry "RE" "REU" "638")

-- | Romania.
pattern RO :: Country
pattern RO = $(bakeCountry "RO" "ROU" "642")

-- | Serbia.
pattern RS :: Country
pattern RS = $(bakeCountry "RS" "SRB" "688")

-- | Russian Federation.
pattern RU :: Country
pattern RU = $(bakeCountry "RU" "RUS" "643")

-- | Rwanda.
pattern RW :: Country
pattern RW = $(bakeCountry "RW" "RWA" "646")

-- | Saudi Arabia.
pattern SA :: Country
pattern SA = $(bakeCountry "SA" "SAU" "682")

-- | Solomon Islands.
pattern SB :: Country
pattern SB = $(bakeCountry "SB" "SLB" "090")

-- | Seychelles.
pattern SC :: Country
pattern SC = $(bakeCountry "SC" "SYC" "690")

-- | Sudan.
pattern SD :: Country
pattern SD = $(bakeCountry "SD" "SDN" "729")

-- | Sweden.
pattern SE :: Country
pattern SE = $(bakeCountry "SE" "SWE" "752")

-- | Singapore.
pattern SG :: Country
pattern SG = $(bakeCountry "SG" "SGP" "702")

-- | Saint Helena, Ascension and Tristan da Cunha.
pattern SH :: Country
pattern SH = $(bakeCountry "SH" "SHN" "654")

-- | Slovenia.
pattern SI :: Country
pattern SI = $(bakeCountry "SI" "SVN" "705")

-- | Svalbard and Jan Mayen.
pattern SJ :: Country
pattern SJ = $(bakeCountry "SJ" "SJM" "744")

-- | Slovakia.
pattern SK :: Country
pattern SK = $(bakeCountry "SK" "SVK" "703")

-- | Sierra Leone.
pattern SL :: Country
pattern SL = $(bakeCountry "SL" "SLE" "694")

-- | San Marino.
pattern SM :: Country
pattern SM = $(bakeCountry "SM" "SMR" "674")

-- | Senegal.
pattern SN :: Country
pattern SN = $(bakeCountry "SN" "SEN" "686")

-- | Somalia.
pattern SO :: Country
pattern SO = $(bakeCountry "SO" "SOM" "706")

-- | Suriname.
pattern SR :: Country
pattern SR = $(bakeCountry "SR" "SUR" "740")

-- | South Sudan.
pattern SS :: Country
pattern SS = $(bakeCountry "SS" "SSD" "728")

-- | Sao Tome and Principe.
pattern ST :: Country
pattern ST = $(bakeCountry "ST" "STP" "678")

-- | El Salvador.
pattern SV :: Country
pattern SV = $(bakeCountry "SV" "SLV" "222")

-- | Sint Maarten (Dutch part).
pattern SX :: Country
pattern SX = $(bakeCountry "SX" "SXM" "534")

-- | Syrian Arab Republic.
pattern SY :: Country
pattern SY = $(bakeCountry "SY" "SYR" "760")

-- | Swaziland.
pattern SZ :: Country
pattern SZ = $(bakeCountry "SZ" "SWZ" "748")

-- | Turks and Caicos Islands.
pattern TC :: Country
pattern TC = $(bakeCountry "TC" "TCA" "796")

-- | Chad.
pattern TD :: Country
pattern TD = $(bakeCountry "TD" "TCD" "148")

-- | French Southern Territories.
pattern TF :: Country
pattern TF = $(bakeCountry "TF" "ATF" "260")

-- | Togo.
pattern TG :: Country
pattern TG = $(bakeCountry "TG" "TGO" "768")

-- | Thailand.
pattern TH :: Country
pattern TH = $(bakeCountry "TH" "THA" "764")

-- | Tajikistan.
pattern TJ :: Country
pattern TJ = $(bakeCountry "TJ" "TJK" "762")

-- | Tokelau.
pattern TK :: Country
pattern TK = $(bakeCountry "TK" "TKL" "772")

-- | Timor-Leste.
pattern TL :: Country
pattern TL = $(bakeCountry "TL" "TLS" "626")

-- | Turkmenistan.
pattern TM :: Country
pattern TM = $(bakeCountry "TM" "TKM" "795")

-- | Tunisia.
pattern TN :: Country
pattern TN = $(bakeCountry "TN" "TUN" "788")

-- | Tonga.
pattern TO :: Country
pattern TO = $(bakeCountry "TO" "TON" "776")

-- | Turkey.
pattern TR :: Country
pattern TR = $(bakeCountry "TR" "TUR" "792")

-- | Trinidad and Tobago.
pattern TT :: Country
pattern TT = $(bakeCountry "TT" "TTO" "780")

-- | Tuvalu.
pattern TV :: Country
pattern TV = $(bakeCountry "TV" "TUV" "798")

-- | Taiwan, Province of China.
pattern TW :: Country
pattern TW = $(bakeCountry "TW" "TWN" "158")

-- | Tanzania, United Republic of.
pattern TZ :: Country
pattern TZ = $(bakeCountry "TZ" "TZA" "834")

-- | Ukraine.
pattern UA :: Country
pattern UA = $(bakeCountry "UA" "UKR" "804")

-- | Uganda.
pattern UG :: Country
pattern UG = $(bakeCountry "UG" "UGA" "800")

-- | United States Minor Outlying Islands.
pattern UM :: Country
pattern UM = $(bakeCountry "UM" "UMI" "581")

-- | United States of America.
pattern US :: Country
pattern US = $(bakeCountry "US" "USA" "840")

-- | Uruguay.
pattern UY :: Country
pattern UY = $(bakeCountry "UY" "URY" "858")

-- | Uzbekistan.
pattern UZ :: Country
pattern UZ = $(bakeCountry "UZ" "UZB" "860")

-- | Holy See.
pattern VA :: Country
pattern VA = $(bakeCountry "VA" "VAT" "336")

-- | Saint Vincent and the Grenadines.
pattern VC :: Country
pattern VC = $(bakeCountry "VC" "VCT" "670")

-- | Venezuela (Bolivarian Republic of).
pattern VE :: Country
pattern VE = $(bakeCountry "VE" "VEN" "862")

-- | Virgin Islands (British).
pattern VG :: Country
pattern VG = $(bakeCountry "VG" "VGB" "092")

-- | Virgin Islands (U.S.).
pattern VI :: Country
pattern VI = $(bakeCountry "VI" "VIR" "850")

-- | Viet Nam.
pattern VN :: Country
pattern VN = $(bakeCountry "VN" "VNM" "704")

-- | Vanuatu.
pattern VU :: Country
pattern VU = $(bakeCountry "VU" "VUT" "548")

-- | Wallis and Futuna.
pattern WF :: Country
pattern WF = $(bakeCountry "WF" "WLF" "876")

-- | Samoa.
pattern WS :: Country
pattern WS = $(bakeCountry "WS" "WSM" "882")

-- | Yemen.
pattern YE :: Country
pattern YE = $(bakeCountry "YE" "YEM" "887")

-- | Mayotte.
pattern YT :: Country
pattern YT = $(bakeCountry "YT" "MYT" "175")

-- | South Africa.
pattern ZA :: Country
pattern ZA = $(bakeCountry "ZA" "ZAF" "710")

-- | Zambia.
pattern ZM :: Country
pattern ZM = $(bakeCountry "ZM" "ZMB" "894")

-- | Zimbabwe.
pattern ZW :: Country
pattern ZW = $(bakeCountry "ZW" "ZWE" "716")
