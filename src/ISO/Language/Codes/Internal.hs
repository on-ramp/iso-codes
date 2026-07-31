{-# LANGUAGE OverloadedStrings
           , PatternSynonyms
           , TemplateHaskell #-}

module ISO.Language.Codes.Internal
  ( Language
      ( Aa
      , Ab
      , Ae
      , Af
      , Ak
      , Am
      , An
      , Ar
      , As
      , Av
      , Ay
      , Az
      , Ba
      , Be
      , Bg
      , Bi
      , Bm
      , Bn
      , Bo
      , Br
      , Bs
      , Ca
      , Ce
      , Ch
      , Co
      , Cr
      , Cs
      , Cu
      , Cv
      , Cy
      , Da
      , De
      , Dv
      , Dz
      , Ee
      , El
      , En
      , Eo
      , Es
      , Et
      , Eu
      , Fa
      , Ff
      , Fi
      , Fj
      , Fo
      , Fr
      , Fy
      , Ga
      , Gd
      , Gl
      , Gn
      , Gu
      , Gv
      , Ha
      , He
      , Hi
      , Ho
      , Hr
      , Ht
      , Hu
      , Hy
      , Hz
      , Ia
      , Id
      , Ie
      , Ig
      , Ii
      , Ik
      , Io
      , Is
      , It
      , Iu
      , Ja
      , Jv
      , Ka
      , Kg
      , Ki
      , Kj
      , Kk
      , Kl
      , Km
      , Kn
      , Ko
      , Kr
      , Ks
      , Ku
      , Kv
      , Kw
      , Ky
      , La
      , Lb
      , Lg
      , Li
      , Ln
      , Lo
      , Lt
      , Lu
      , Lv
      , Mg
      , Mh
      , Mi
      , Mk
      , Ml
      , Mn
      , Mr
      , Ms
      , Mt
      , My
      , Na
      , Nb
      , Nd
      , Ne
      , Ng
      , Nl
      , Nn
      , No
      , Nr
      , Nv
      , Ny
      , Oc
      , Oj
      , Om
      , Or
      , Os
      , Pa
      , Pi
      , Pl
      , Ps
      , Pt
      , Qu
      , Rm
      , Rn
      , Ro
      , Ru
      , Rw
      , Sa
      , Sc
      , Sd
      , Se
      , Sg
      , Si
      , Sk
      , Sl
      , Sm
      , Sn
      , So
      , Sq
      , Sr
      , Ss
      , St
      , Su
      , Sv
      , Sw
      , Ta
      , Te
      , Tg
      , Th
      , Ti
      , Tk
      , Tl
      , Tn
      , To
      , Tr
      , Ts
      , Tt
      , Tw
      , Ty
      , Ug
      , Uk
      , Ur
      , Uz
      , Ve
      , Vi
      , Vo
      , Wa
      , Wo
      , Xh
      , Yi
      , Yo
      , Za
      , Zh
      , Zu
      , Aaa
      , Aab
      , Aac
      , Aad
      , Aae
      , Aaf
      , Aag
      , Aah
      , Aai
      , Aak
      , Aal
      , Aan
      , Aao
      , Aap
      , Aaq
      , Aas
      , Aat
      , Aau
      , Aaw
      , Aax
      , Aaz
      , Aba
      , Abb
      , Abc
      , Abd
      , Abe
      , Abf
      , Abg
      , Abh
      , Abi
      , Abj
      , Abl
      , Abm
      , Abn
      , Abo
      , Abp
      , Abq
      , Abr
      , Abs
      , Abt
      , Abu
      , Abv
      , Abw
      , Abx
      , Aby
      , Abz
      , Aca
      , Acb
      , Acd
      , Ace
      , Acf
      , Ach
      , Aci
      , Ack
      , Acl
      , Acm
      , Acn
      , Acp
      , Acq
      , Acr
      , Acs
      , Act
      , Acu
      , Acv
      , Acw
      , Acx
      , Acy
      , Acz
      , Ada
      , Adb
      , Add
      , Ade
      , Adf
      , Adg
      , Adh
      , Adi
      , Adj
      , Adl
      , Adn
      , Ado
      , Adq
      , Adr
      , Ads
      , Adt
      , Adu
      , Adw
      , Adx
      , Ady
      , Adz
      , Aea
      , Aeb
      , Aec
      , Aed
      , Aee
      , Aek
      , Ael
      , Aem
      , Aen
      , Aeq
      , Aer
      , Aes
      , Aeu
      , Aew
      , Aey
      , Aez
      , Afb
      , Afd
      , Afe
      , Afg
      , Afh
      , Afi
      , Afk
      , Afn
      , Afo
      , Afp
      , Afs
      , Aft
      , Afu
      , Afz
      , Aga
      , Agb
      , Agc
      , Agd
      , Age
      , Agf
      , Agg
      , Agh
      , Agi
      , Agj
      , Agk
      , Agl
      , Agm
      , Agn
      , Ago
      , Agq
      , Agr
      , Ags
      , Agt
      , Agu
      , Agv
      , Agw
      , Agx
      , Agy
      , Agz
      , Aha
      , Ahb
      , Ahg
      , Ahh
      , Ahi
      , Ahk
      , Ahl
      , Ahm
      , Ahn
      , Aho
      , Ahp
      , Ahr
      , Ahs
      , Aht
      , Aia
      , Aib
      , Aic
      , Aid
      , Aie
      , Aif
      , Aig
      , Aih
      , Aii
      , Aij
      , Aik
      , Ail
      , Aim
      , Ain
      , Aio
      , Aip
      , Aiq
      , Air
      , Ait
      , Aiw
      , Aix
      , Aiy
      , Aja
      , Ajg
      , Aji
      , Ajn
      , Ajs
      , Aju
      , Ajw
      , Ajz
      , Akb
      , Akc
      , Akd
      , Ake
      , Akf
      , Akg
      , Akh
      , Aki
      , Akj
      , Akk
      , Akl
      , Akm
      , Ako
      , Akp
      , Akq
      , Akr
      , Aks
      , Akt
      , Aku
      , Akv
      , Akw
      , Akx
      , Aky
      , Akz
      , Ala
      , Alc
      , Ald
      , Ale
      , Alf
      , Alh
      , Ali
      , Alj
      , Alk
      , All
      , Alm
      , Aln
      , Alo
      , Alp
      , Alq
      , Alr
      , Als
      , Alt
      , Alu
      , Alw
      , Alx
      , Aly
      , Alz
      , Ama
      , Amb
      , Amc
      , Ame
      , Amf
      , Amg
      , Ami
      , Amj
      , Amk
      , Aml
      , Amm
      , Amn
      , Amo
      , Amp
      , Amq
      , Amr
      , Ams
      , Amt
      , Amu
      , Amv
      , Amw
      , Amx
      , Amy
      , Amz
      , Ana
      , Anb
      , Anc
      , And
      , Ane
      , Anf
      , Ang
      , Anh
      , Ani
      , Anj
      , Ank
      , Anl
      , Anm
      , Ann
      , Ano
      , Anp
      , Anq
      , Anr
      , Ans
      , Ant
      , Anu
      , Anv
      , Anw
      , Anx
      , Any
      , Anz
      , Aoa
      , Aob
      , Aoc
      , Aod
      , Aoe
      , Aof
      , Aog
      , Aoi
      , Aoj
      , Aok
      , Aol
      , Aom
      , Aon
      , Aor
      , Aos
      , Aot
      , Aou
      , Aox
      , Aoz
      , Apb
      , Apc
      , Apd
      , Ape
      , Apf
      , Apg
      , Aph
      , Api
      , Apj
      , Apk
      , Apl
      , Apm
      , Apn
      , Apo
      , App
      , Apq
      , Apr
      , Aps
      , Apt
      , Apu
      , Apv
      , Apw
      , Apx
      , Apy
      , Apz
      , Aqc
      , Aqd
      , Aqg
      , Aqk
      , Aqm
      , Aqn
      , Aqp
      , Aqr
      , Aqt
      , Aqz
      , Arb
      , Arc
      , Ard
      , Are
      , Arh
      , Ari
      , Arj
      , Ark
      , Arl
      , Arn
      , Aro
      , Arp
      , Arq
      , Arr
      , Ars
      , Aru
      , Arv
      , Arw
      , Arx
      , Ary
      , Arz
      , Asa
      , Asb
      , Asc
      , Ase
      , Asf
      , Asg
      , Ash
      , Asi
      , Asj
      , Ask
      , Asl
      , Asn
      , Aso
      , Asp
      , Asq
      , Asr
      , Ass
      , Ast
      , Asu
      , Asv
      , Asw
      , Asx
      , Asy
      , Asz
      , Ata
      , Atb
      , Atc
      , Atd
      , Ate
      , Atg
      , Ati
      , Atj
      , Atk
      , Atl
      , Atm
      , Atn
      , Ato
      , Atp
      , Atq
      , Atr
      , Ats
      , Att
      , Atu
      , Atv
      , Atw
      , Atx
      , Aty
      , Atz
      , Aua
      , Aub
      , Auc
      , Aud
      , Aug
      , Auh
      , Aui
      , Auj
      , Auk
      , Aul
      , Aum
      , Aun
      , Auo
      , Aup
      , Auq
      , Aur
      , Aut
      , Auu
      , Auw
      , Aux
      , Auy
      , Auz
      , Avb
      , Avd
      , Avi
      , Avk
      , Avl
      , Avm
      , Avn
      , Avo
      , Avs
      , Avt
      , Avu
      , Avv
      , Awa
      , Awb
      , Awc
      , Awe
      , Awg
      , Awh
      , Awi
      , Awk
      , Awm
      , Awn
      , Awo
      , Awr
      , Aws
      , Awt
      , Awu
      , Awv
      , Aww
      , Awx
      , Awy
      , Axb
      , Axe
      , Axg
      , Axk
      , Axl
      , Axm
      , Axx
      , Aya
      , Ayb
      , Ayc
      , Ayd
      , Aye
      , Ayg
      , Ayh
      , Ayi
      , Ayk
      , Ayl
      , Ayn
      , Ayo
      , Ayp
      , Ayq
      , Ayr
      , Ays
      , Ayt
      , Ayu
      , Ayz
      , Aza
      , Azb
      , Azd
      , Azg
      , Azj
      , Azm
      , Azn
      , Azo
      , Azt
      , Azz
      , Baa
      , Bab
      , Bac
      , Bae
      , Baf
      , Bag
      , Bah
      , Baj
      , Bal
      , Ban
      , Bao
      , Bap
      , Bar
      , Bas
      , Bau
      , Bav
      , Baw
      , Bax
      , Bay
      , Bba
      , Bbb
      , Bbc
      , Bbd
      , Bbe
      , Bbf
      , Bbg
      , Bbh
      , Bbi
      , Bbj
      , Bbk
      , Bbl
      , Bbm
      , Bbn
      , Bbo
      , Bbp
      , Bbq
      , Bbr
      , Bbs
      , Bbt
      , Bbu
      , Bbv
      , Bbw
      , Bbx
      , Bby
      , Bca
      , Bcb
      , Bcc
      , Bcd
      , Bce
      , Bcf
      , Bcg
      , Bch
      , Bci
      , Bcj
      , Bck
      , Bcl
      , Bcm
      , Bcn
      , Bco
      , Bcp
      , Bcq
      , Bcr
      , Bcs
      , Bct
      , Bcu
      , Bcv
      , Bcw
      , Bcy
      , Bcz
      , Bda
      , Bdb
      , Bdc
      , Bdd
      , Bde
      , Bdf
      , Bdg
      , Bdh
      , Bdi
      , Bdj
      , Bdk
      , Bdl
      , Bdm
      , Bdn
      , Bdo
      , Bdp
      , Bdq
      , Bdr
      , Bds
      , Bdt
      , Bdu
      , Bdv
      , Bdw
      , Bdx
      , Bdy
      , Bdz
      , Bea
      , Beb
      , Bec
      , Bed
      , Bee
      , Bef
      , Beg
      , Beh
      , Bei
      , Bej
      , Bek
      , Bem
      , Beo
      , Bep
      , Beq
      , Bes
      , Bet
      , Beu
      , Bev
      , Bew
      , Bex
      , Bey
      , Bez
      , Bfa
      , Bfb
      , Bfc
      , Bfd
      , Bfe
      , Bff
      , Bfg
      , Bfh
      , Bfi
      , Bfj
      , Bfk
      , Bfl
      , Bfm
      , Bfn
      , Bfo
      , Bfp
      , Bfq
      , Bfr
      , Bfs
      , Bft
      , Bfu
      , Bfw
      , Bfx
      , Bfy
      , Bfz
      , Bga
      , Bgb
      , Bgc
      , Bgd
      , Bge
      , Bgf
      , Bgg
      , Bgi
      , Bgj
      , Bgk
      , Bgl
      , Bgn
      , Bgo
      , Bgp
      , Bgq
      , Bgr
      , Bgs
      , Bgt
      , Bgu
      , Bgv
      , Bgw
      , Bgx
      , Bgy
      , Bgz
      , Bha
      , Bhb
      , Bhc
      , Bhd
      , Bhe
      , Bhf
      , Bhg
      , Bhh
      , Bhi
      , Bhj
      , Bhl
      , Bhm
      , Bhn
      , Bho
      , Bhp
      , Bhq
      , Bhr
      , Bhs
      , Bht
      , Bhu
      , Bhv
      , Bhw
      , Bhx
      , Bhy
      , Bhz
      , Bia
      , Bib
      , Bid
      , Bie
      , Bif
      , Big
      , Bik
      , Bil
      , Bim
      , Bin
      , Bio
      , Bip
      , Biq
      , Bir
      , Bit
      , Biu
      , Biv
      , Biw
      , Bix
      , Biy
      , Biz
      , Bja
      , Bjb
      , Bjc
      , Bje
      , Bjf
      , Bjg
      , Bjh
      , Bji
      , Bjj
      , Bjk
      , Bjl
      , Bjm
      , Bjn
      , Bjo
      , Bjp
      , Bjr
      , Bjs
      , Bjt
      , Bju
      , Bjv
      , Bjw
      , Bjx
      , Bjy
      , Bjz
      , Bka
      , Bkc
      , Bkd
      , Bkf
      , Bkg
      , Bkh
      , Bki
      , Bkj
      , Bkk
      , Bkl
      , Bkm
      , Bkn
      , Bko
      , Bkp
      , Bkq
      , Bkr
      , Bks
      , Bkt
      , Bku
      , Bkv
      , Bkw
      , Bkx
      , Bky
      , Bkz
      , Bla
      , Blb
      , Blc
      , Bld
      , Ble
      , Blf
      , Blh
      , Bli
      , Blj
      , Blk
      , Bll
      , Blm
      , Bln
      , Blo
      , Blp
      , Blq
      , Blr
      , Bls
      , Blt
      , Blv
      , Blw
      , Blx
      , Bly
      , Blz
      , Bma
      , Bmb
      , Bmc
      , Bmd
      , Bme
      , Bmf
      , Bmg
      , Bmh
      , Bmi
      , Bmj
      , Bmk
      , Bml
      , Bmm
      , Bmn
      , Bmo
      , Bmp
      , Bmq
      , Bmr
      , Bms
      , Bmt
      , Bmu
      , Bmv
      , Bmw
      , Bmx
      , Bmz
      , Bna
      , Bnb
      , Bnc
      , Bnd
      , Bne
      , Bnf
      , Bng
      , Bni
      , Bnj
      , Bnk
      , Bnl
      , Bnm
      , Bnn
      , Bno
      , Bnp
      , Bnq
      , Bnr
      , Bns
      , Bnu
      , Bnv
      , Bnw
      , Bnx
      , Bny
      , Bnz
      , Boa
      , Bob
      , Boe
      , Bof
      , Bog
      , Boh
      , Boi
      , Boj
      , Bok
      , Bol
      , Bom
      , Bon
      , Boo
      , Bop
      , Boq
      , Bor
      , Bot
      , Bou
      , Bov
      , Bow
      , Box
      , Boy
      , Boz
      , Bpa
      , Bpc
      , Bpd
      , Bpe
      , Bpg
      , Bph
      , Bpi
      , Bpj
      , Bpk
      , Bpl
      , Bpm
      , Bpn
      , Bpo
      , Bpp
      , Bpq
      , Bpr
      , Bps
      , Bpt
      , Bpu
      , Bpv
      , Bpw
      , Bpx
      , Bpy
      , Bpz
      , Bqa
      , Bqb
      , Bqc
      , Bqd
      , Bqf
      , Bqg
      , Bqh
      , Bqi
      , Bqj
      , Bqk
      , Bql
      , Bqm
      , Bqn
      , Bqo
      , Bqp
      , Bqq
      , Bqr
      , Bqs
      , Bqt
      , Bqu
      , Bqv
      , Bqw
      , Bqx
      , Bqy
      , Bqz
      , Bra
      , Brb
      , Brc
      , Brd
      , Brf
      , Brg
      , Brh
      , Bri
      , Brj
      , Brk
      , Brl
      , Brm
      , Brn
      , Bro
      , Brp
      , Brq
      , Brr
      , Brs
      , Brt
      , Bru
      , Brv
      , Brw
      , Brx
      , Bry
      , Brz
      , Bsa
      , Bsb
      , Bsc
      , Bse
      , Bsf
      , Bsg
      , Bsh
      , Bsi
      , Bsj
      , Bsk
      , Bsl
      , Bsm
      , Bsn
      , Bso
      , Bsp
      , Bsq
      , Bsr
      , Bss
      , Bst
      , Bsu
      , Bsv
      , Bsw
      , Bsx
      , Bsy
      , Bta
      , Btc
      , Btd
      , Bte
      , Btf
      , Btg
      , Bth
      , Bti
      , Btj
      , Btm
      , Btn
      , Bto
      , Btp
      , Btq
      , Btr
      , Bts
      , Btt
      , Btu
      , Btv
      , Btw
      , Btx
      , Bty
      , Btz
      , Bua
      , Bub
      , Buc
      , Bud
      , Bue
      , Buf
      , Bug
      , Buh
      , Bui
      , Buj
      , Buk
      , Bum
      , Bun
      , Buo
      , Bup
      , Buq
      , Bus
      , But
      , Buu
      , Buv
      , Buw
      , Bux
      , Buy
      , Buz
      , Bva
      , Bvb
      , Bvc
      , Bvd
      , Bve
      , Bvf
      , Bvg
      , Bvh
      , Bvi
      , Bvj
      , Bvk
      , Bvl
      , Bvm
      , Bvn
      , Bvo
      , Bvp
      , Bvq
      , Bvr
      , Bvt
      , Bvu
      , Bvv
      , Bvw
      , Bvx
      , Bvy
      , Bvz
      , Bwa
      , Bwb
      , Bwc
      , Bwd
      , Bwe
      , Bwf
      , Bwg
      , Bwh
      , Bwi
      , Bwj
      , Bwk
      , Bwl
      , Bwm
      , Bwn
      , Bwo
      , Bwp
      , Bwq
      , Bwr
      , Bws
      , Bwt
      , Bwu
      , Bww
      , Bwx
      , Bwy
      , Bwz
      , Bxa
      , Bxb
      , Bxc
      , Bxd
      , Bxe
      , Bxf
      , Bxg
      , Bxh
      , Bxi
      , Bxj
      , Bxk
      , Bxl
      , Bxm
      , Bxn
      , Bxo
      , Bxp
      , Bxq
      , Bxr
      , Bxs
      , Bxu
      , Bxv
      , Bxw
      , Bxz
      , Bya
      , Byb
      , Byc
      , Byd
      , Bye
      , Byf
      , Byg
      , Byh
      , Byi
      , Byj
      , Byk
      , Byl
      , Bym
      , Byn
      , Byo
      , Byp
      , Byq
      , Byr
      , Bys
      , Byt
      , Byv
      , Byw
      , Byx
      , Byz
      , Bza
      , Bzb
      , Bzc
      , Bzd
      , Bze
      , Bzf
      , Bzg
      , Bzh
      , Bzi
      , Bzj
      , Bzk
      , Bzl
      , Bzm
      , Bzn
      , Bzo
      , Bzp
      , Bzq
      , Bzr
      , Bzs
      , Bzt
      , Bzu
      , Bzv
      , Bzw
      , Bzx
      , Bzy
      , Bzz
      , Caa
      , Cab
      , Cac
      , Cad
      , Cae
      , Caf
      , Cag
      , Cah
      , Caj
      , Cak
      , Cal
      , Cam
      , Can
      , Cao
      , Cap
      , Caq
      , Car
      , Cas
      , Cav
      , Caw
      , Cax
      , Cay
      , Caz
      , Cbb
      , Cbc
      , Cbd
      , Cbg
      , Cbi
      , Cbj
      , Cbk
      , Cbl
      , Cbn
      , Cbo
      , Cbq
      , Cbr
      , Cbs
      , Cbt
      , Cbu
      , Cbv
      , Cbw
      , Cby
      , Ccc
      , Ccd
      , Cce
      , Ccg
      , Cch
      , Ccj
      , Ccl
      , Ccm
      , Cco
      , Ccp
      , Ccr
      , Cda
      , Cde
      , Cdf
      , Cdh
      , Cdi
      , Cdj
      , Cdm
      , Cdn
      , Cdo
      , Cdr
      , Cds
      , Cdy
      , Cdz
      , Cea
      , Ceb
      , Ceg
      , Cek
      , Cen
      , Cet
      , Cey
      , Cfa
      , Cfd
      , Cfg
      , Cfm
      , Cga
      , Cgc
      , Cgg
      , Cgk
      , Chb
      , Chc
      , Chd
      , Chf
      , Chg
      , Chh
      , Chj
      , Chk
      , Chl
      , Chm
      , Chn
      , Cho
      , Chp
      , Chq
      , Chr
      , Cht
      , Chw
      , Chx
      , Chy
      , Chz
      , Cia
      , Cib
      , Cic
      , Cid
      , Cie
      , Cih
      , Cik
      , Cim
      , Cin
      , Cip
      , Cir
      , Ciw
      , Ciy
      , Cja
      , Cje
      , Cjh
      , Cji
      , Cjk
      , Cjm
      , Cjn
      , Cjo
      , Cjp
      , Cjs
      , Cjv
      , Cjy
      , Ckb
      , Ckh
      , Ckl
      , Ckm
      , Ckn
      , Cko
      , Ckq
      , Ckr
      , Cks
      , Ckt
      , Cku
      , Ckv
      , Ckx
      , Cky
      , Ckz
      , Cla
      , Clc
      , Cld
      , Cle
      , Clh
      , Cli
      , Clj
      , Clk
      , Cll
      , Clm
      , Clo
      , Cls
      , Clt
      , Clu
      , Clw
      , Cly
      , Cma
      , Cme
      , Cmg
      , Cmi
      , Cml
      , Cmm
      , Cmn
      , Cmo
      , Cmr
      , Cms
      , Cmt
      , Cna
      , Cnb
      , Cnc
      , Cng
      , Cnh
      , Cni
      , Cnk
      , Cnl
      , Cno
      , Cnp
      , Cnq
      , Cnr
      , Cns
      , Cnt
      , Cnu
      , Cnw
      , Cnx
      , Coa
      , Cob
      , Coc
      , Cod
      , Coe
      , Cof
      , Cog
      , Coh
      , Coj
      , Cok
      , Col
      , Com
      , Con
      , Coo
      , Cop
      , Coq
      , Cot
      , Cou
      , Cov
      , Cow
      , Cox
      , Coz
      , Cpa
      , Cpb
      , Cpc
      , Cpg
      , Cpi
      , Cpn
      , Cpo
      , Cps
      , Cpu
      , Cpx
      , Cpy
      , Cqd
      , Cra
      , Crb
      , Crc
      , Crd
      , Crf
      , Crg
      , Crh
      , Cri
      , Crj
      , Crk
      , Crl
      , Crm
      , Crn
      , Cro
      , Crq
      , Crr
      , Crs
      , Crt
      , Crv
      , Crw
      , Crx
      , Cry
      , Crz
      , Csa
      , Csb
      , Csc
      , Csd
      , Cse
      , Csf
      , Csg
      , Csh
      , Csi
      , Csj
      , Csk
      , Csl
      , Csm
      , Csn
      , Cso
      , Csp
      , Csq
      , Csr
      , Css
      , Cst
      , Csv
      , Csw
      , Csx
      , Csy
      , Csz
      , Cta
      , Ctc
      , Ctd
      , Cte
      , Ctg
      , Cth
      , Ctl
      , Ctm
      , Ctn
      , Cto
      , Ctp
      , Cts
      , Ctt
      , Ctu
      , Cty
      , Ctz
      , Cua
      , Cub
      , Cuc
      , Cuh
      , Cui
      , Cuj
      , Cuk
      , Cul
      , Cuo
      , Cup
      , Cuq
      , Cur
      , Cut
      , Cuu
      , Cuv
      , Cuw
      , Cux
      , Cuy
      , Cvg
      , Cvn
      , Cwa
      , Cwb
      , Cwd
      , Cwe
      , Cwg
      , Cwt
      , Cxh
      , Cya
      , Cyb
      , Cyo
      , Czh
      , Czk
      , Czn
      , Czo
      , Czt
      , Daa
      , Dac
      , Dad
      , Dae
      , Dag
      , Dah
      , Dai
      , Daj
      , Dak
      , Dal
      , Dam
      , Dao
      , Daq
      , Dar
      , Das
      , Dau
      , Dav
      , Daw
      , Dax
      , Daz
      , Dba
      , Dbb
      , Dbd
      , Dbe
      , Dbf
      , Dbg
      , Dbi
      , Dbj
      , Dbl
      , Dbm
      , Dbn
      , Dbo
      , Dbp
      , Dbq
      , Dbr
      , Dbt
      , Dbu
      , Dbv
      , Dbw
      , Dby
      , Dcc
      , Dcr
      , Dda
      , Ddd
      , Dde
      , Ddg
      , Ddi
      , Ddj
      , Ddn
      , Ddo
      , Ddr
      , Dds
      , Ddw
      , Dec
      , Ded
      , Dee
      , Def
      , Deg
      , Deh
      , Dei
      , Del
      , Dem
      , Den
      , Dep
      , Deq
      , Der
      , Des
      , Dev
      , Dez
      , Dga
      , Dgb
      , Dgc
      , Dgd
      , Dge
      , Dgg
      , Dgh
      , Dgi
      , Dgk
      , Dgl
      , Dgn
      , Dgo
      , Dgr
      , Dgs
      , Dgt
      , Dgw
      , Dgx
      , Dgz
      , Dhd
      , Dhg
      , Dhi
      , Dhl
      , Dhm
      , Dhn
      , Dho
      , Dhr
      , Dhs
      , Dhu
      , Dhv
      , Dhw
      , Dhx
      , Dia
      , Dib
      , Dic
      , Did
      , Dif
      , Dig
      , Dih
      , Dii
      , Dij
      , Dik
      , Dil
      , Dim
      , Din
      , Dio
      , Dip
      , Diq
      , Dir
      , Dis
      , Diu
      , Diw
      , Dix
      , Diy
      , Diz
      , Dja
      , Djb
      , Djc
      , Djd
      , Dje
      , Djf
      , Dji
      , Djj
      , Djk
      , Djm
      , Djn
      , Djo
      , Djr
      , Dju
      , Djw
      , Dka
      , Dkg
      , Dkk
      , Dkr
      , Dks
      , Dkx
      , Dlg
      , Dlk
      , Dlm
      , Dln
      , Dma
      , Dmb
      , Dmc
      , Dmd
      , Dme
      , Dmf
      , Dmg
      , Dmk
      , Dml
      , Dmm
      , Dmo
      , Dmr
      , Dms
      , Dmu
      , Dmv
      , Dmw
      , Dmx
      , Dmy
      , Dna
      , Dnd
      , Dne
      , Dng
      , Dni
      , Dnj
      , Dnk
      , Dnn
      , Dno
      , Dnr
      , Dnt
      , Dnu
      , Dnv
      , Dnw
      , Dny
      , Doa
      , Dob
      , Doc
      , Doe
      , Dof
      , Doh
      , Doi
      , Dok
      , Dol
      , Don
      , Doo
      , Dop
      , Doq
      , Dor
      , Dos
      , Dot
      , Dov
      , Dow
      , Dox
      , Doy
      , Doz
      , Dpp
      , Drb
      , Drc
      , Drd
      , Dre
      , Drg
      , Dri
      , Drl
      , Drn
      , Dro
      , Drq
      , Drs
      , Drt
      , Dru
      , Dry
      , Dsb
      , Dse
      , Dsh
      , Dsi
      , Dsk
      , Dsl
      , Dsn
      , Dso
      , Dsq
      , Dsz
      , Dta
      , Dtb
      , Dtd
      , Dth
      , Dti
      , Dtk
      , Dtm
      , Dtn
      , Dto
      , Dtp
      , Dtr
      , Dts
      , Dtt
      , Dtu
      , Dty
      , Dua
      , Dub
      , Duc
      , Due
      , Duf
      , Dug
      , Duh
      , Dui
      , Duk
      , Dul
      , Dum
      , Dun
      , Duo
      , Dup
      , Duq
      , Dur
      , Dus
      , Duu
      , Duv
      , Duw
      , Dux
      , Duy
      , Duz
      , Dva
      , Dwa
      , Dwk
      , Dwr
      , Dws
      , Dwu
      , Dww
      , Dwy
      , Dwz
      , Dya
      , Dyb
      , Dyd
      , Dyg
      , Dyi
      , Dyl
      , Dym
      , Dyn
      , Dyo
      , Dyr
      , Dyu
      , Dyy
      , Dza
      , Dzd
      , Dze
      , Dzg
      , Dzl
      , Dzn
      , Eaa
      , Ebc
      , Ebg
      , Ebk
      , Ebo
      , Ebr
      , Ebu
      , Ecr
      , Ecs
      , Ecy
      , Eee
      , Efa
      , Efe
      , Efi
      , Ega
      , Egl
      , Egm
      , Ego
      , Egy
      , Ehs
      , Ehu
      , Eip
      , Eit
      , Eiv
      , Eja
      , Eka
      , Eke
      , Ekg
      , Eki
      , Ekk
      , Ekl
      , Ekm
      , Eko
      , Ekp
      , Ekr
      , Eky
      , Ele
      , Elh
      , Eli
      , Elk
      , Elm
      , Elo
      , Elu
      , Elx
      , Ema
      , Emb
      , Eme
      , Emg
      , Emi
      , Emk
      , Emm
      , Emn
      , Emp
      , Emq
      , Ems
      , Emu
      , Emw
      , Emx
      , Emy
      , Emz
      , Ena
      , Enb
      , Enc
      , End
      , Enf
      , Enh
      , Enl
      , Enm
      , Enn
      , Eno
      , Enq
      , Enr
      , Enu
      , Env
      , Enw
      , Enx
      , Eot
      , Epi
      , Era
      , Erg
      , Erh
      , Eri
      , Erk
      , Ero
      , Err
      , Ers
      , Ert
      , Erw
      , Ese
      , Esg
      , Esh
      , Esi
      , Esk
      , Esl
      , Esm
      , Esn
      , Eso
      , Esq
      , Ess
      , Esu
      , Esy
      , Etb
      , Etc
      , Eth
      , Etn
      , Eto
      , Etr
      , Ets
      , Ett
      , Etu
      , Etx
      , Etz
      , Eud
      , Eve
      , Evh
      , Evn
      , Ewo
      , Ext
      , Eya
      , Eyo
      , Eza
      , Eze
      , Faa
      , Fab
      , Fad
      , Faf
      , Fag
      , Fah
      , Fai
      , Faj
      , Fak
      , Fal
      , Fam
      , Fan
      , Fap
      , Far
      , Fat
      , Fau
      , Fax
      , Fay
      , Faz
      , Fbl
      , Fcs
      , Fer
      , Ffi
      , Ffm
      , Fgr
      , Fia
      , Fie
      , Fif
      , Fil
      , Fip
      , Fir
      , Fit
      , Fiw
      , Fkk
      , Fkv
      , Fla
      , Flh
      , Fli
      , Fll
      , Fln
      , Flr
      , Fly
      , Fmp
      , Fmu
      , Fnb
      , Fng
      , Fni
      , Fod
      , Foi
      , Fom
      , Fon
      , For
      , Fos
      , Fpe
      , Fqs
      , Frc
      , Frd
      , Frk
      , Frm
      , Fro
      , Frp
      , Frq
      , Frr
      , Frs
      , Frt
      , Fse
      , Fsl
      , Fss
      , Fub
      , Fuc
      , Fud
      , Fue
      , Fuf
      , Fuh
      , Fui
      , Fuj
      , Fum
      , Fun
      , Fuq
      , Fur
      , Fut
      , Fuu
      , Fuv
      , Fuy
      , Fvr
      , Fwa
      , Fwe
      , Gaa
      , Gab
      , Gac
      , Gad
      , Gae
      , Gaf
      , Gag
      , Gah
      , Gai
      , Gaj
      , Gak
      , Gal
      , Gam
      , Gan
      , Gao
      , Gap
      , Gaq
      , Gar
      , Gas
      , Gat
      , Gau
      , Gaw
      , Gax
      , Gay
      , Gaz
      , Gba
      , Gbb
      , Gbd
      , Gbe
      , Gbf
      , Gbg
      , Gbh
      , Gbi
      , Gbj
      , Gbk
      , Gbl
      , Gbm
      , Gbn
      , Gbo
      , Gbp
      , Gbq
      , Gbr
      , Gbs
      , Gbu
      , Gbv
      , Gbw
      , Gbx
      , Gby
      , Gbz
      , Gcc
      , Gcd
      , Gce
      , Gcf
      , Gcl
      , Gcn
      , Gcr
      , Gct
      , Gda
      , Gdb
      , Gdc
      , Gdd
      , Gde
      , Gdf
      , Gdg
      , Gdh
      , Gdi
      , Gdj
      , Gdk
      , Gdl
      , Gdm
      , Gdn
      , Gdo
      , Gdq
      , Gdr
      , Gds
      , Gdt
      , Gdu
      , Gdx
      , Gea
      , Geb
      , Gec
      , Ged
      , Gef
      , Geg
      , Geh
      , Gei
      , Gej
      , Gek
      , Gel
      , Geq
      , Ges
      , Gev
      , Gew
      , Gex
      , Gey
      , Gez
      , Gfk
      , Gft
      , Gga
      , Ggb
      , Ggd
      , Gge
      , Ggg
      , Ggk
      , Ggl
      , Ggt
      , Ggu
      , Ggw
      , Gha
      , Ghc
      , Ghe
      , Ghh
      , Ghk
      , Ghl
      , Ghn
      , Gho
      , Ghr
      , Ghs
      , Ght
      , Gia
      , Gib
      , Gic
      , Gid
      , Gie
      , Gig
      , Gih
      , Gii
      , Gil
      , Gim
      , Gin
      , Gip
      , Giq
      , Gir
      , Gis
      , Git
      , Giu
      , Giw
      , Gix
      , Giy
      , Giz
      , Gjk
      , Gjm
      , Gjn
      , Gjr
      , Gju
      , Gka
      , Gkd
      , Gke
      , Gkn
      , Gko
      , Gkp
      , Gku
      , Glb
      , Glc
      , Gld
      , Glh
      , Glj
      , Glk
      , Gll
      , Glo
      , Glr
      , Glu
      , Glw
      , Gly
      , Gma
      , Gmb
      , Gmd
      , Gmg
      , Gmh
      , Gml
      , Gmm
      , Gmn
      , Gmr
      , Gmu
      , Gmv
      , Gmx
      , Gmy
      , Gmz
      , Gna
      , Gnb
      , Gnc
      , Gnd
      , Gne
      , Gng
      , Gnh
      , Gni
      , Gnj
      , Gnk
      , Gnl
      , Gnm
      , Gnn
      , Gno
      , Gnq
      , Gnr
      , Gnt
      , Gnu
      , Gnw
      , Gnz
      , Goa
      , Gob
      , Goc
      , God
      , Goe
      , Gof
      , Gog
      , Goh
      , Goi
      , Goj
      , Gok
      , Gol
      , Gom
      , Gon
      , Goo
      , Gop
      , Goq
      , Gor
      , Gos
      , Got
      , Gou
      , Gov
      , Gow
      , Gox
      , Goy
      , Goz
      , Gpa
      , Gpe
      , Gpn
      , Gqa
      , Gqi
      , Gqn
      , Gqr
      , Gqu
      , Gra
      , Grb
      , Grc
      , Grd
      , Grg
      , Grh
      , Gri
      , Grj
      , Grm
      , Gro
      , Grq
      , Grr
      , Grs
      , Grt
      , Gru
      , Grv
      , Grw
      , Grx
      , Gry
      , Grz
      , Gse
      , Gsg
      , Gsl
      , Gsm
      , Gsn
      , Gso
      , Gsp
      , Gss
      , Gsw
      , Gta
      , Gtu
      , Gua
      , Gub
      , Guc
      , Gud
      , Gue
      , Guf
      , Gug
      , Guh
      , Gui
      , Guk
      , Gul
      , Gum
      , Gun
      , Guo
      , Gup
      , Guq
      , Gur
      , Gus
      , Gut
      , Guu
      , Guw
      , Gux
      , Guz
      , Gva
      , Gvc
      , Gve
      , Gvf
      , Gvj
      , Gvl
      , Gvm
      , Gvn
      , Gvo
      , Gvp
      , Gvr
      , Gvs
      , Gvy
      , Gwa
      , Gwb
      , Gwc
      , Gwd
      , Gwe
      , Gwf
      , Gwg
      , Gwi
      , Gwj
      , Gwm
      , Gwn
      , Gwr
      , Gwt
      , Gwu
      , Gww
      , Gwx
      , Gxx
      , Gya
      , Gyb
      , Gyd
      , Gye
      , Gyf
      , Gyg
      , Gyi
      , Gyl
      , Gym
      , Gyn
      , Gyo
      , Gyr
      , Gyy
      , Gyz
      , Gza
      , Gzi
      , Gzn
      , Haa
      , Hab
      , Hac
      , Had
      , Hae
      , Haf
      , Hag
      , Hah
      , Hai
      , Haj
      , Hak
      , Hal
      , Ham
      , Han
      , Hao
      , Hap
      , Haq
      , Har
      , Has
      , Hav
      , Haw
      , Hax
      , Hay
      , Haz
      , Hba
      , Hbb
      , Hbn
      , Hbo
      , Hbs
      , Hbu
      , Hca
      , Hch
      , Hdn
      , Hds
      , Hdy
      , Hea
      , Hed
      , Heg
      , Heh
      , Hei
      , Hem
      , Hgm
      , Hgw
      , Hhi
      , Hhr
      , Hhy
      , Hia
      , Hib
      , Hid
      , Hif
      , Hig
      , Hih
      , Hii
      , Hij
      , Hik
      , Hil
      , Hio
      , Hir
      , Hit
      , Hiw
      , Hix
      , Hji
      , Hka
      , Hke
      , Hkh
      , Hkk
      , Hkn
      , Hks
      , Hla
      , Hlb
      , Hld
      , Hle
      , Hlt
      , Hlu
      , Hma
      , Hmb
      , Hmc
      , Hmd
      , Hme
      , Hmf
      , Hmg
      , Hmh
      , Hmi
      , Hmj
      , Hmk
      , Hml
      , Hmm
      , Hmn
      , Hmp
      , Hmq
      , Hmr
      , Hms
      , Hmt
      , Hmu
      , Hmv
      , Hmw
      , Hmy
      , Hmz
      , Hna
      , Hnd
      , Hne
      , Hng
      , Hnh
      , Hni
      , Hnj
      , Hnm
      , Hnn
      , Hno
      , Hns
      , Hnu
      , Hoa
      , Hob
      , Hoc
      , Hod
      , Hoe
      , Hoh
      , Hoi
      , Hoj
      , Hol
      , Hom
      , Hoo
      , Hop
      , Hor
      , Hos
      , Hot
      , Hov
      , How
      , Hoy
      , Hoz
      , Hpo
      , Hps
      , Hra
      , Hrc
      , Hre
      , Hrk
      , Hrm
      , Hro
      , Hrp
      , Hrt
      , Hru
      , Hrw
      , Hrx
      , Hrz
      , Hsb
      , Hsh
      , Hsl
      , Hsn
      , Hss
      , Hti
      , Hto
      , Hts
      , Htu
      , Htx
      , Hub
      , Huc
      , Hud
      , Hue
      , Huf
      , Hug
      , Huh
      , Hui
      , Huj
      , Huk
      , Hul
      , Hum
      , Huo
      , Hup
      , Huq
      , Hur
      , Hus
      , Hut
      , Huu
      , Huv
      , Huw
      , Hux
      , Huy
      , Huz
      , Hvc
      , Hve
      , Hvk
      , Hvn
      , Hvv
      , Hwa
      , Hwc
      , Hwo
      , Hya
      , Hyw
      , Iai
      , Ian
      , Iar
      , Iba
      , Ibb
      , Ibd
      , Ibe
      , Ibg
      , Ibh
      , Ibl
      , Ibm
      , Ibn
      , Ibr
      , Ibu
      , Iby
      , Ica
      , Ich
      , Icl
      , Icr
      , Ida
      , Idb
      , Idc
      , Idd
      , Ide
      , Idi
      , Idr
      , Ids
      , Idt
      , Idu
      , Ifa
      , Ifb
      , Ife
      , Iff
      , Ifk
      , Ifm
      , Ifu
      , Ify
      , Igb
      , Ige
      , Igg
      , Igl
      , Igm
      , Ign
      , Igo
      , Igs
      , Igw
      , Ihb
      , Ihi
      , Ihp
      , Ihw
      , Iin
      , Ijc
      , Ije
      , Ijj
      , Ijn
      , Ijs
      , Ike
      , Ikh
      , Iki
      , Ikk
      , Ikl
      , Iko
      , Ikp
      , Ikr
      , Iks
      , Ikt
      , Ikv
      , Ikw
      , Ikx
      , Ikz
      , Ila
      , Ilb
      , Ilg
      , Ili
      , Ilk
      , Ilm
      , Ilo
      , Ilp
      , Ils
      , Ilu
      , Ilv
      , Ima
      , Imi
      , Iml
      , Imn
      , Imo
      , Imr
      , Ims
      , Imt
      , Imy
      , Inb
      , Ing
      , Inh
      , Inj
      , Inl
      , Inm
      , Inn
      , Ino
      , Inp
      , Ins
      , Int
      , Inz
      , Ior
      , Iou
      , Iow
      , Ipi
      , Ipo
      , Iqu
      , Iqw
      , Ire
      , Irh
      , Iri
      , Irk
      , Irn
      , Irr
      , Iru
      , Irx
      , Iry
      , Isa
      , Isc
      , Isd
      , Ise
      , Isg
      , Ish
      , Isi
      , Isk
      , Ism
      , Isn
      , Iso
      , Isr
      , Ist
      , Isu
      , Isv
      , Itb
      , Itd
      , Ite
      , Iti
      , Itk
      , Itl
      , Itm
      , Ito
      , Itr
      , Its
      , Itt
      , Itv
      , Itw
      , Itx
      , Ity
      , Itz
      , Ium
      , Ivb
      , Ivv
      , Iwk
      , Iwm
      , Iwo
      , Iws
      , Ixc
      , Ixl
      , Iya
      , Iyo
      , Iyx
      , Izh
      , Izm
      , Izr
      , Izz
      , Jaa
      , Jab
      , Jac
      , Jad
      , Jae
      , Jaf
      , Jah
      , Jaj
      , Jak
      , Jal
      , Jam
      , Jan
      , Jao
      , Jaq
      , Jas
      , Jat
      , Jau
      , Jax
      , Jay
      , Jaz
      , Jbe
      , Jbi
      , Jbj
      , Jbk
      , Jbm
      , Jbn
      , Jbo
      , Jbr
      , Jbt
      , Jbu
      , Jbw
      , Jcs
      , Jct
      , Jda
      , Jdg
      , Jdt
      , Jeb
      , Jee
      , Jeh
      , Jei
      , Jek
      , Jel
      , Jen
      , Jer
      , Jet
      , Jeu
      , Jgb
      , Jge
      , Jgk
      , Jgo
      , Jhi
      , Jhs
      , Jia
      , Jib
      , Jic
      , Jid
      , Jie
      , Jig
      , Jih
      , Jii
      , Jil
      , Jim
      , Jio
      , Jiq
      , Jit
      , Jiu
      , Jiv
      , Jiy
      , Jje
      , Jjr
      , Jka
      , Jkm
      , Jko
      , Jkp
      , Jkr
      , Jks
      , Jku
      , Jle
      , Jls
      , Jma
      , Jmb
      , Jmc
      , Jmd
      , Jmi
      , Jml
      , Jmn
      , Jmr
      , Jms
      , Jmw
      , Jmx
      , Jna
      , Jnd
      , Jng
      , Jni
      , Jnj
      , Jnl
      , Jns
      , Job
      , Jod
      , Jog
      , Jor
      , Jos
      , Jow
      , Jpa
      , Jpr
      , Jqr
      , Jra
      , Jrb
      , Jrr
      , Jrt
      , Jru
      , Jsl
      , Jua
      , Jub
      , Juc
      , Jud
      , Juh
      , Jui
      , Juk
      , Jul
      , Jum
      , Jun
      , Juo
      , Jup
      , Jur
      , Jus
      , Jut
      , Juu
      , Juw
      , Juy
      , Jvd
      , Jvn
      , Jwi
      , Jya
      , Jye
      , Jyy
      , Kaa
      , Kab
      , Kac
      , Kad
      , Kae
      , Kaf
      , Kag
      , Kah
      , Kai
      , Kaj
      , Kak
      , Kam
      , Kao
      , Kap
      , Kaq
      , Kav
      , Kaw
      , Kax
      , Kay
      , Kba
      , Kbb
      , Kbc
      , Kbd
      , Kbe
      , Kbg
      , Kbh
      , Kbi
      , Kbj
      , Kbk
      , Kbl
      , Kbm
      , Kbn
      , Kbo
      , Kbp
      , Kbq
      , Kbr
      , Kbs
      , Kbt
      , Kbu
      , Kbv
      , Kbw
      , Kbx
      , Kby
      , Kbz
      , Kca
      , Kcb
      , Kcc
      , Kcd
      , Kce
      , Kcf
      , Kcg
      , Kch
      , Kci
      , Kcj
      , Kck
      , Kcl
      , Kcm
      , Kcn
      , Kco
      , Kcp
      , Kcq
      , Kcr
      , Kcs
      , Kct
      , Kcu
      , Kcv
      , Kcw
      , Kcx
      , Kcy
      , Kcz
      , Kda
      , Kdc
      , Kdd
      , Kde
      , Kdf
      , Kdg
      , Kdh
      , Kdi
      , Kdj
      , Kdk
      , Kdl
      , Kdm
      , Kdn
      , Kdp
      , Kdq
      , Kdr
      , Kdt
      , Kdu
      , Kdw
      , Kdx
      , Kdy
      , Kdz
      , Kea
      , Keb
      , Kec
      , Ked
      , Kee
      , Kef
      , Keg
      , Keh
      , Kei
      , Kej
      , Kek
      , Kel
      , Kem
      , Ken
      , Keo
      , Kep
      , Keq
      , Ker
      , Kes
      , Ket
      , Keu
      , Kev
      , Kew
      , Kex
      , Key
      , Kez
      , Kfa
      , Kfb
      , Kfc
      , Kfd
      , Kfe
      , Kff
      , Kfg
      , Kfh
      , Kfi
      , Kfj
      , Kfk
      , Kfl
      , Kfm
      , Kfn
      , Kfo
      , Kfp
      , Kfq
      , Kfr
      , Kfs
      , Kft
      , Kfu
      , Kfv
      , Kfw
      , Kfx
      , Kfy
      , Kfz
      , Kga
      , Kgb
      , Kge
      , Kgf
      , Kgg
      , Kgi
      , Kgj
      , Kgk
      , Kgl
      , Kgn
      , Kgo
      , Kgp
      , Kgq
      , Kgr
      , Kgs
      , Kgt
      , Kgu
      , Kgv
      , Kgw
      , Kgx
      , Kgy
      , Kha
      , Khb
      , Khc
      , Khd
      , Khe
      , Khf
      , Khg
      , Khh
      , Khj
      , Khk
      , Khl
      , Khn
      , Kho
      , Khp
      , Khq
      , Khr
      , Khs
      , Kht
      , Khu
      , Khv
      , Khw
      , Khx
      , Khy
      , Khz
      , Kia
      , Kib
      , Kic
      , Kid
      , Kie
      , Kif
      , Kig
      , Kih
      , Kii
      , Kij
      , Kil
      , Kim
      , Kio
      , Kip
      , Kiq
      , Kis
      , Kit
      , Kiu
      , Kiv
      , Kiw
      , Kix
      , Kiy
      , Kiz
      , Kja
      , Kjb
      , Kjc
      , Kjd
      , Kje
      , Kjg
      , Kjh
      , Kji
      , Kjj
      , Kjk
      , Kjl
      , Kjm
      , Kjn
      , Kjo
      , Kjp
      , Kjq
      , Kjr
      , Kjs
      , Kjt
      , Kju
      , Kjv
      , Kjx
      , Kjy
      , Kjz
      , Kka
      , Kkb
      , Kkc
      , Kkd
      , Kke
      , Kkf
      , Kkg
      , Kkh
      , Kki
      , Kkj
      , Kkk
      , Kkl
      , Kkm
      , Kkn
      , Kko
      , Kkp
      , Kkq
      , Kkr
      , Kks
      , Kkt
      , Kku
      , Kkv
      , Kkw
      , Kkx
      , Kky
      , Kkz
      , Kla
      , Klb
      , Klc
      , Kld
      , Kle
      , Klf
      , Klg
      , Klh
      , Kli
      , Klj
      , Klk
      , Kll
      , Klm
      , Kln
      , Klo
      , Klp
      , Klq
      , Klr
      , Kls
      , Klt
      , Klu
      , Klv
      , Klw
      , Klx
      , Kly
      , Klz
      , Kma
      , Kmb
      , Kmc
      , Kmd
      , Kme
      , Kmf
      , Kmg
      , Kmh
      , Kmi
      , Kmj
      , Kmk
      , Kml
      , Kmm
      , Kmn
      , Kmo
      , Kmp
      , Kmq
      , Kmr
      , Kms
      , Kmt
      , Kmu
      , Kmv
      , Kmw
      , Kmx
      , Kmy
      , Kmz
      , Kna
      , Knb
      , Knc
      , Knd
      , Kne
      , Knf
      , Kng
      , Kni
      , Knj
      , Knk
      , Knl
      , Knm
      , Knn
      , Kno
      , Knp
      , Knq
      , Knr
      , Kns
      , Knt
      , Knu
      , Knv
      , Knw
      , Knx
      , Kny
      , Knz
      , Koa
      , Koc
      , Kod
      , Koe
      , Kof
      , Kog
      , Koh
      , Koi
      , Kok
      , Kol
      , Koo
      , Kop
      , Koq
      , Kos
      , Kot
      , Kou
      , Kov
      , Kow
      , Koy
      , Koz
      , Kpa
      , Kpb
      , Kpc
      , Kpd
      , Kpe
      , Kpf
      , Kpg
      , Kph
      , Kpi
      , Kpj
      , Kpk
      , Kpl
      , Kpm
      , Kpn
      , Kpo
      , Kpq
      , Kpr
      , Kps
      , Kpt
      , Kpu
      , Kpv
      , Kpw
      , Kpx
      , Kpy
      , Kpz
      , Kqa
      , Kqb
      , Kqc
      , Kqd
      , Kqe
      , Kqf
      , Kqg
      , Kqh
      , Kqi
      , Kqj
      , Kqk
      , Kql
      , Kqm
      , Kqn
      , Kqo
      , Kqp
      , Kqq
      , Kqr
      , Kqs
      , Kqt
      , Kqu
      , Kqv
      , Kqw
      , Kqx
      , Kqy
      , Kqz
      , Kra
      , Krb
      , Krc
      , Krd
      , Kre
      , Krf
      , Krh
      , Kri
      , Krj
      , Krk
      , Krl
      , Krn
      , Krp
      , Krr
      , Krs
      , Krt
      , Kru
      , Krv
      , Krw
      , Krx
      , Kry
      , Krz
      , Ksb
      , Ksc
      , Ksd
      , Kse
      , Ksf
      , Ksg
      , Ksh
      , Ksi
      , Ksj
      , Ksk
      , Ksl
      , Ksm
      , Ksn
      , Kso
      , Ksp
      , Ksq
      , Ksr
      , Kss
      , Kst
      , Ksu
      , Ksv
      , Ksw
      , Ksx
      , Ksy
      , Ksz
      , Kta
      , Ktb
      , Ktc
      , Ktd
      , Kte
      , Ktf
      , Ktg
      , Kth
      , Kti
      , Ktj
      , Ktk
      , Ktl
      , Ktm
      , Ktn
      , Kto
      , Ktp
      , Ktq
      , Kts
      , Ktt
      , Ktu
      , Ktv
      , Ktw
      , Ktx
      , Kty
      , Ktz
      , Kub
      , Kuc
      , Kud
      , Kue
      , Kuf
      , Kug
      , Kuh
      , Kui
      , Kuj
      , Kuk
      , Kul
      , Kum
      , Kun
      , Kuo
      , Kup
      , Kuq
      , Kus
      , Kut
      , Kuu
      , Kuv
      , Kuw
      , Kux
      , Kuy
      , Kuz
      , Kva
      , Kvb
      , Kvc
      , Kvd
      , Kve
      , Kvf
      , Kvg
      , Kvh
      , Kvi
      , Kvj
      , Kvk
      , Kvl
      , Kvm
      , Kvn
      , Kvo
      , Kvp
      , Kvq
      , Kvr
      , Kvt
      , Kvu
      , Kvv
      , Kvw
      , Kvx
      , Kvy
      , Kvz
      , Kwa
      , Kwb
      , Kwc
      , Kwd
      , Kwe
      , Kwf
      , Kwg
      , Kwh
      , Kwi
      , Kwj
      , Kwk
      , Kwl
      , Kwm
      , Kwn
      , Kwo
      , Kwp
      , Kwr
      , Kws
      , Kwt
      , Kwu
      , Kwv
      , Kww
      , Kwx
      , Kwy
      , Kwz
      , Kxa
      , Kxb
      , Kxc
      , Kxd
      , Kxf
      , Kxh
      , Kxi
      , Kxj
      , Kxk
      , Kxm
      , Kxn
      , Kxo
      , Kxp
      , Kxq
      , Kxr
      , Kxs
      , Kxt
      , Kxv
      , Kxw
      , Kxx
      , Kxy
      , Kxz
      , Kya
      , Kyb
      , Kyc
      , Kyd
      , Kye
      , Kyf
      , Kyg
      , Kyh
      , Kyi
      , Kyj
      , Kyk
      , Kyl
      , Kym
      , Kyn
      , Kyo
      , Kyp
      , Kyq
      , Kyr
      , Kys
      , Kyt
      , Kyu
      , Kyv
      , Kyw
      , Kyx
      , Kyy
      , Kyz
      , Kza
      , Kzb
      , Kzc
      , Kzd
      , Kze
      , Kzf
      , Kzg
      , Kzi
      , Kzk
      , Kzl
      , Kzm
      , Kzn
      , Kzo
      , Kzp
      , Kzq
      , Kzr
      , Kzs
      , Kzu
      , Kzv
      , Kzw
      , Kzx
      , Kzy
      , Kzz
      , Laa
      , Lab
      , Lac
      , Lad
      , Lae
      , Laf
      , Lag
      , Lah
      , Lai
      , Laj
      , Lal
      , Lam
      , Lan
      , Lap
      , Laq
      , Lar
      , Las
      , Lau
      , Law
      , Lax
      , Lay
      , Laz
      , Lbb
      , Lbc
      , Lbe
      , Lbf
      , Lbg
      , Lbi
      , Lbj
      , Lbk
      , Lbl
      , Lbm
      , Lbn
      , Lbo
      , Lbq
      , Lbr
      , Lbs
      , Lbt
      , Lbu
      , Lbv
      , Lbw
      , Lbx
      , Lby
      , Lbz
      , Lcc
      , Lcd
      , Lce
      , Lcf
      , Lch
      , Lcl
      , Lcm
      , Lcp
      , Lcq
      , Lcs
      , Lda
      , Ldb
      , Ldd
      , Ldg
      , Ldh
      , Ldi
      , Ldj
      , Ldk
      , Ldl
      , Ldm
      , Ldn
      , Ldo
      , Ldp
      , Ldq
      , Lea
      , Leb
      , Lec
      , Led
      , Lee
      , Lef
      , Leh
      , Lei
      , Lej
      , Lek
      , Lel
      , Lem
      , Len
      , Leo
      , Lep
      , Leq
      , Ler
      , Les
      , Let
      , Leu
      , Lev
      , Lew
      , Lex
      , Ley
      , Lez
      , Lfa
      , Lfb
      , Lfn
      , Lga
      , Lgb
      , Lgg
      , Lgh
      , Lgi
      , Lgk
      , Lgl
      , Lgm
      , Lgn
      , Lgo
      , Lgq
      , Lgr
      , Lgs
      , Lgt
      , Lgu
      , Lgz
      , Lha
      , Lhh
      , Lhi
      , Lhl
      , Lhm
      , Lhn
      , Lhp
      , Lhs
      , Lht
      , Lhu
      , Lia
      , Lib
      , Lic
      , Lid
      , Lie
      , Lif
      , Lig
      , Lih
      , Lij
      , Lik
      , Lil
      , Lio
      , Lip
      , Liq
      , Lir
      , Lis
      , Liu
      , Liv
      , Liw
      , Lix
      , Liy
      , Liz
      , Lja
      , Lje
      , Lji
      , Ljl
      , Ljp
      , Ljw
      , Ljx
      , Lka
      , Lkb
      , Lkc
      , Lkd
      , Lke
      , Lkh
      , Lki
      , Lkj
      , Lkl
      , Lkm
      , Lkn
      , Lko
      , Lkr
      , Lks
      , Lkt
      , Lku
      , Lky
      , Lla
      , Llb
      , Llc
      , Lld
      , Lle
      , Llf
      , Llg
      , Llh
      , Lli
      , Llj
      , Llk
      , Lll
      , Llm
      , Lln
      , Llp
      , Llq
      , Lls
      , Llu
      , Llx
      , Lma
      , Lmb
      , Lmc
      , Lmd
      , Lme
      , Lmf
      , Lmg
      , Lmh
      , Lmi
      , Lmj
      , Lmk
      , Lml
      , Lmn
      , Lmo
      , Lmp
      , Lmq
      , Lmr
      , Lmu
      , Lmv
      , Lmw
      , Lmx
      , Lmy
      , Lna
      , Lnb
      , Lnd
      , Lng
      , Lnh
      , Lni
      , Lnj
      , Lnl
      , Lnm
      , Lnn
      , Lns
      , Lnu
      , Lnw
      , Lnz
      , Loa
      , Lob
      , Loc
      , Loe
      , Lof
      , Log
      , Loh
      , Loi
      , Loj
      , Lok
      , Lol
      , Lom
      , Lon
      , Loo
      , Lop
      , Loq
      , Lor
      , Los
      , Lot
      , Lou
      , Lov
      , Low
      , Lox
      , Loy
      , Loz
      , Lpa
      , Lpe
      , Lpn
      , Lpo
      , Lpx
      , Lqr
      , Lra
      , Lrc
      , Lre
      , Lrg
      , Lri
      , Lrk
      , Lrl
      , Lrm
      , Lrn
      , Lro
      , Lrr
      , Lrt
      , Lrv
      , Lrz
      , Lsa
      , Lsb
      , Lsc
      , Lsd
      , Lse
      , Lsh
      , Lsi
      , Lsl
      , Lsm
      , Lsn
      , Lso
      , Lsp
      , Lsr
      , Lss
      , Lst
      , Lsv
      , Lsw
      , Lsy
      , Ltc
      , Ltg
      , Lth
      , Lti
      , Ltn
      , Lto
      , Lts
      , Ltu
      , Lua
      , Luc
      , Lud
      , Lue
      , Luf
      , Luh
      , Lui
      , Luj
      , Luk
      , Lul
      , Lum
      , Lun
      , Luo
      , Lup
      , Luq
      , Lur
      , Lus
      , Lut
      , Luu
      , Luv
      , Luw
      , Luy
      , Luz
      , Lva
      , Lvi
      , Lvk
      , Lvl
      , Lvs
      , Lvu
      , Lwa
      , Lwe
      , Lwg
      , Lwh
      , Lwl
      , Lwm
      , Lwo
      , Lws
      , Lwt
      , Lwu
      , Lww
      , Lxm
      , Lya
      , Lyg
      , Lyn
      , Lzh
      , Lzl
      , Lzn
      , Lzz
      , Maa
      , Mab
      , Mad
      , Mae
      , Maf
      , Mag
      , Mai
      , Maj
      , Mak
      , Mam
      , Man
      , Maq
      , Mas
      , Mat
      , Mau
      , Mav
      , Maw
      , Max
      , Maz
      , Mba
      , Mbb
      , Mbc
      , Mbd
      , Mbe
      , Mbf
      , Mbh
      , Mbi
      , Mbj
      , Mbk
      , Mbl
      , Mbm
      , Mbn
      , Mbo
      , Mbp
      , Mbq
      , Mbr
      , Mbs
      , Mbt
      , Mbu
      , Mbv
      , Mbw
      , Mbx
      , Mby
      , Mbz
      , Mca
      , Mcb
      , Mcc
      , Mcd
      , Mce
      , Mcf
      , Mcg
      , Mch
      , Mci
      , Mcj
      , Mck
      , Mcl
      , Mcm
      , Mcn
      , Mco
      , Mcp
      , Mcq
      , Mcr
      , Mcs
      , Mct
      , Mcu
      , Mcv
      , Mcw
      , Mcx
      , Mcy
      , Mcz
      , Mda
      , Mdb
      , Mdc
      , Mdd
      , Mde
      , Mdf
      , Mdg
      , Mdh
      , Mdi
      , Mdj
      , Mdk
      , Mdl
      , Mdm
      , Mdn
      , Mdp
      , Mdq
      , Mdr
      , Mds
      , Mdt
      , Mdu
      , Mdv
      , Mdw
      , Mdx
      , Mdy
      , Mdz
      , Mea
      , Meb
      , Mec
      , Med
      , Mee
      , Mef
      , Meh
      , Mei
      , Mej
      , Mek
      , Mel
      , Mem
      , Men
      , Meo
      , Mep
      , Meq
      , Mer
      , Mes
      , Met
      , Meu
      , Mev
      , Mew
      , Mey
      , Mez
      , Mfa
      , Mfb
      , Mfc
      , Mfd
      , Mfe
      , Mff
      , Mfg
      , Mfh
      , Mfi
      , Mfj
      , Mfk
      , Mfl
      , Mfm
      , Mfn
      , Mfo
      , Mfp
      , Mfq
      , Mfr
      , Mfs
      , Mft
      , Mfu
      , Mfv
      , Mfw
      , Mfx
      , Mfy
      , Mfz
      , Mga
      , Mgb
      , Mgc
      , Mgd
      , Mge
      , Mgf
      , Mgg
      , Mgh
      , Mgi
      , Mgj
      , Mgk
      , Mgl
      , Mgm
      , Mgn
      , Mgo
      , Mgp
      , Mgq
      , Mgr
      , Mgs
      , Mgt
      , Mgu
      , Mgv
      , Mgw
      , Mgy
      , Mgz
      , Mha
      , Mhb
      , Mhc
      , Mhd
      , Mhe
      , Mhf
      , Mhg
      , Mhi
      , Mhj
      , Mhk
      , Mhl
      , Mhm
      , Mhn
      , Mho
      , Mhp
      , Mhq
      , Mhr
      , Mhs
      , Mht
      , Mhu
      , Mhw
      , Mhx
      , Mhy
      , Mhz
      , Mia
      , Mib
      , Mic
      , Mid
      , Mie
      , Mif
      , Mig
      , Mih
      , Mii
      , Mij
      , Mik
      , Mil
      , Mim
      , Min
      , Mio
      , Mip
      , Miq
      , Mir
      , Mis
      , Mit
      , Miu
      , Miw
      , Mix
      , Miy
      , Miz
      , Mjb
      , Mjc
      , Mjd
      , Mje
      , Mjg
      , Mjh
      , Mji
      , Mjj
      , Mjk
      , Mjl
      , Mjm
      , Mjn
      , Mjo
      , Mjp
      , Mjq
      , Mjr
      , Mjs
      , Mjt
      , Mju
      , Mjv
      , Mjw
      , Mjx
      , Mjy
      , Mjz
      , Mka
      , Mkb
      , Mkc
      , Mke
      , Mkf
      , Mkg
      , Mki
      , Mkj
      , Mkk
      , Mkl
      , Mkm
      , Mkn
      , Mko
      , Mkp
      , Mkq
      , Mkr
      , Mks
      , Mkt
      , Mku
      , Mkv
      , Mkw
      , Mkx
      , Mky
      , Mkz
      , Mla
      , Mlb
      , Mlc
      , Mle
      , Mlf
      , Mlh
      , Mli
      , Mlj
      , Mlk
      , Mll
      , Mlm
      , Mln
      , Mlo
      , Mlp
      , Mlq
      , Mlr
      , Mls
      , Mlu
      , Mlv
      , Mlw
      , Mlx
      , Mlz
      , Mma
      , Mmb
      , Mmc
      , Mmd
      , Mme
      , Mmf
      , Mmg
      , Mmh
      , Mmi
      , Mmj
      , Mmk
      , Mml
      , Mmm
      , Mmn
      , Mmo
      , Mmp
      , Mmq
      , Mmr
      , Mmt
      , Mmu
      , Mmv
      , Mmw
      , Mmx
      , Mmy
      , Mmz
      , Mna
      , Mnb
      , Mnc
      , Mnd
      , Mne
      , Mnf
      , Mng
      , Mnh
      , Mni
      , Mnj
      , Mnk
      , Mnl
      , Mnm
      , Mnn
      , Mnp
      , Mnq
      , Mnr
      , Mns
      , Mnu
      , Mnv
      , Mnw
      , Mnx
      , Mny
      , Mnz
      , Moa
      , Moc
      , Mod
      , Moe
      , Mog
      , Moh
      , Moi
      , Moj
      , Mok
      , Mom
      , Moo
      , Mop
      , Moq
      , Mor
      , Mos
      , Mot
      , Mou
      , Mov
      , Mow
      , Mox
      , Moy
      , Moz
      , Mpa
      , Mpb
      , Mpc
      , Mpd
      , Mpe
      , Mpg
      , Mph
      , Mpi
      , Mpj
      , Mpk
      , Mpl
      , Mpm
      , Mpn
      , Mpo
      , Mpp
      , Mpq
      , Mpr
      , Mps
      , Mpt
      , Mpu
      , Mpv
      , Mpw
      , Mpx
      , Mpy
      , Mpz
      , Mqa
      , Mqb
      , Mqc
      , Mqe
      , Mqf
      , Mqg
      , Mqh
      , Mqi
      , Mqj
      , Mqk
      , Mql
      , Mqm
      , Mqn
      , Mqo
      , Mqp
      , Mqq
      , Mqr
      , Mqs
      , Mqt
      , Mqu
      , Mqv
      , Mqw
      , Mqx
      , Mqy
      , Mqz
      , Mra
      , Mrb
      , Mrc
      , Mrd
      , Mre
      , Mrf
      , Mrg
      , Mrh
      , Mrj
      , Mrk
      , Mrl
      , Mrm
      , Mrn
      , Mro
      , Mrp
      , Mrq
      , Mrr
      , Mrs
      , Mrt
      , Mru
      , Mrv
      , Mrw
      , Mrx
      , Mry
      , Mrz
      , Msb
      , Msc
      , Msd
      , Mse
      , Msf
      , Msg
      , Msh
      , Msi
      , Msj
      , Msk
      , Msl
      , Msm
      , Msn
      , Mso
      , Msp
      , Msq
      , Msr
      , Mss
      , Msu
      , Msv
      , Msw
      , Msx
      , Msy
      , Msz
      , Mta
      , Mtb
      , Mtc
      , Mtd
      , Mte
      , Mtf
      , Mtg
      , Mth
      , Mti
      , Mtj
      , Mtk
      , Mtl
      , Mtm
      , Mtn
      , Mto
      , Mtp
      , Mtq
      , Mtr
      , Mts
      , Mtt
      , Mtu
      , Mtv
      , Mtw
      , Mtx
      , Mty
      , Mua
      , Mub
      , Muc
      , Mud
      , Mue
      , Mug
      , Muh
      , Mui
      , Muj
      , Muk
      , Mul
      , Mum
      , Muo
      , Mup
      , Muq
      , Mur
      , Mus
      , Mut
      , Muu
      , Muv
      , Mux
      , Muy
      , Muz
      , Mva
      , Mvb
      , Mvd
      , Mve
      , Mvf
      , Mvg
      , Mvh
      , Mvi
      , Mvk
      , Mvl
      , Mvn
      , Mvo
      , Mvp
      , Mvq
      , Mvr
      , Mvs
      , Mvt
      , Mvu
      , Mvv
      , Mvw
      , Mvx
      , Mvy
      , Mvz
      , Mwa
      , Mwb
      , Mwc
      , Mwe
      , Mwf
      , Mwg
      , Mwh
      , Mwi
      , Mwk
      , Mwl
      , Mwm
      , Mwn
      , Mwo
      , Mwp
      , Mwq
      , Mwr
      , Mws
      , Mwt
      , Mwu
      , Mwv
      , Mww
      , Mwz
      , Mxa
      , Mxb
      , Mxc
      , Mxd
      , Mxe
      , Mxf
      , Mxg
      , Mxh
      , Mxi
      , Mxj
      , Mxk
      , Mxl
      , Mxm
      , Mxn
      , Mxo
      , Mxp
      , Mxq
      , Mxr
      , Mxs
      , Mxt
      , Mxu
      , Mxv
      , Mxw
      , Mxx
      , Mxy
      , Mxz
      , Myb
      , Myc
      , Mye
      , Myf
      , Myg
      , Myh
      , Myj
      , Myk
      , Myl
      , Mym
      , Myo
      , Myp
      , Myr
      , Mys
      , Myu
      , Myv
      , Myw
      , Myx
      , Myy
      , Myz
      , Mza
      , Mzb
      , Mzc
      , Mzd
      , Mze
      , Mzg
      , Mzh
      , Mzi
      , Mzj
      , Mzk
      , Mzl
      , Mzm
      , Mzn
      , Mzo
      , Mzp
      , Mzq
      , Mzr
      , Mzs
      , Mzt
      , Mzu
      , Mzv
      , Mzw
      , Mzx
      , Mzy
      , Mzz
      , Naa
      , Nab
      , Nac
      , Nae
      , Naf
      , Nag
      , Naj
      , Nak
      , Nal
      , Nam
      , Nan
      , Nao
      , Nap
      , Naq
      , Nar
      , Nas
      , Nat
      , Naw
      , Nax
      , Nay
      , Naz
      , Nba
      , Nbb
      , Nbc
      , Nbd
      , Nbe
      , Nbg
      , Nbh
      , Nbi
      , Nbj
      , Nbk
      , Nbm
      , Nbn
      , Nbo
      , Nbp
      , Nbq
      , Nbr
      , Nbs
      , Nbt
      , Nbu
      , Nbv
      , Nbw
      , Nby
      , Nca
      , Ncb
      , Ncc
      , Ncd
      , Nce
      , Ncf
      , Ncg
      , Nch
      , Nci
      , Ncj
      , Nck
      , Ncl
      , Ncm
      , Ncn
      , Nco
      , Ncq
      , Ncr
      , Ncs
      , Nct
      , Ncu
      , Ncx
      , Ncz
      , Nda
      , Ndb
      , Ndc
      , Ndd
      , Ndf
      , Ndg
      , Ndh
      , Ndi
      , Ndj
      , Ndk
      , Ndl
      , Ndm
      , Ndn
      , Ndp
      , Ndq
      , Ndr
      , Nds
      , Ndt
      , Ndu
      , Ndv
      , Ndw
      , Ndx
      , Ndy
      , Ndz
      , Nea
      , Neb
      , Nec
      , Ned
      , Nee
      , Nef
      , Neg
      , Neh
      , Nei
      , Nej
      , Nek
      , Nem
      , Nen
      , Neo
      , Neq
      , Ner
      , Nes
      , Net
      , Neu
      , Nev
      , New
      , Nex
      , Ney
      , Nez
      , Nfa
      , Nfd
      , Nfl
      , Nfr
      , Nfu
      , Nga
      , Ngb
      , Ngc
      , Ngd
      , Nge
      , Ngg
      , Ngh
      , Ngi
      , Ngj
      , Ngk
      , Ngl
      , Ngm
      , Ngn
      , Ngp
      , Ngq
      , Ngr
      , Ngs
      , Ngt
      , Ngu
      , Ngv
      , Ngw
      , Ngx
      , Ngy
      , Ngz
      , Nha
      , Nhb
      , Nhc
      , Nhd
      , Nhe
      , Nhf
      , Nhg
      , Nhh
      , Nhi
      , Nhk
      , Nhm
      , Nhn
      , Nho
      , Nhp
      , Nhq
      , Nhr
      , Nht
      , Nhu
      , Nhv
      , Nhw
      , Nhx
      , Nhy
      , Nhz
      , Nia
      , Nib
      , Nid
      , Nie
      , Nif
      , Nig
      , Nih
      , Nii
      , Nij
      , Nik
      , Nil
      , Nim
      , Nin
      , Nio
      , Niq
      , Nir
      , Nis
      , Nit
      , Niu
      , Niv
      , Niw
      , Nix
      , Niy
      , Niz
      , Nja
      , Njb
      , Njd
      , Njh
      , Nji
      , Njj
      , Njl
      , Njm
      , Njn
      , Njo
      , Njr
      , Njs
      , Njt
      , Nju
      , Njx
      , Njy
      , Njz
      , Nka
      , Nkb
      , Nkc
      , Nkd
      , Nke
      , Nkf
      , Nkg
      , Nkh
      , Nki
      , Nkj
      , Nkk
      , Nkm
      , Nkn
      , Nko
      , Nkp
      , Nkq
      , Nkr
      , Nks
      , Nkt
      , Nku
      , Nkv
      , Nkw
      , Nkx
      , Nkz
      , Nla
      , Nlc
      , Nle
      , Nlg
      , Nli
      , Nlj
      , Nlk
      , Nll
      , Nlm
      , Nlo
      , Nlq
      , Nlu
      , Nlv
      , Nlw
      , Nlx
      , Nly
      , Nlz
      , Nma
      , Nmb
      , Nmc
      , Nmd
      , Nme
      , Nmf
      , Nmg
      , Nmh
      , Nmi
      , Nmj
      , Nmk
      , Nml
      , Nmm
      , Nmn
      , Nmo
      , Nmp
      , Nmq
      , Nmr
      , Nms
      , Nmt
      , Nmu
      , Nmv
      , Nmw
      , Nmx
      , Nmy
      , Nmz
      , Nna
      , Nnb
      , Nnc
      , Nnd
      , Nne
      , Nnf
      , Nng
      , Nnh
      , Nni
      , Nnj
      , Nnk
      , Nnl
      , Nnm
      , Nnn
      , Nnp
      , Nnq
      , Nnr
      , Nnt
      , Nnu
      , Nnv
      , Nnw
      , Nny
      , Nnz
      , Noa
      , Noc
      , Nod
      , Noe
      , Nof
      , Nog
      , Noh
      , Noi
      , Noj
      , Nok
      , Nol
      , Non
      , Nop
      , Noq
      , Nos
      , Not
      , Nou
      , Nov
      , Now
      , Noy
      , Noz
      , Npa
      , Npb
      , Npg
      , Nph
      , Npi
      , Npl
      , Npn
      , Npo
      , Nps
      , Npu
      , Npx
      , Npy
      , Nqg
      , Nqk
      , Nql
      , Nqm
      , Nqn
      , Nqo
      , Nqq
      , Nqt
      , Nqy
      , Nra
      , Nrb
      , Nrc
      , Nre
      , Nrf
      , Nrg
      , Nri
      , Nrk
      , Nrl
      , Nrm
      , Nrn
      , Nrp
      , Nrr
      , Nrt
      , Nru
      , Nrx
      , Nrz
      , Nsa
      , Nsb
      , Nsc
      , Nsd
      , Nse
      , Nsf
      , Nsg
      , Nsh
      , Nsi
      , Nsk
      , Nsl
      , Nsm
      , Nsn
      , Nso
      , Nsp
      , Nsq
      , Nsr
      , Nss
      , Nst
      , Nsu
      , Nsv
      , Nsw
      , Nsx
      , Nsy
      , Nsz
      , Ntd
      , Ntg
      , Nti
      , Ntj
      , Ntk
      , Ntm
      , Nto
      , Ntp
      , Ntr
      , Ntu
      , Ntw
      , Ntx
      , Nty
      , Ntz
      , Nua
      , Nuc
      , Nud
      , Nue
      , Nuf
      , Nug
      , Nuh
      , Nui
      , Nuj
      , Nuk
      , Nul
      , Num
      , Nun
      , Nuo
      , Nup
      , Nuq
      , Nur
      , Nus
      , Nut
      , Nuu
      , Nuv
      , Nuw
      , Nux
      , Nuy
      , Nuz
      , Nvh
      , Nvm
      , Nvo
      , Nwa
      , Nwb
      , Nwc
      , Nwe
      , Nwg
      , Nwi
      , Nwm
      , Nwo
      , Nwr
      , Nww
      , Nwx
      , Nwy
      , Nxa
      , Nxd
      , Nxe
      , Nxg
      , Nxi
      , Nxk
      , Nxl
      , Nxm
      , Nxn
      , Nxo
      , Nxq
      , Nxr
      , Nxx
      , Nyb
      , Nyc
      , Nyd
      , Nye
      , Nyf
      , Nyg
      , Nyh
      , Nyi
      , Nyj
      , Nyk
      , Nyl
      , Nym
      , Nyn
      , Nyo
      , Nyp
      , Nyq
      , Nyr
      , Nys
      , Nyt
      , Nyu
      , Nyv
      , Nyw
      , Nyx
      , Nyy
      , Nza
      , Nzb
      , Nzd
      , Nzi
      , Nzk
      , Nzm
      , Nzr
      , Nzs
      , Nzu
      , Nzy
      , Nzz
      , Oaa
      , Oac
      , Oak
      , Oar
      , Oav
      , Obi
      , Obk
      , Obl
      , Obm
      , Obo
      , Obr
      , Obt
      , Obu
      , Oca
      , Och
      , Ocm
      , Oco
      , Ocu
      , Oda
      , Odk
      , Odt
      , Odu
      , Ofo
      , Ofs
      , Ofu
      , Ogb
      , Ogc
      , Oge
      , Ogg
      , Ogo
      , Ogu
      , Oht
      , Ohu
      , Oia
      , Oie
      , Oin
      , Ojb
      , Ojc
      , Ojg
      , Ojp
      , Ojs
      , Ojv
      , Ojw
      , Oka
      , Okb
      , Okc
      , Okd
      , Oke
      , Okg
      , Okh
      , Oki
      , Okj
      , Okk
      , Okl
      , Okm
      , Okn
      , Oko
      , Okr
      , Oks
      , Oku
      , Okv
      , Okx
      , Okz
      , Ola
      , Olb
      , Old
      , Ole
      , Olk
      , Olm
      , Olo
      , Olr
      , Olt
      , Olu
      , Oma
      , Omb
      , Omc
      , Omg
      , Omi
      , Omk
      , Oml
      , Omn
      , Omo
      , Omp
      , Omr
      , Omt
      , Omu
      , Omw
      , Omx
      , Omy
      , Ona
      , Onb
      , One
      , Ong
      , Oni
      , Onj
      , Onk
      , Onn
      , Ono
      , Onp
      , Onr
      , Ons
      , Ont
      , Onu
      , Onw
      , Onx
      , Ood
      , Oog
      , Oon
      , Oor
      , Oos
      , Opa
      , Opk
      , Opm
      , Opo
      , Opt
      , Opy
      , Ora
      , Orc
      , Ore
      , Org
      , Orh
      , Orn
      , Oro
      , Orr
      , Ors
      , Ort
      , Oru
      , Orv
      , Orw
      , Orx
      , Ory
      , Orz
      , Osa
      , Osc
      , Osd
      , Osi
      , Osn
      , Oso
      , Osp
      , Ost
      , Osu
      , Osx
      , Ota
      , Otb
      , Otd
      , Ote
      , Oti
      , Otk
      , Otl
      , Otm
      , Otn
      , Otq
      , Otr
      , Ots
      , Ott
      , Otu
      , Otw
      , Otx
      , Oty
      , Otz
      , Oua
      , Oub
      , Oue
      , Oui
      , Oum
      , Ovd
      , Owi
      , Owl
      , Oyb
      , Oyd
      , Oym
      , Oyy
      , Ozm
      , Pab
      , Pac
      , Pad
      , Pae
      , Paf
      , Pag
      , Pah
      , Pai
      , Pak
      , Pal
      , Pam
      , Pao
      , Pap
      , Paq
      , Par
      , Pas
      , Pau
      , Pav
      , Paw
      , Pax
      , Pay
      , Paz
      , Pbb
      , Pbc
      , Pbe
      , Pbf
      , Pbg
      , Pbh
      , Pbi
      , Pbl
      , Pbm
      , Pbn
      , Pbo
      , Pbp
      , Pbr
      , Pbs
      , Pbt
      , Pbu
      , Pbv
      , Pby
      , Pca
      , Pcb
      , Pcc
      , Pcd
      , Pce
      , Pcf
      , Pcg
      , Pch
      , Pci
      , Pcj
      , Pck
      , Pcl
      , Pcm
      , Pcn
      , Pcp
      , Pcw
      , Pda
      , Pdc
      , Pdi
      , Pdn
      , Pdo
      , Pdt
      , Pdu
      , Pea
      , Peb
      , Ped
      , Pee
      , Pef
      , Peg
      , Peh
      , Pei
      , Pej
      , Pek
      , Pel
      , Pem
      , Peo
      , Pep
      , Peq
      , Pes
      , Pev
      , Pex
      , Pey
      , Pez
      , Pfa
      , Pfe
      , Pfl
      , Pga
      , Pgd
      , Pgg
      , Pgi
      , Pgk
      , Pgl
      , Pgn
      , Pgs
      , Pgu
      , Pgz
      , Pha
      , Phd
      , Phg
      , Phh
      , Phj
      , Phk
      , Phl
      , Phm
      , Phn
      , Pho
      , Phq
      , Phr
      , Pht
      , Phu
      , Phv
      , Phw
      , Pia
      , Pib
      , Pic
      , Pid
      , Pie
      , Pif
      , Pig
      , Pih
      , Pij
      , Pil
      , Pim
      , Pin
      , Pio
      , Pip
      , Pir
      , Pis
      , Pit
      , Piu
      , Piv
      , Piw
      , Pix
      , Piy
      , Piz
      , Pjt
      , Pka
      , Pkb
      , Pkc
      , Pkg
      , Pkh
      , Pkn
      , Pko
      , Pkp
      , Pkr
      , Pks
      , Pkt
      , Pku
      , Pla
      , Plb
      , Plc
      , Pld
      , Ple
      , Plg
      , Plh
      , Plk
      , Pll
      , Pln
      , Plo
      , Plq
      , Plr
      , Pls
      , Plt
      , Plu
      , Plv
      , Plw
      , Ply
      , Plz
      , Pma
      , Pmb
      , Pmd
      , Pme
      , Pmf
      , Pmh
      , Pmi
      , Pmj
      , Pml
      , Pmm
      , Pmn
      , Pmo
      , Pmq
      , Pmr
      , Pms
      , Pmt
      , Pmw
      , Pmx
      , Pmy
      , Pmz
      , Pna
      , Pnb
      , Pnc
      , Pnd
      , Pne
      , Png
      , Pnh
      , Pni
      , Pnj
      , Pnk
      , Pnl
      , Pnm
      , Pnn
      , Pno
      , Pnp
      , Pnq
      , Pnr
      , Pns
      , Pnt
      , Pnu
      , Pnv
      , Pnw
      , Pnx
      , Pny
      , Pnz
      , Poc
      , Poe
      , Pof
      , Pog
      , Poh
      , Poi
      , Pok
      , Pom
      , Pon
      , Poo
      , Pop
      , Poq
      , Pos
      , Pot
      , Pov
      , Pow
      , Pox
      , Poy
      , Ppe
      , Ppi
      , Ppk
      , Ppl
      , Ppm
      , Ppn
      , Ppo
      , Ppp
      , Ppq
      , Pps
      , Ppt
      , Ppu
      , Pqa
      , Pqm
      , Prc
      , Prd
      , Pre
      , Prf
      , Prg
      , Prh
      , Pri
      , Prk
      , Prl
      , Prm
      , Prn
      , Pro
      , Prq
      , Prr
      , Prs
      , Prt
      , Pru
      , Prw
      , Prx
      , Prz
      , Psa
      , Psc
      , Psd
      , Pse
      , Psg
      , Psh
      , Psi
      , Psl
      , Psm
      , Psn
      , Pso
      , Psp
      , Psq
      , Psr
      , Pss
      , Pst
      , Psu
      , Psw
      , Psy
      , Pta
      , Pth
      , Pti
      , Ptn
      , Pto
      , Ptp
      , Ptq
      , Ptr
      , Ptt
      , Ptu
      , Ptv
      , Ptw
      , Pty
      , Pua
      , Pub
      , Puc
      , Pud
      , Pue
      , Puf
      , Pug
      , Pui
      , Puj
      , Pum
      , Puo
      , Pup
      , Puq
      , Pur
      , Put
      , Puu
      , Puw
      , Pux
      , Puy
      , Pwa
      , Pwb
      , Pwg
      , Pwi
      , Pwm
      , Pwn
      , Pwo
      , Pwr
      , Pww
      , Pxm
      , Pye
      , Pym
      , Pyn
      , Pys
      , Pyu
      , Pyx
      , Pyy
      , Pze
      , Pzh
      , Pzn
      , Qua
      , Qub
      , Quc
      , Qud
      , Quf
      , Qug
      , Quh
      , Qui
      , Quk
      , Qul
      , Qum
      , Qun
      , Qup
      , Quq
      , Qur
      , Qus
      , Quv
      , Quw
      , Qux
      , Quy
      , Quz
      , Qva
      , Qvc
      , Qve
      , Qvh
      , Qvi
      , Qvj
      , Qvl
      , Qvm
      , Qvn
      , Qvo
      , Qvp
      , Qvs
      , Qvw
      , Qvy
      , Qvz
      , Qwa
      , Qwc
      , Qwh
      , Qwm
      , Qws
      , Qwt
      , Qxa
      , Qxc
      , Qxh
      , Qxl
      , Qxn
      , Qxo
      , Qxp
      , Qxq
      , Qxr
      , Qxs
      , Qxt
      , Qxu
      , Qxw
      , Qya
      , Qyp
      , Raa
      , Rab
      , Rac
      , Rad
      , Raf
      , Rag
      , Rah
      , Rai
      , Raj
      , Rak
      , Ral
      , Ram
      , Ran
      , Rao
      , Rap
      , Raq
      , Rar
      , Ras
      , Rat
      , Rau
      , Rav
      , Raw
      , Rax
      , Ray
      , Raz
      , Rbb
      , Rbk
      , Rbl
      , Rbp
      , Rcf
      , Rdb
      , Rea
      , Reb
      , Ree
      , Reg
      , Rei
      , Rej
      , Rel
      , Rem
      , Ren
      , Rer
      , Res
      , Ret
      , Rey
      , Rga
      , Rge
      , Rgk
      , Rgn
      , Rgr
      , Rgs
      , Rgu
      , Rhg
      , Rhp
      , Ria
      , Rib
      , Rif
      , Ril
      , Rim
      , Rin
      , Rir
      , Rit
      , Riu
      , Rjg
      , Rji
      , Rjs
      , Rka
      , Rkb
      , Rkh
      , Rki
      , Rkm
      , Rkt
      , Rkw
      , Rma
      , Rmb
      , Rmc
      , Rmd
      , Rme
      , Rmf
      , Rmg
      , Rmh
      , Rmi
      , Rmk
      , Rml
      , Rmm
      , Rmn
      , Rmo
      , Rmp
      , Rmq
      , Rms
      , Rmt
      , Rmu
      , Rmv
      , Rmw
      , Rmx
      , Rmy
      , Rmz
      , Rnb
      , Rnd
      , Rng
      , Rnl
      , Rnn
      , Rnp
      , Rnr
      , Rnw
      , Rob
      , Roc
      , Rod
      , Roe
      , Rof
      , Rog
      , Rol
      , Rom
      , Roo
      , Rop
      , Ror
      , Rou
      , Row
      , Rpn
      , Rpt
      , Rri
      , Rrm
      , Rro
      , Rrt
      , Rsb
      , Rsk
      , Rsl
      , Rsm
      , Rsn
      , Rsw
      , Rtc
      , Rth
      , Rtm
      , Rts
      , Rtw
      , Rub
      , Ruc
      , Rue
      , Ruf
      , Rug
      , Ruh
      , Rui
      , Ruk
      , Ruo
      , Rup
      , Ruq
      , Rut
      , Ruu
      , Ruy
      , Ruz
      , Rwa
      , Rwk
      , Rwl
      , Rwm
      , Rwo
      , Rwr
      , Rxd
      , Rxw
      , Ryn
      , Rys
      , Ryu
      , Rzh
      , Saa
      , Sab
      , Sac
      , Sad
      , Sae
      , Saf
      , Sah
      , Saj
      , Sak
      , Sam
      , Sao
      , Saq
      , Sar
      , Sas
      , Sat
      , Sau
      , Sav
      , Saw
      , Sax
      , Say
      , Saz
      , Sba
      , Sbb
      , Sbc
      , Sbd
      , Sbe
      , Sbf
      , Sbg
      , Sbh
      , Sbi
      , Sbj
      , Sbk
      , Sbl
      , Sbm
      , Sbn
      , Sbo
      , Sbp
      , Sbq
      , Sbr
      , Sbs
      , Sbt
      , Sbu
      , Sbv
      , Sbw
      , Sbx
      , Sby
      , Sbz
      , Scb
      , Sce
      , Scf
      , Scg
      , Sch
      , Sci
      , Sck
      , Scl
      , Scn
      , Sco
      , Scp
      , Scq
      , Scs
      , Sct
      , Scu
      , Scv
      , Scw
      , Scx
      , Scz
      , Sda
      , Sdb
      , Sdc
      , Sde
      , Sdf
      , Sdg
      , Sdh
      , Sdj
      , Sdk
      , Sdl
      , Sdn
      , Sdo
      , Sdp
      , Sdq
      , Sdr
      , Sds
      , Sdt
      , Sdu
      , Sdx
      , Sdz
      , Sea
      , Seb
      , Sec
      , Sed
      , See
      , Sef
      , Seg
      , Seh
      , Sei
      , Sej
      , Sek
      , Sel
      , Sen
      , Seo
      , Sep
      , Seq
      , Ser
      , Ses
      , Set
      , Seu
      , Sev
      , Sew
      , Sey
      , Sez
      , Sfb
      , Sfe
      , Sfm
      , Sfs
      , Sfw
      , Sga
      , Sgb
      , Sgc
      , Sgd
      , Sge
      , Sgg
      , Sgh
      , Sgi
      , Sgj
      , Sgk
      , Sgm
      , Sgp
      , Sgr
      , Sgs
      , Sgt
      , Sgu
      , Sgw
      , Sgx
      , Sgy
      , Sgz
      , Sha
      , Shb
      , Shc
      , Shd
      , She
      , Shg
      , Shh
      , Shi
      , Shj
      , Shk
      , Shl
      , Shm
      , Shn
      , Sho
      , Shp
      , Shq
      , Shr
      , Shs
      , Sht
      , Shu
      , Shv
      , Shw
      , Shx
      , Shy
      , Shz
      , Sia
      , Sib
      , Sid
      , Sie
      , Sif
      , Sig
      , Sih
      , Sii
      , Sij
      , Sik
      , Sil
      , Sim
      , Sip
      , Siq
      , Sir
      , Sis
      , Siu
      , Siv
      , Siw
      , Six
      , Siy
      , Siz
      , Sja
      , Sjb
      , Sjc
      , Sjd
      , Sje
      , Sjg
      , Sjk
      , Sjl
      , Sjm
      , Sjn
      , Sjo
      , Sjp
      , Sjr
      , Sjs
      , Sjt
      , Sju
      , Sjw
      , Ska
      , Skb
      , Skc
      , Skd
      , Ske
      , Skf
      , Skg
      , Skh
      , Ski
      , Skj
      , Skm
      , Skn
      , Sko
      , Skp
      , Skq
      , Skr
      , Sks
      , Skt
      , Sku
      , Skv
      , Skw
      , Skx
      , Sky
      , Skz
      , Slc
      , Sld
      , Sle
      , Slf
      , Slg
      , Slh
      , Sli
      , Slj
      , Sll
      , Slm
      , Sln
      , Slp
      , Slr
      , Sls
      , Slt
      , Slu
      , Slw
      , Slx
      , Sly
      , Slz
      , Sma
      , Smb
      , Smc
      , Smf
      , Smg
      , Smh
      , Smj
      , Smk
      , Sml
      , Smm
      , Smn
      , Smp
      , Smq
      , Smr
      , Sms
      , Smt
      , Smu
      , Smv
      , Smw
      , Smx
      , Smy
      , Smz
      , Snc
      , Sne
      , Snf
      , Sng
      , Sni
      , Snj
      , Snk
      , Snl
      , Snm
      , Snn
      , Sno
      , Snp
      , Snq
      , Snr
      , Sns
      , Snu
      , Snv
      , Snw
      , Snx
      , Sny
      , Snz
      , Soa
      , Sob
      , Soc
      , Sod
      , Soe
      , Sog
      , Soh
      , Soi
      , Soj
      , Sok
      , Sol
      , Soo
      , Sop
      , Soq
      , Sor
      , Sos
      , Sou
      , Sov
      , Sow
      , Sox
      , Soy
      , Soz
      , Spb
      , Spc
      , Spd
      , Spe
      , Spg
      , Spi
      , Spk
      , Spl
      , Spm
      , Spn
      , Spo
      , Spp
      , Spq
      , Spr
      , Sps
      , Spt
      , Spu
      , Spv
      , Spx
      , Spy
      , Sqa
      , Sqh
      , Sqk
      , Sqm
      , Sqn
      , Sqo
      , Sqq
      , Sqr
      , Sqs
      , Sqt
      , Squ
      , Sqx
      , Sra
      , Srb
      , Src
      , Sre
      , Srf
      , Srg
      , Srh
      , Sri
      , Srk
      , Srl
      , Srm
      , Srn
      , Sro
      , Srq
      , Srr
      , Srs
      , Srt
      , Sru
      , Srv
      , Srw
      , Srx
      , Sry
      , Srz
      , Ssb
      , Ssc
      , Ssd
      , Sse
      , Ssf
      , Ssg
      , Ssh
      , Ssi
      , Ssj
      , Ssk
      , Ssl
      , Ssm
      , Ssn
      , Sso
      , Ssp
      , Ssq
      , Ssr
      , Sss
      , Sst
      , Ssu
      , Ssv
      , Ssx
      , Ssy
      , Ssz
      , Sta
      , Stb
      , Std
      , Ste
      , Stf
      , Stg
      , Sth
      , Sti
      , Stj
      , Stk
      , Stl
      , Stm
      , Stn
      , Sto
      , Stp
      , Stq
      , Str
      , Sts
      , Stt
      , Stu
      , Stv
      , Stw
      , Sty
      , Sua
      , Sub
      , Suc
      , Sue
      , Sug
      , Sui
      , Suj
      , Suk
      , Suo
      , Suq
      , Sur
      , Sus
      , Sut
      , Suv
      , Suw
      , Sux
      , Suy
      , Suz
      , Sva
      , Svb
      , Svc
      , Sve
      , Svk
      , Svm
      , Svs
      , Svx
      , Swb
      , Swc
      , Swf
      , Swg
      , Swh
      , Swi
      , Swj
      , Swk
      , Swl
      , Swm
      , Swn
      , Swo
      , Swp
      , Swq
      , Swr
      , Sws
      , Swt
      , Swu
      , Swv
      , Sww
      , Swx
      , Swy
      , Sxb
      , Sxc
      , Sxe
      , Sxg
      , Sxk
      , Sxl
      , Sxm
      , Sxn
      , Sxo
      , Sxr
      , Sxs
      , Sxu
      , Sxw
      , Sya
      , Syb
      , Syc
      , Syi
      , Syk
      , Syl
      , Sym
      , Syn
      , Syo
      , Syr
      , Sys
      , Syw
      , Syx
      , Syy
      , Sza
      , Szb
      , Szc
      , Sze
      , Szg
      , Szl
      , Szn
      , Szp
      , Szs
      , Szv
      , Szw
      , Szy
      , Taa
      , Tab
      , Tac
      , Tad
      , Tae
      , Taf
      , Tag
      , Taj
      , Tak
      , Tal
      , Tan
      , Tao
      , Tap
      , Taq
      , Tar
      , Tas
      , Tau
      , Tav
      , Taw
      , Tax
      , Tay
      , Taz
      , Tba
      , Tbc
      , Tbd
      , Tbe
      , Tbf
      , Tbg
      , Tbh
      , Tbi
      , Tbj
      , Tbk
      , Tbl
      , Tbm
      , Tbn
      , Tbo
      , Tbp
      , Tbr
      , Tbs
      , Tbt
      , Tbu
      , Tbv
      , Tbw
      , Tbx
      , Tby
      , Tbz
      , Tca
      , Tcb
      , Tcc
      , Tcd
      , Tce
      , Tcf
      , Tcg
      , Tch
      , Tci
      , Tck
      , Tcl
      , Tcm
      , Tcn
      , Tco
      , Tcp
      , Tcq
      , Tcs
      , Tct
      , Tcu
      , Tcw
      , Tcx
      , Tcy
      , Tcz
      , Tda
      , Tdb
      , Tdc
      , Tdd
      , Tde
      , Tdf
      , Tdg
      , Tdh
      , Tdi
      , Tdj
      , Tdk
      , Tdl
      , Tdm
      , Tdn
      , Tdo
      , Tdq
      , Tdr
      , Tds
      , Tdt
      , Tdv
      , Tdx
      , Tdy
      , Tea
      , Teb
      , Tec
      , Ted
      , Tee
      , Tef
      , Teg
      , Teh
      , Tei
      , Tek
      , Tem
      , Ten
      , Teo
      , Tep
      , Teq
      , Ter
      , Tes
      , Tet
      , Teu
      , Tev
      , Tew
      , Tex
      , Tey
      , Tez
      , Tfi
      , Tfn
      , Tfo
      , Tfr
      , Tft
      , Tga
      , Tgb
      , Tgc
      , Tgd
      , Tge
      , Tgf
      , Tgh
      , Tgi
      , Tgj
      , Tgn
      , Tgo
      , Tgp
      , Tgq
      , Tgr
      , Tgs
      , Tgt
      , Tgu
      , Tgv
      , Tgw
      , Tgx
      , Tgy
      , Tgz
      , Thd
      , The
      , Thf
      , Thh
      , Thi
      , Thk
      , Thl
      , Thm
      , Thn
      , Thp
      , Thq
      , Thr
      , Ths
      , Tht
      , Thu
      , Thv
      , Thy
      , Thz
      , Tia
      , Tic
      , Tif
      , Tig
      , Tih
      , Tii
      , Tij
      , Tik
      , Til
      , Tim
      , Tin
      , Tio
      , Tip
      , Tiq
      , Tis
      , Tit
      , Tiu
      , Tiv
      , Tiw
      , Tix
      , Tiy
      , Tiz
      , Tja
      , Tjg
      , Tji
      , Tjj
      , Tjl
      , Tjm
      , Tjn
      , Tjo
      , Tjp
      , Tjs
      , Tju
      , Tjw
      , Tka
      , Tkb
      , Tkd
      , Tke
      , Tkf
      , Tkg
      , Tkl
      , Tkm
      , Tkn
      , Tkp
      , Tkq
      , Tkr
      , Tks
      , Tkt
      , Tku
      , Tkv
      , Tkw
      , Tkx
      , Tkz
      , Tla
      , Tlb
      , Tlc
      , Tld
      , Tlf
      , Tlg
      , Tlh
      , Tli
      , Tlj
      , Tlk
      , Tll
      , Tlm
      , Tln
      , Tlo
      , Tlp
      , Tlq
      , Tlr
      , Tls
      , Tlt
      , Tlu
      , Tlv
      , Tlx
      , Tly
      , Tma
      , Tmb
      , Tmc
      , Tmd
      , Tme
      , Tmf
      , Tmg
      , Tmh
      , Tmi
      , Tmj
      , Tml
      , Tmm
      , Tmn
      , Tmo
      , Tmq
      , Tmr
      , Tms
      , Tmt
      , Tmu
      , Tmv
      , Tmw
      , Tmy
      , Tmz
      , Tna
      , Tnb
      , Tnc
      , Tnd
      , Tng
      , Tnh
      , Tni
      , Tnk
      , Tnl
      , Tnm
      , Tnn
      , Tno
      , Tnp
      , Tnq
      , Tnr
      , Tns
      , Tnt
      , Tnu
      , Tnv
      , Tnw
      , Tnx
      , Tny
      , Tnz
      , Tob
      , Toc
      , Tod
      , Tof
      , Tog
      , Toh
      , Toi
      , Toj
      , Tok
      , Tol
      , Tom
      , Too
      , Top
      , Toq
      , Tor
      , Tos
      , Tou
      , Tov
      , Tow
      , Tox
      , Toy
      , Toz
      , Tpa
      , Tpc
      , Tpe
      , Tpf
      , Tpg
      , Tpi
      , Tpj
      , Tpk
      , Tpl
      , Tpm
      , Tpn
      , Tpo
      , Tpp
      , Tpq
      , Tpr
      , Tpt
      , Tpu
      , Tpv
      , Tpx
      , Tpy
      , Tpz
      , Tqb
      , Tql
      , Tqm
      , Tqn
      , Tqo
      , Tqp
      , Tqq
      , Tqr
      , Tqt
      , Tqu
      , Tqw
      , Tra
      , Trb
      , Trc
      , Trd
      , Tre
      , Trf
      , Trg
      , Trh
      , Tri
      , Trj
      , Trl
      , Trm
      , Trn
      , Tro
      , Trp
      , Trq
      , Trr
      , Trs
      , Trt
      , Tru
      , Trv
      , Trw
      , Trx
      , Try
      , Trz
      , Tsa
      , Tsb
      , Tsc
      , Tsd
      , Tse
      , Tsg
      , Tsh
      , Tsi
      , Tsj
      , Tsk
      , Tsl
      , Tsm
      , Tsp
      , Tsq
      , Tsr
      , Tss
      , Tst
      , Tsu
      , Tsv
      , Tsw
      , Tsx
      , Tsy
      , Tsz
      , Tta
      , Ttb
      , Ttc
      , Ttd
      , Tte
      , Ttf
      , Ttg
      , Tth
      , Tti
      , Ttj
      , Ttk
      , Ttl
      , Ttm
      , Ttn
      , Tto
      , Ttp
      , Ttq
      , Ttr
      , Tts
      , Ttt
      , Ttu
      , Ttv
      , Ttw
      , Tty
      , Ttz
      , Tua
      , Tub
      , Tuc
      , Tud
      , Tue
      , Tuf
      , Tug
      , Tuh
      , Tui
      , Tuj
      , Tul
      , Tum
      , Tun
      , Tuo
      , Tuq
      , Tus
      , Tuu
      , Tuv
      , Tux
      , Tuy
      , Tuz
      , Tva
      , Tvd
      , Tve
      , Tvg
      , Tvi
      , Tvk
      , Tvl
      , Tvm
      , Tvn
      , Tvo
      , Tvs
      , Tvt
      , Tvu
      , Tvw
      , Tvx
      , Tvy
      , Twa
      , Twb
      , Twc
      , Twd
      , Twe
      , Twf
      , Twg
      , Twh
      , Twl
      , Twm
      , Twn
      , Two
      , Twp
      , Twq
      , Twr
      , Twt
      , Twu
      , Tww
      , Twx
      , Twy
      , Txa
      , Txb
      , Txc
      , Txe
      , Txg
      , Txh
      , Txi
      , Txj
      , Txm
      , Txn
      , Txo
      , Txq
      , Txr
      , Txs
      , Txt
      , Txu
      , Txx
      , Txy
      , Tya
      , Tye
      , Tyh
      , Tyi
      , Tyj
      , Tyl
      , Tyn
      , Typ
      , Tyr
      , Tys
      , Tyt
      , Tyu
      , Tyv
      , Tyx
      , Tyy
      , Tyz
      , Tza
      , Tzh
      , Tzj
      , Tzl
      , Tzm
      , Tzn
      , Tzo
      , Tzx
      , Uam
      , Uan
      , Uar
      , Uba
      , Ubi
      , Ubl
      , Ubr
      , Ubu
      , Uby
      , Uda
      , Ude
      , Udg
      , Udi
      , Udj
      , Udl
      , Udm
      , Udu
      , Ues
      , Ufi
      , Uga
      , Ugb
      , Uge
      , Ugh
      , Ugn
      , Ugo
      , Ugy
      , Uha
      , Uhn
      , Uis
      , Uiv
      , Uji
      , Uka
      , Ukg
      , Ukh
      , Uki
      , Ukk
      , Ukl
      , Ukp
      , Ukq
      , Uks
      , Uku
      , Ukv
      , Ukw
      , Uky
      , Ula
      , Ulb
      , Ulc
      , Ule
      , Ulf
      , Uli
      , Ulk
      , Ull
      , Ulm
      , Uln
      , Ulu
      , Ulw
      , Uly
      , Uma
      , Umb
      , Umc
      , Umd
      , Umg
      , Umi
      , Umm
      , Umn
      , Umo
      , Ump
      , Umr
      , Ums
      , Umu
      , Una
      , Und
      , Une
      , Ung
      , Uni
      , Unk
      , Unm
      , Unn
      , Unr
      , Unu
      , Unx
      , Unz
      , Uon
      , Upi
      , Upv
      , Ura
      , Urb
      , Urc
      , Ure
      , Urf
      , Urg
      , Urh
      , Uri
      , Urk
      , Url
      , Urm
      , Urn
      , Uro
      , Urp
      , Urr
      , Urt
      , Uru
      , Urv
      , Urw
      , Urx
      , Ury
      , Urz
      , Usa
      , Ush
      , Usi
      , Usk
      , Usp
      , Uss
      , Usu
      , Uta
      , Ute
      , Uth
      , Utp
      , Utr
      , Utu
      , Uum
      , Uur
      , Uuu
      , Uve
      , Uvh
      , Uvl
      , Uwa
      , Uya
      , Uzn
      , Uzs
      , Vaa
      , Vae
      , Vaf
      , Vag
      , Vah
      , Vai
      , Vaj
      , Val
      , Vam
      , Van
      , Vao
      , Vap
      , Var
      , Vas
      , Vau
      , Vav
      , Vay
      , Vbb
      , Vbk
      , Vec
      , Ved
      , Vel
      , Vem
      , Veo
      , Vep
      , Ver
      , Vgr
      , Vgt
      , Vic
      , Vid
      , Vif
      , Vig
      , Vil
      , Vin
      , Vis
      , Vit
      , Viv
      , Vjk
      , Vka
      , Vkj
      , Vkk
      , Vkl
      , Vkm
      , Vkn
      , Vko
      , Vkp
      , Vkt
      , Vku
      , Vkz
      , Vlp
      , Vls
      , Vma
      , Vmb
      , Vmc
      , Vmd
      , Vme
      , Vmf
      , Vmg
      , Vmh
      , Vmi
      , Vmj
      , Vmk
      , Vml
      , Vmm
      , Vmp
      , Vmq
      , Vmr
      , Vms
      , Vmu
      , Vmv
      , Vmw
      , Vmx
      , Vmy
      , Vmz
      , Vnk
      , Vnm
      , Vnp
      , Vor
      , Vot
      , Vra
      , Vro
      , Vrs
      , Vrt
      , Vsi
      , Vsl
      , Vsn
      , Vsv
      , Vto
      , Vum
      , Vun
      , Vut
      , Vwa
      , Waa
      , Wab
      , Wac
      , Wad
      , Wae
      , Waf
      , Wag
      , Wah
      , Wai
      , Waj
      , Wal
      , Wam
      , Wan
      , Wao
      , Wap
      , Waq
      , War
      , Was
      , Wat
      , Wau
      , Wav
      , Waw
      , Wax
      , Way
      , Waz
      , Wba
      , Wbb
      , Wbe
      , Wbf
      , Wbh
      , Wbi
      , Wbj
      , Wbk
      , Wbl
      , Wbm
      , Wbp
      , Wbq
      , Wbr
      , Wbs
      , Wbt
      , Wbv
      , Wbw
      , Wca
      , Wci
      , Wdd
      , Wdg
      , Wdj
      , Wdk
      , Wdt
      , Wdu
      , Wdy
      , Wea
      , Wec
      , Wed
      , Weg
      , Weh
      , Wei
      , Wem
      , Weo
      , Wep
      , Wer
      , Wes
      , Wet
      , Weu
      , Wew
      , Wfg
      , Wga
      , Wgb
      , Wgg
      , Wgi
      , Wgo
      , Wgu
      , Wgy
      , Wha
      , Whg
      , Whk
      , Whu
      , Wib
      , Wic
      , Wie
      , Wif
      , Wig
      , Wih
      , Wii
      , Wij
      , Wik
      , Wil
      , Wim
      , Win
      , Wir
      , Wiu
      , Wiv
      , Wiy
      , Wja
      , Wji
      , Wka
      , Wkb
      , Wkd
      , Wkl
      , Wkr
      , Wku
      , Wkw
      , Wky
      , Wla
      , Wlc
      , Wle
      , Wlg
      , Wlh
      , Wli
      , Wlk
      , Wll
      , Wlm
      , Wlo
      , Wlr
      , Wls
      , Wlu
      , Wlv
      , Wlw
      , Wlx
      , Wly
      , Wma
      , Wmb
      , Wmc
      , Wmd
      , Wme
      , Wmg
      , Wmh
      , Wmi
      , Wmm
      , Wmn
      , Wmo
      , Wms
      , Wmt
      , Wmw
      , Wmx
      , Wnb
      , Wnc
      , Wnd
      , Wne
      , Wng
      , Wni
      , Wnk
      , Wnm
      , Wnn
      , Wno
      , Wnp
      , Wnu
      , Wnw
      , Wny
      , Woa
      , Wob
      , Woc
      , Wod
      , Woe
      , Wof
      , Wog
      , Woi
      , Wok
      , Wom
      , Won
      , Woo
      , Wor
      , Wos
      , Wow
      , Woy
      , Wpc
      , Wrb
      , Wrg
      , Wrh
      , Wri
      , Wrk
      , Wrl
      , Wrm
      , Wrn
      , Wro
      , Wrp
      , Wrr
      , Wrs
      , Wru
      , Wrv
      , Wrw
      , Wrx
      , Wry
      , Wrz
      , Wsa
      , Wsg
      , Wsi
      , Wsk
      , Wsr
      , Wss
      , Wsu
      , Wsv
      , Wtb
      , Wtf
      , Wth
      , Wti
      , Wtk
      , Wtm
      , Wtw
      , Wua
      , Wub
      , Wud
      , Wuh
      , Wul
      , Wum
      , Wun
      , Wur
      , Wut
      , Wuu
      , Wuv
      , Wux
      , Wuy
      , Wwa
      , Wwb
      , Wwo
      , Wwr
      , Www
      , Wxa
      , Wxw
      , Wyb
      , Wyi
      , Wym
      , Wyn
      , Wyr
      , Wyy
      , Xaa
      , Xab
      , Xac
      , Xad
      , Xae
      , Xag
      , Xai
      , Xaj
      , Xak
      , Xal
      , Xam
      , Xan
      , Xao
      , Xap
      , Xaq
      , Xar
      , Xas
      , Xat
      , Xau
      , Xav
      , Xaw
      , Xay
      , Xbb
      , Xbc
      , Xbd
      , Xbe
      , Xbg
      , Xbi
      , Xbj
      , Xbm
      , Xbn
      , Xbo
      , Xbp
      , Xbr
      , Xbw
      , Xby
      , Xcb
      , Xcc
      , Xce
      , Xcg
      , Xch
      , Xcl
      , Xcm
      , Xcn
      , Xco
      , Xcr
      , Xct
      , Xcu
      , Xcv
      , Xcw
      , Xcy
      , Xda
      , Xdc
      , Xdk
      , Xdm
      , Xdo
      , Xdq
      , Xdy
      , Xeb
      , Xed
      , Xeg
      , Xel
      , Xem
      , Xep
      , Xer
      , Xes
      , Xet
      , Xeu
      , Xfa
      , Xga
      , Xgb
      , Xgd
      , Xgf
      , Xgg
      , Xgi
      , Xgl
      , Xgm
      , Xgr
      , Xgu
      , Xgw
      , Xha
      , Xhc
      , Xhd
      , Xhe
      , Xhm
      , Xhr
      , Xht
      , Xhu
      , Xhv
      , Xib
      , Xii
      , Xil
      , Xin
      , Xir
      , Xis
      , Xiv
      , Xiy
      , Xjb
      , Xjt
      , Xka
      , Xkb
      , Xkc
      , Xkd
      , Xke
      , Xkf
      , Xkg
      , Xki
      , Xkj
      , Xkk
      , Xkl
      , Xkn
      , Xko
      , Xkp
      , Xkq
      , Xkr
      , Xks
      , Xkt
      , Xku
      , Xkv
      , Xkw
      , Xkx
      , Xky
      , Xkz
      , Xla
      , Xlb
      , Xlc
      , Xld
      , Xle
      , Xlg
      , Xli
      , Xln
      , Xlo
      , Xlp
      , Xls
      , Xlu
      , Xly
      , Xma
      , Xmb
      , Xmc
      , Xmd
      , Xme
      , Xmf
      , Xmg
      , Xmh
      , Xmj
      , Xmk
      , Xml
      , Xmm
      , Xmn
      , Xmo
      , Xmp
      , Xmq
      , Xmr
      , Xms
      , Xmt
      , Xmu
      , Xmv
      , Xmw
      , Xmx
      , Xmy
      , Xmz
      , Xna
      , Xnb
      , Xng
      , Xnh
      , Xni
      , Xnj
      , Xnk
      , Xnm
      , Xnn
      , Xno
      , Xnq
      , Xnr
      , Xns
      , Xnt
      , Xnu
      , Xny
      , Xnz
      , Xoc
      , Xod
      , Xog
      , Xoi
      , Xok
      , Xom
      , Xon
      , Xoo
      , Xop
      , Xor
      , Xow
      , Xpa
      , Xpb
      , Xpc
      , Xpd
      , Xpe
      , Xpf
      , Xpg
      , Xph
      , Xpi
      , Xpj
      , Xpk
      , Xpl
      , Xpm
      , Xpn
      , Xpo
      , Xpp
      , Xpq
      , Xpr
      , Xps
      , Xpt
      , Xpu
      , Xpv
      , Xpw
      , Xpx
      , Xpy
      , Xpz
      , Xqa
      , Xqt
      , Xra
      , Xrb
      , Xrd
      , Xre
      , Xrg
      , Xri
      , Xrm
      , Xrn
      , Xrr
      , Xrt
      , Xru
      , Xrw
      , Xsa
      , Xsb
      , Xsc
      , Xsd
      , Xse
      , Xsh
      , Xsi
      , Xsj
      , Xsl
      , Xsm
      , Xsn
      , Xso
      , Xsp
      , Xsq
      , Xsr
      , Xsu
      , Xsv
      , Xsy
      , Xta
      , Xtb
      , Xtc
      , Xtd
      , Xte
      , Xtg
      , Xth
      , Xti
      , Xtj
      , Xtl
      , Xtm
      , Xtn
      , Xto
      , Xtp
      , Xtq
      , Xtr
      , Xts
      , Xtt
      , Xtu
      , Xtv
      , Xtw
      , Xty
      , Xua
      , Xub
      , Xud
      , Xug
      , Xuj
      , Xul
      , Xum
      , Xun
      , Xuo
      , Xup
      , Xur
      , Xut
      , Xuu
      , Xve
      , Xvi
      , Xvn
      , Xvo
      , Xvs
      , Xwa
      , Xwc
      , Xwd
      , Xwe
      , Xwg
      , Xwj
      , Xwk
      , Xwl
      , Xwo
      , Xwr
      , Xwt
      , Xww
      , Xxb
      , Xxk
      , Xxm
      , Xxr
      , Xxt
      , Xya
      , Xyb
      , Xyj
      , Xyk
      , Xyl
      , Xyt
      , Xyy
      , Xzh
      , Xzm
      , Xzp
      , Yaa
      , Yab
      , Yac
      , Yad
      , Yae
      , Yaf
      , Yag
      , Yah
      , Yai
      , Yaj
      , Yak
      , Yal
      , Yam
      , Yan
      , Yao
      , Yap
      , Yaq
      , Yar
      , Yas
      , Yat
      , Yau
      , Yav
      , Yaw
      , Yax
      , Yay
      , Yaz
      , Yba
      , Ybb
      , Ybe
      , Ybh
      , Ybi
      , Ybj
      , Ybk
      , Ybl
      , Ybm
      , Ybn
      , Ybo
      , Ybx
      , Yby
      , Ych
      , Ycl
      , Ycn
      , Ycp
      , Ycr
      , Yda
      , Ydd
      , Yde
      , Ydg
      , Ydk
      , Yea
      , Yec
      , Yee
      , Yei
      , Yej
      , Yel
      , Yer
      , Yes
      , Yet
      , Yeu
      , Yev
      , Yey
      , Yga
      , Ygi
      , Ygl
      , Ygm
      , Ygp
      , Ygr
      , Ygs
      , Ygu
      , Ygw
      , Yha
      , Yhd
      , Yhl
      , Yhs
      , Yia
      , Yif
      , Yig
      , Yih
      , Yii
      , Yij
      , Yik
      , Yil
      , Yim
      , Yin
      , Yip
      , Yiq
      , Yir
      , Yis
      , Yit
      , Yiu
      , Yiv
      , Yix
      , Yiz
      , Yka
      , Ykg
      , Ykh
      , Yki
      , Ykk
      , Ykl
      , Ykm
      , Ykn
      , Yko
      , Ykr
      , Ykt
      , Yku
      , Yky
      , Yla
      , Ylb
      , Yle
      , Ylg
      , Yli
      , Yll
      , Ylm
      , Yln
      , Ylo
      , Ylr
      , Ylu
      , Yly
      , Ymb
      , Ymc
      , Ymd
      , Yme
      , Ymg
      , Ymh
      , Ymi
      , Ymk
      , Yml
      , Ymm
      , Ymn
      , Ymo
      , Ymp
      , Ymq
      , Ymr
      , Yms
      , Ymx
      , Ymz
      , Yna
      , Ynb
      , Ynd
      , Yne
      , Yng
      , Ynk
      , Ynl
      , Ynn
      , Yno
      , Ynq
      , Yns
      , Ynu
      , Yob
      , Yog
      , Yoi
      , Yok
      , Yom
      , Yon
      , Yot
      , Yox
      , Yoy
      , Ypa
      , Ypb
      , Ypg
      , Yph
      , Ypm
      , Ypn
      , Ypo
      , Ypp
      , Ypz
      , Yra
      , Yrb
      , Yre
      , Yrk
      , Yrl
      , Yrm
      , Yrn
      , Yro
      , Yrs
      , Yrw
      , Yry
      , Ysc
      , Ysd
      , Ysg
      , Ysl
      , Ysm
      , Ysn
      , Yso
      , Ysp
      , Ysr
      , Yss
      , Ysy
      , Yta
      , Ytl
      , Ytp
      , Ytw
      , Yty
      , Yua
      , Yub
      , Yuc
      , Yud
      , Yue
      , Yuf
      , Yug
      , Yui
      , Yuj
      , Yuk
      , Yul
      , Yum
      , Yun
      , Yup
      , Yuq
      , Yur
      , Yut
      , Yuw
      , Yux
      , Yuy
      , Yuz
      , Yva
      , Yvt
      , Ywa
      , Ywg
      , Ywl
      , Ywn
      , Ywq
      , Ywr
      , Ywt
      , Ywu
      , Yww
      , Yxa
      , Yxg
      , Yxl
      , Yxm
      , Yxu
      , Yxy
      , Yyr
      , Yyu
      , Yyz
      , Yzg
      , Yzk
      , Zaa
      , Zab
      , Zac
      , Zad
      , Zae
      , Zaf
      , Zag
      , Zah
      , Zai
      , Zaj
      , Zak
      , Zal
      , Zam
      , Zao
      , Zap
      , Zaq
      , Zar
      , Zas
      , Zat
      , Zau
      , Zav
      , Zaw
      , Zax
      , Zay
      , Zaz
      , Zba
      , Zbc
      , Zbe
      , Zbl
      , Zbt
      , Zbu
      , Zbw
      , Zca
      , Zcd
      , Zch
      , Zdj
      , Zea
      , Zeg
      , Zeh
      , Zem
      , Zen
      , Zga
      , Zgb
      , Zgh
      , Zgm
      , Zgn
      , Zgr
      , Zhb
      , Zhd
      , Zhi
      , Zhk
      , Zhn
      , Zhw
      , Zia
      , Zib
      , Zik
      , Zil
      , Zim
      , Zin
      , Ziw
      , Ziz
      , Zka
      , Zkd
      , Zkg
      , Zkh
      , Zkk
      , Zkn
      , Zko
      , Zkp
      , Zkr
      , Zkt
      , Zku
      , Zkv
      , Zkz
      , Zla
      , Zlj
      , Zlm
      , Zln
      , Zlq
      , Zlu
      , Zma
      , Zmb
      , Zmc
      , Zmd
      , Zme
      , Zmf
      , Zmg
      , Zmh
      , Zmi
      , Zmj
      , Zmk
      , Zml
      , Zmm
      , Zmn
      , Zmo
      , Zmp
      , Zmq
      , Zmr
      , Zms
      , Zmt
      , Zmu
      , Zmv
      , Zmw
      , Zmx
      , Zmy
      , Zmz
      , Zna
      , Zne
      , Zng
      , Znk
      , Zns
      , Zoc
      , Zoh
      , Zom
      , Zoo
      , Zoq
      , Zor
      , Zos
      , Zpa
      , Zpb
      , Zpc
      , Zpd
      , Zpe
      , Zpf
      , Zpg
      , Zph
      , Zpi
      , Zpj
      , Zpk
      , Zpl
      , Zpm
      , Zpn
      , Zpo
      , Zpp
      , Zpq
      , Zpr
      , Zps
      , Zpt
      , Zpu
      , Zpv
      , Zpw
      , Zpx
      , Zpy
      , Zpz
      , Zqe
      , Zra
      , Zrg
      , Zrn
      , Zro
      , Zrp
      , Zrs
      , Zsa
      , Zsk
      , Zsl
      , Zsm
      , Zsr
      , Zsu
      , Zte
      , Ztg
      , Ztl
      , Ztm
      , Ztn
      , Ztp
      , Ztq
      , Zts
      , Ztt
      , Ztu
      , Ztx
      , Zty
      , Zuh
      , Zum
      , Zun
      , Zuy
      , Zwa
      , Zxx
      , Zyb
      , Zyg
      , Zyj
      , Zyn
      , Zyp
      , Zza
      , Zzj
      )
  ) where

import           Data.Language.Internal
import           Data.Language.TH.Internal



-- | Afar.
pattern Aa :: Language
pattern Aa = $(bakeLanguage (Just "aa") "aar")

-- | Abkhazian.
pattern Ab :: Language
pattern Ab = $(bakeLanguage (Just "ab") "abk")

-- | Avestan.
pattern Ae :: Language
pattern Ae = $(bakeLanguage (Just "ae") "ave")

-- | Afrikaans.
pattern Af :: Language
pattern Af = $(bakeLanguage (Just "af") "afr")

-- | Akan.
pattern Ak :: Language
pattern Ak = $(bakeLanguage (Just "ak") "aka")

-- | Amharic.
pattern Am :: Language
pattern Am = $(bakeLanguage (Just "am") "amh")

-- | Aragonese.
pattern An :: Language
pattern An = $(bakeLanguage (Just "an") "arg")

-- | Arabic.
pattern Ar :: Language
pattern Ar = $(bakeLanguage (Just "ar") "ara")

-- | Assamese.
pattern As :: Language
pattern As = $(bakeLanguage (Just "as") "asm")

-- | Avaric.
pattern Av :: Language
pattern Av = $(bakeLanguage (Just "av") "ava")

-- | Aymara.
pattern Ay :: Language
pattern Ay = $(bakeLanguage (Just "ay") "aym")

-- | Azerbaijani.
pattern Az :: Language
pattern Az = $(bakeLanguage (Just "az") "aze")

-- | Bashkir.
pattern Ba :: Language
pattern Ba = $(bakeLanguage (Just "ba") "bak")

-- | Belarusian.
pattern Be :: Language
pattern Be = $(bakeLanguage (Just "be") "bel")

-- | Bulgarian.
pattern Bg :: Language
pattern Bg = $(bakeLanguage (Just "bg") "bul")

-- | Bislama.
pattern Bi :: Language
pattern Bi = $(bakeLanguage (Just "bi") "bis")

-- | Bambara.
pattern Bm :: Language
pattern Bm = $(bakeLanguage (Just "bm") "bam")

-- | Bengali.
pattern Bn :: Language
pattern Bn = $(bakeLanguage (Just "bn") "ben")

-- | Tibetan.
pattern Bo :: Language
pattern Bo = $(bakeLanguage (Just "bo") "bod")

-- | Breton.
pattern Br :: Language
pattern Br = $(bakeLanguage (Just "br") "bre")

-- | Bosnian.
pattern Bs :: Language
pattern Bs = $(bakeLanguage (Just "bs") "bos")

-- | Catalan.
pattern Ca :: Language
pattern Ca = $(bakeLanguage (Just "ca") "cat")

-- | Chechen.
pattern Ce :: Language
pattern Ce = $(bakeLanguage (Just "ce") "che")

-- | Chamorro.
pattern Ch :: Language
pattern Ch = $(bakeLanguage (Just "ch") "cha")

-- | Corsican.
pattern Co :: Language
pattern Co = $(bakeLanguage (Just "co") "cos")

-- | Cree.
pattern Cr :: Language
pattern Cr = $(bakeLanguage (Just "cr") "cre")

-- | Czech.
pattern Cs :: Language
pattern Cs = $(bakeLanguage (Just "cs") "ces")

-- | Church Slavic.
pattern Cu :: Language
pattern Cu = $(bakeLanguage (Just "cu") "chu")

-- | Chuvash.
pattern Cv :: Language
pattern Cv = $(bakeLanguage (Just "cv") "chv")

-- | Welsh.
pattern Cy :: Language
pattern Cy = $(bakeLanguage (Just "cy") "cym")

-- | Danish.
pattern Da :: Language
pattern Da = $(bakeLanguage (Just "da") "dan")

-- | German.
pattern De :: Language
pattern De = $(bakeLanguage (Just "de") "deu")

-- | Dhivehi.
pattern Dv :: Language
pattern Dv = $(bakeLanguage (Just "dv") "div")

-- | Dzongkha.
pattern Dz :: Language
pattern Dz = $(bakeLanguage (Just "dz") "dzo")

-- | Ewe.
pattern Ee :: Language
pattern Ee = $(bakeLanguage (Just "ee") "ewe")

-- | Modern Greek (1453-).
pattern El :: Language
pattern El = $(bakeLanguage (Just "el") "ell")

-- | English.
pattern En :: Language
pattern En = $(bakeLanguage (Just "en") "eng")

-- | Esperanto.
pattern Eo :: Language
pattern Eo = $(bakeLanguage (Just "eo") "epo")

-- | Spanish.
pattern Es :: Language
pattern Es = $(bakeLanguage (Just "es") "spa")

-- | Estonian.
pattern Et :: Language
pattern Et = $(bakeLanguage (Just "et") "est")

-- | Basque.
pattern Eu :: Language
pattern Eu = $(bakeLanguage (Just "eu") "eus")

-- | Persian.
pattern Fa :: Language
pattern Fa = $(bakeLanguage (Just "fa") "fas")

-- | Fulah.
pattern Ff :: Language
pattern Ff = $(bakeLanguage (Just "ff") "ful")

-- | Finnish.
pattern Fi :: Language
pattern Fi = $(bakeLanguage (Just "fi") "fin")

-- | Fijian.
pattern Fj :: Language
pattern Fj = $(bakeLanguage (Just "fj") "fij")

-- | Faroese.
pattern Fo :: Language
pattern Fo = $(bakeLanguage (Just "fo") "fao")

-- | French.
pattern Fr :: Language
pattern Fr = $(bakeLanguage (Just "fr") "fra")

-- | Western Frisian.
pattern Fy :: Language
pattern Fy = $(bakeLanguage (Just "fy") "fry")

-- | Irish.
pattern Ga :: Language
pattern Ga = $(bakeLanguage (Just "ga") "gle")

-- | Scottish Gaelic.
pattern Gd :: Language
pattern Gd = $(bakeLanguage (Just "gd") "gla")

-- | Galician.
pattern Gl :: Language
pattern Gl = $(bakeLanguage (Just "gl") "glg")

-- | Guarani.
pattern Gn :: Language
pattern Gn = $(bakeLanguage (Just "gn") "grn")

-- | Gujarati.
pattern Gu :: Language
pattern Gu = $(bakeLanguage (Just "gu") "guj")

-- | Manx.
pattern Gv :: Language
pattern Gv = $(bakeLanguage (Just "gv") "glv")

-- | Hausa.
pattern Ha :: Language
pattern Ha = $(bakeLanguage (Just "ha") "hau")

-- | Hebrew.
pattern He :: Language
pattern He = $(bakeLanguage (Just "he") "heb")

-- | Hindi.
pattern Hi :: Language
pattern Hi = $(bakeLanguage (Just "hi") "hin")

-- | Hiri Motu.
pattern Ho :: Language
pattern Ho = $(bakeLanguage (Just "ho") "hmo")

-- | Croatian.
pattern Hr :: Language
pattern Hr = $(bakeLanguage (Just "hr") "hrv")

-- | Haitian.
pattern Ht :: Language
pattern Ht = $(bakeLanguage (Just "ht") "hat")

-- | Hungarian.
pattern Hu :: Language
pattern Hu = $(bakeLanguage (Just "hu") "hun")

-- | Armenian.
pattern Hy :: Language
pattern Hy = $(bakeLanguage (Just "hy") "hye")

-- | Herero.
pattern Hz :: Language
pattern Hz = $(bakeLanguage (Just "hz") "her")

-- | Interlingua (IALA).
pattern Ia :: Language
pattern Ia = $(bakeLanguage (Just "ia") "ina")

-- | Indonesian.
pattern Id :: Language
pattern Id = $(bakeLanguage (Just "id") "ind")

-- | Interlingue.
pattern Ie :: Language
pattern Ie = $(bakeLanguage (Just "ie") "ile")

-- | Igbo.
pattern Ig :: Language
pattern Ig = $(bakeLanguage (Just "ig") "ibo")

-- | Sichuan Yi.
pattern Ii :: Language
pattern Ii = $(bakeLanguage (Just "ii") "iii")

-- | Inupiaq.
pattern Ik :: Language
pattern Ik = $(bakeLanguage (Just "ik") "ipk")

-- | Ido.
pattern Io :: Language
pattern Io = $(bakeLanguage (Just "io") "ido")

-- | Icelandic.
pattern Is :: Language
pattern Is = $(bakeLanguage (Just "is") "isl")

-- | Italian.
pattern It :: Language
pattern It = $(bakeLanguage (Just "it") "ita")

-- | Inuktitut.
pattern Iu :: Language
pattern Iu = $(bakeLanguage (Just "iu") "iku")

-- | Japanese.
pattern Ja :: Language
pattern Ja = $(bakeLanguage (Just "ja") "jpn")

-- | Javanese.
pattern Jv :: Language
pattern Jv = $(bakeLanguage (Just "jv") "jav")

-- | Georgian.
pattern Ka :: Language
pattern Ka = $(bakeLanguage (Just "ka") "kat")

-- | Kongo.
pattern Kg :: Language
pattern Kg = $(bakeLanguage (Just "kg") "kon")

-- | Kikuyu.
pattern Ki :: Language
pattern Ki = $(bakeLanguage (Just "ki") "kik")

-- | Kuanyama.
pattern Kj :: Language
pattern Kj = $(bakeLanguage (Just "kj") "kua")

-- | Kazakh.
pattern Kk :: Language
pattern Kk = $(bakeLanguage (Just "kk") "kaz")

-- | Kalaallisut.
pattern Kl :: Language
pattern Kl = $(bakeLanguage (Just "kl") "kal")

-- | Khmer.
pattern Km :: Language
pattern Km = $(bakeLanguage (Just "km") "khm")

-- | Kannada.
pattern Kn :: Language
pattern Kn = $(bakeLanguage (Just "kn") "kan")

-- | Korean.
pattern Ko :: Language
pattern Ko = $(bakeLanguage (Just "ko") "kor")

-- | Kanuri.
pattern Kr :: Language
pattern Kr = $(bakeLanguage (Just "kr") "kau")

-- | Kashmiri.
pattern Ks :: Language
pattern Ks = $(bakeLanguage (Just "ks") "kas")

-- | Kurdish.
pattern Ku :: Language
pattern Ku = $(bakeLanguage (Just "ku") "kur")

-- | Komi.
pattern Kv :: Language
pattern Kv = $(bakeLanguage (Just "kv") "kom")

-- | Cornish.
pattern Kw :: Language
pattern Kw = $(bakeLanguage (Just "kw") "cor")

-- | Kirghiz.
pattern Ky :: Language
pattern Ky = $(bakeLanguage (Just "ky") "kir")

-- | Latin.
pattern La :: Language
pattern La = $(bakeLanguage (Just "la") "lat")

-- | Luxembourgish.
pattern Lb :: Language
pattern Lb = $(bakeLanguage (Just "lb") "ltz")

-- | Ganda.
pattern Lg :: Language
pattern Lg = $(bakeLanguage (Just "lg") "lug")

-- | Limburgan.
pattern Li :: Language
pattern Li = $(bakeLanguage (Just "li") "lim")

-- | Lingala.
pattern Ln :: Language
pattern Ln = $(bakeLanguage (Just "ln") "lin")

-- | Lao.
pattern Lo :: Language
pattern Lo = $(bakeLanguage (Just "lo") "lao")

-- | Lithuanian.
pattern Lt :: Language
pattern Lt = $(bakeLanguage (Just "lt") "lit")

-- | Luba-Katanga.
pattern Lu :: Language
pattern Lu = $(bakeLanguage (Just "lu") "lub")

-- | Latvian.
pattern Lv :: Language
pattern Lv = $(bakeLanguage (Just "lv") "lav")

-- | Malagasy.
pattern Mg :: Language
pattern Mg = $(bakeLanguage (Just "mg") "mlg")

-- | Marshallese.
pattern Mh :: Language
pattern Mh = $(bakeLanguage (Just "mh") "mah")

-- | Maori.
pattern Mi :: Language
pattern Mi = $(bakeLanguage (Just "mi") "mri")

-- | Macedonian.
pattern Mk :: Language
pattern Mk = $(bakeLanguage (Just "mk") "mkd")

-- | Malayalam.
pattern Ml :: Language
pattern Ml = $(bakeLanguage (Just "ml") "mal")

-- | Mongolian.
pattern Mn :: Language
pattern Mn = $(bakeLanguage (Just "mn") "mon")

-- | Marathi.
pattern Mr :: Language
pattern Mr = $(bakeLanguage (Just "mr") "mar")

-- | Malay (macrolanguage).
pattern Ms :: Language
pattern Ms = $(bakeLanguage (Just "ms") "msa")

-- | Maltese.
pattern Mt :: Language
pattern Mt = $(bakeLanguage (Just "mt") "mlt")

-- | Burmese.
pattern My :: Language
pattern My = $(bakeLanguage (Just "my") "mya")

-- | Nauru.
pattern Na :: Language
pattern Na = $(bakeLanguage (Just "na") "nau")

-- | Norwegian Bokmål.
pattern Nb :: Language
pattern Nb = $(bakeLanguage (Just "nb") "nob")

-- | North Ndebele.
pattern Nd :: Language
pattern Nd = $(bakeLanguage (Just "nd") "nde")

-- | Nepali (macrolanguage).
pattern Ne :: Language
pattern Ne = $(bakeLanguage (Just "ne") "nep")

-- | Ndonga.
pattern Ng :: Language
pattern Ng = $(bakeLanguage (Just "ng") "ndo")

-- | Dutch.
pattern Nl :: Language
pattern Nl = $(bakeLanguage (Just "nl") "nld")

-- | Norwegian Nynorsk.
pattern Nn :: Language
pattern Nn = $(bakeLanguage (Just "nn") "nno")

-- | Norwegian.
pattern No :: Language
pattern No = $(bakeLanguage (Just "no") "nor")

-- | South Ndebele.
pattern Nr :: Language
pattern Nr = $(bakeLanguage (Just "nr") "nbl")

-- | Navajo.
pattern Nv :: Language
pattern Nv = $(bakeLanguage (Just "nv") "nav")

-- | Chichewa.
pattern Ny :: Language
pattern Ny = $(bakeLanguage (Just "ny") "nya")

-- | Occitan (post 1500).
pattern Oc :: Language
pattern Oc = $(bakeLanguage (Just "oc") "oci")

-- | Ojibwa.
pattern Oj :: Language
pattern Oj = $(bakeLanguage (Just "oj") "oji")

-- | Oromo.
pattern Om :: Language
pattern Om = $(bakeLanguage (Just "om") "orm")

-- | Oriya (macrolanguage).
pattern Or :: Language
pattern Or = $(bakeLanguage (Just "or") "ori")

-- | Iron Ossetic.
pattern Os :: Language
pattern Os = $(bakeLanguage (Just "os") "oss")

-- | Panjabi.
pattern Pa :: Language
pattern Pa = $(bakeLanguage (Just "pa") "pan")

-- | Pali.
pattern Pi :: Language
pattern Pi = $(bakeLanguage (Just "pi") "pli")

-- | Polish.
pattern Pl :: Language
pattern Pl = $(bakeLanguage (Just "pl") "pol")

-- | Pushto.
pattern Ps :: Language
pattern Ps = $(bakeLanguage (Just "ps") "pus")

-- | Portuguese.
pattern Pt :: Language
pattern Pt = $(bakeLanguage (Just "pt") "por")

-- | Quechua.
pattern Qu :: Language
pattern Qu = $(bakeLanguage (Just "qu") "que")

-- | Romansh.
pattern Rm :: Language
pattern Rm = $(bakeLanguage (Just "rm") "roh")

-- | Rundi.
pattern Rn :: Language
pattern Rn = $(bakeLanguage (Just "rn") "run")

-- | Romanian.
pattern Ro :: Language
pattern Ro = $(bakeLanguage (Just "ro") "ron")

-- | Russian.
pattern Ru :: Language
pattern Ru = $(bakeLanguage (Just "ru") "rus")

-- | Kinyarwanda.
pattern Rw :: Language
pattern Rw = $(bakeLanguage (Just "rw") "kin")

-- | Sanskrit.
pattern Sa :: Language
pattern Sa = $(bakeLanguage (Just "sa") "san")

-- | Sardinian.
pattern Sc :: Language
pattern Sc = $(bakeLanguage (Just "sc") "srd")

-- | Sindhi.
pattern Sd :: Language
pattern Sd = $(bakeLanguage (Just "sd") "snd")

-- | Northern Sami.
pattern Se :: Language
pattern Se = $(bakeLanguage (Just "se") "sme")

-- | Sango.
pattern Sg :: Language
pattern Sg = $(bakeLanguage (Just "sg") "sag")

-- | Sinhala.
pattern Si :: Language
pattern Si = $(bakeLanguage (Just "si") "sin")

-- | Slovak.
pattern Sk :: Language
pattern Sk = $(bakeLanguage (Just "sk") "slk")

-- | Slovenian.
pattern Sl :: Language
pattern Sl = $(bakeLanguage (Just "sl") "slv")

-- | Samoan.
pattern Sm :: Language
pattern Sm = $(bakeLanguage (Just "sm") "smo")

-- | Shona.
pattern Sn :: Language
pattern Sn = $(bakeLanguage (Just "sn") "sna")

-- | Somali.
pattern So :: Language
pattern So = $(bakeLanguage (Just "so") "som")

-- | Albanian.
pattern Sq :: Language
pattern Sq = $(bakeLanguage (Just "sq") "sqi")

-- | Serbian.
pattern Sr :: Language
pattern Sr = $(bakeLanguage (Just "sr") "srp")

-- | Swati.
pattern Ss :: Language
pattern Ss = $(bakeLanguage (Just "ss") "ssw")

-- | Southern Sotho.
pattern St :: Language
pattern St = $(bakeLanguage (Just "st") "sot")

-- | Sundanese.
pattern Su :: Language
pattern Su = $(bakeLanguage (Just "su") "sun")

-- | Swedish.
pattern Sv :: Language
pattern Sv = $(bakeLanguage (Just "sv") "swe")

-- | Swahili (macrolanguage).
pattern Sw :: Language
pattern Sw = $(bakeLanguage (Just "sw") "swa")

-- | Tamil.
pattern Ta :: Language
pattern Ta = $(bakeLanguage (Just "ta") "tam")

-- | Telugu.
pattern Te :: Language
pattern Te = $(bakeLanguage (Just "te") "tel")

-- | Tajik.
pattern Tg :: Language
pattern Tg = $(bakeLanguage (Just "tg") "tgk")

-- | Thai.
pattern Th :: Language
pattern Th = $(bakeLanguage (Just "th") "tha")

-- | Tigrinya.
pattern Ti :: Language
pattern Ti = $(bakeLanguage (Just "ti") "tir")

-- | Turkmen.
pattern Tk :: Language
pattern Tk = $(bakeLanguage (Just "tk") "tuk")

-- | Tagalog.
pattern Tl :: Language
pattern Tl = $(bakeLanguage (Just "tl") "tgl")

-- | Tswana.
pattern Tn :: Language
pattern Tn = $(bakeLanguage (Just "tn") "tsn")

-- | Tonga (Tonga Islands).
pattern To :: Language
pattern To = $(bakeLanguage (Just "to") "ton")

-- | Turkish.
pattern Tr :: Language
pattern Tr = $(bakeLanguage (Just "tr") "tur")

-- | Tsonga.
pattern Ts :: Language
pattern Ts = $(bakeLanguage (Just "ts") "tso")

-- | Tatar.
pattern Tt :: Language
pattern Tt = $(bakeLanguage (Just "tt") "tat")

-- | Twi.
pattern Tw :: Language
pattern Tw = $(bakeLanguage (Just "tw") "twi")

-- | Tahitian.
pattern Ty :: Language
pattern Ty = $(bakeLanguage (Just "ty") "tah")

-- | Uighur.
pattern Ug :: Language
pattern Ug = $(bakeLanguage (Just "ug") "uig")

-- | Ukrainian.
pattern Uk :: Language
pattern Uk = $(bakeLanguage (Just "uk") "ukr")

-- | Urdu.
pattern Ur :: Language
pattern Ur = $(bakeLanguage (Just "ur") "urd")

-- | Uzbek.
pattern Uz :: Language
pattern Uz = $(bakeLanguage (Just "uz") "uzb")

-- | Venda.
pattern Ve :: Language
pattern Ve = $(bakeLanguage (Just "ve") "ven")

-- | Vietnamese.
pattern Vi :: Language
pattern Vi = $(bakeLanguage (Just "vi") "vie")

-- | Volapük.
pattern Vo :: Language
pattern Vo = $(bakeLanguage (Just "vo") "vol")

-- | Walloon.
pattern Wa :: Language
pattern Wa = $(bakeLanguage (Just "wa") "wln")

-- | Wolof.
pattern Wo :: Language
pattern Wo = $(bakeLanguage (Just "wo") "wol")

-- | Xhosa.
pattern Xh :: Language
pattern Xh = $(bakeLanguage (Just "xh") "xho")

-- | Yiddish.
pattern Yi :: Language
pattern Yi = $(bakeLanguage (Just "yi") "yid")

-- | Yoruba.
pattern Yo :: Language
pattern Yo = $(bakeLanguage (Just "yo") "yor")

-- | Zhuang.
pattern Za :: Language
pattern Za = $(bakeLanguage (Just "za") "zha")

-- | Chinese.
pattern Zh :: Language
pattern Zh = $(bakeLanguage (Just "zh") "zho")

-- | Zulu.
pattern Zu :: Language
pattern Zu = $(bakeLanguage (Just "zu") "zul")

-- | Ghotuo.
pattern Aaa :: Language
pattern Aaa = $(bakeLanguage Nothing "aaa")

-- | Alumu-Tesu.
pattern Aab :: Language
pattern Aab = $(bakeLanguage Nothing "aab")

-- | Ari.
pattern Aac :: Language
pattern Aac = $(bakeLanguage Nothing "aac")

-- | Amal.
pattern Aad :: Language
pattern Aad = $(bakeLanguage Nothing "aad")

-- | Arbëreshë Albanian.
pattern Aae :: Language
pattern Aae = $(bakeLanguage Nothing "aae")

-- | Aranadan.
pattern Aaf :: Language
pattern Aaf = $(bakeLanguage Nothing "aaf")

-- | Ambrak.
pattern Aag :: Language
pattern Aag = $(bakeLanguage Nothing "aag")

-- | Abu' Arapesh.
pattern Aah :: Language
pattern Aah = $(bakeLanguage Nothing "aah")

-- | Arifama-Miniafia.
pattern Aai :: Language
pattern Aai = $(bakeLanguage Nothing "aai")

-- | Ankave.
pattern Aak :: Language
pattern Aak = $(bakeLanguage Nothing "aak")

-- | Afade.
pattern Aal :: Language
pattern Aal = $(bakeLanguage Nothing "aal")

-- | Anambé.
pattern Aan :: Language
pattern Aan = $(bakeLanguage Nothing "aan")

-- | Algerian Saharan Arabic.
pattern Aao :: Language
pattern Aao = $(bakeLanguage Nothing "aao")

-- | Pará Arára.
pattern Aap :: Language
pattern Aap = $(bakeLanguage Nothing "aap")

-- | Eastern Abnaki.
pattern Aaq :: Language
pattern Aaq = $(bakeLanguage Nothing "aaq")

-- | Aasáx.
pattern Aas :: Language
pattern Aas = $(bakeLanguage Nothing "aas")

-- | Arvanitika Albanian.
pattern Aat :: Language
pattern Aat = $(bakeLanguage Nothing "aat")

-- | Abau.
pattern Aau :: Language
pattern Aau = $(bakeLanguage Nothing "aau")

-- | Solong.
pattern Aaw :: Language
pattern Aaw = $(bakeLanguage Nothing "aaw")

-- | Mandobo Atas.
pattern Aax :: Language
pattern Aax = $(bakeLanguage Nothing "aax")

-- | Amarasi.
pattern Aaz :: Language
pattern Aaz = $(bakeLanguage Nothing "aaz")

-- | Abé.
pattern Aba :: Language
pattern Aba = $(bakeLanguage Nothing "aba")

-- | Bankon.
pattern Abb :: Language
pattern Abb = $(bakeLanguage Nothing "abb")

-- | Ambala Ayta.
pattern Abc :: Language
pattern Abc = $(bakeLanguage Nothing "abc")

-- | Manide.
pattern Abd :: Language
pattern Abd = $(bakeLanguage Nothing "abd")

-- | Western Abnaki.
pattern Abe :: Language
pattern Abe = $(bakeLanguage Nothing "abe")

-- | Abai Sungai.
pattern Abf :: Language
pattern Abf = $(bakeLanguage Nothing "abf")

-- | Abaga.
pattern Abg :: Language
pattern Abg = $(bakeLanguage Nothing "abg")

-- | Tajiki Arabic.
pattern Abh :: Language
pattern Abh = $(bakeLanguage Nothing "abh")

-- | Abidji.
pattern Abi :: Language
pattern Abi = $(bakeLanguage Nothing "abi")

-- | Aka-Bea.
pattern Abj :: Language
pattern Abj = $(bakeLanguage Nothing "abj")

-- | Lampung Nyo.
pattern Abl :: Language
pattern Abl = $(bakeLanguage Nothing "abl")

-- | Abanyom.
pattern Abm :: Language
pattern Abm = $(bakeLanguage Nothing "abm")

-- | Abua.
pattern Abn :: Language
pattern Abn = $(bakeLanguage Nothing "abn")

-- | Abon.
pattern Abo :: Language
pattern Abo = $(bakeLanguage Nothing "abo")

-- | Abellen Ayta.
pattern Abp :: Language
pattern Abp = $(bakeLanguage Nothing "abp")

-- | Abaza.
pattern Abq :: Language
pattern Abq = $(bakeLanguage Nothing "abq")

-- | Abron.
pattern Abr :: Language
pattern Abr = $(bakeLanguage Nothing "abr")

-- | Ambonese Malay.
pattern Abs :: Language
pattern Abs = $(bakeLanguage Nothing "abs")

-- | Ambulas.
pattern Abt :: Language
pattern Abt = $(bakeLanguage Nothing "abt")

-- | Abure.
pattern Abu :: Language
pattern Abu = $(bakeLanguage Nothing "abu")

-- | Baharna Arabic.
pattern Abv :: Language
pattern Abv = $(bakeLanguage Nothing "abv")

-- | Pal.
pattern Abw :: Language
pattern Abw = $(bakeLanguage Nothing "abw")

-- | Inabaknon.
pattern Abx :: Language
pattern Abx = $(bakeLanguage Nothing "abx")

-- | Aneme Wake.
pattern Aby :: Language
pattern Aby = $(bakeLanguage Nothing "aby")

-- | Abui.
pattern Abz :: Language
pattern Abz = $(bakeLanguage Nothing "abz")

-- | Achagua.
pattern Aca :: Language
pattern Aca = $(bakeLanguage Nothing "aca")

-- | Áncá.
pattern Acb :: Language
pattern Acb = $(bakeLanguage Nothing "acb")

-- | Gikyode.
pattern Acd :: Language
pattern Acd = $(bakeLanguage Nothing "acd")

-- | Achinese.
pattern Ace :: Language
pattern Ace = $(bakeLanguage Nothing "ace")

-- | Saint Lucian Creole French.
pattern Acf :: Language
pattern Acf = $(bakeLanguage Nothing "acf")

-- | Acoli.
pattern Ach :: Language
pattern Ach = $(bakeLanguage Nothing "ach")

-- | Aka-Cari.
pattern Aci :: Language
pattern Aci = $(bakeLanguage Nothing "aci")

-- | Aka-Kora.
pattern Ack :: Language
pattern Ack = $(bakeLanguage Nothing "ack")

-- | Akar-Bale.
pattern Acl :: Language
pattern Acl = $(bakeLanguage Nothing "acl")

-- | Mesopotamian Arabic.
pattern Acm :: Language
pattern Acm = $(bakeLanguage Nothing "acm")

-- | Achang.
pattern Acn :: Language
pattern Acn = $(bakeLanguage Nothing "acn")

-- | Eastern Acipa.
pattern Acp :: Language
pattern Acp = $(bakeLanguage Nothing "acp")

-- | Ta'izzi-Adeni Arabic.
pattern Acq :: Language
pattern Acq = $(bakeLanguage Nothing "acq")

-- | Achi.
pattern Acr :: Language
pattern Acr = $(bakeLanguage Nothing "acr")

-- | Acroá.
pattern Acs :: Language
pattern Acs = $(bakeLanguage Nothing "acs")

-- | Achterhoeks.
pattern Act :: Language
pattern Act = $(bakeLanguage Nothing "act")

-- | Achuar-Shiwiar.
pattern Acu :: Language
pattern Acu = $(bakeLanguage Nothing "acu")

-- | Achumawi.
pattern Acv :: Language
pattern Acv = $(bakeLanguage Nothing "acv")

-- | Hijazi Arabic.
pattern Acw :: Language
pattern Acw = $(bakeLanguage Nothing "acw")

-- | Omani Arabic.
pattern Acx :: Language
pattern Acx = $(bakeLanguage Nothing "acx")

-- | Cypriot Arabic.
pattern Acy :: Language
pattern Acy = $(bakeLanguage Nothing "acy")

-- | Acheron.
pattern Acz :: Language
pattern Acz = $(bakeLanguage Nothing "acz")

-- | Adangme.
pattern Ada :: Language
pattern Ada = $(bakeLanguage Nothing "ada")

-- | Atauran.
pattern Adb :: Language
pattern Adb = $(bakeLanguage Nothing "adb")

-- | Lidzonka.
pattern Add :: Language
pattern Add = $(bakeLanguage Nothing "add")

-- | Adele.
pattern Ade :: Language
pattern Ade = $(bakeLanguage Nothing "ade")

-- | Dhofari Arabic.
pattern Adf :: Language
pattern Adf = $(bakeLanguage Nothing "adf")

-- | Andegerebinha.
pattern Adg :: Language
pattern Adg = $(bakeLanguage Nothing "adg")

-- | Adhola.
pattern Adh :: Language
pattern Adh = $(bakeLanguage Nothing "adh")

-- | Adi.
pattern Adi :: Language
pattern Adi = $(bakeLanguage Nothing "adi")

-- | Adioukrou.
pattern Adj :: Language
pattern Adj = $(bakeLanguage Nothing "adj")

-- | Galo.
pattern Adl :: Language
pattern Adl = $(bakeLanguage Nothing "adl")

-- | Adang.
pattern Adn :: Language
pattern Adn = $(bakeLanguage Nothing "adn")

-- | Abu.
pattern Ado :: Language
pattern Ado = $(bakeLanguage Nothing "ado")

-- | Adangbe.
pattern Adq :: Language
pattern Adq = $(bakeLanguage Nothing "adq")

-- | Adonara.
pattern Adr :: Language
pattern Adr = $(bakeLanguage Nothing "adr")

-- | Adamorobe Sign Language.
pattern Ads :: Language
pattern Ads = $(bakeLanguage Nothing "ads")

-- | Adnyamathanha.
pattern Adt :: Language
pattern Adt = $(bakeLanguage Nothing "adt")

-- | Aduge.
pattern Adu :: Language
pattern Adu = $(bakeLanguage Nothing "adu")

-- | Amundava.
pattern Adw :: Language
pattern Adw = $(bakeLanguage Nothing "adw")

-- | Amdo Tibetan.
pattern Adx :: Language
pattern Adx = $(bakeLanguage Nothing "adx")

-- | Adyghe.
pattern Ady :: Language
pattern Ady = $(bakeLanguage Nothing "ady")

-- | Adzera.
pattern Adz :: Language
pattern Adz = $(bakeLanguage Nothing "adz")

-- | Areba.
pattern Aea :: Language
pattern Aea = $(bakeLanguage Nothing "aea")

-- | Tunisian Arabic.
pattern Aeb :: Language
pattern Aeb = $(bakeLanguage Nothing "aeb")

-- | Saidi Arabic.
pattern Aec :: Language
pattern Aec = $(bakeLanguage Nothing "aec")

-- | Argentine Sign Language.
pattern Aed :: Language
pattern Aed = $(bakeLanguage Nothing "aed")

-- | Northeast Pashai.
pattern Aee :: Language
pattern Aee = $(bakeLanguage Nothing "aee")

-- | Haeke.
pattern Aek :: Language
pattern Aek = $(bakeLanguage Nothing "aek")

-- | Ambele.
pattern Ael :: Language
pattern Ael = $(bakeLanguage Nothing "ael")

-- | Arem.
pattern Aem :: Language
pattern Aem = $(bakeLanguage Nothing "aem")

-- | Armenian Sign Language.
pattern Aen :: Language
pattern Aen = $(bakeLanguage Nothing "aen")

-- | Aer.
pattern Aeq :: Language
pattern Aeq = $(bakeLanguage Nothing "aeq")

-- | Eastern Arrernte.
pattern Aer :: Language
pattern Aer = $(bakeLanguage Nothing "aer")

-- | Alsea.
pattern Aes :: Language
pattern Aes = $(bakeLanguage Nothing "aes")

-- | Akeu.
pattern Aeu :: Language
pattern Aeu = $(bakeLanguage Nothing "aeu")

-- | Ambakich.
pattern Aew :: Language
pattern Aew = $(bakeLanguage Nothing "aew")

-- | Amele.
pattern Aey :: Language
pattern Aey = $(bakeLanguage Nothing "aey")

-- | Aeka.
pattern Aez :: Language
pattern Aez = $(bakeLanguage Nothing "aez")

-- | Gulf Arabic.
pattern Afb :: Language
pattern Afb = $(bakeLanguage Nothing "afb")

-- | Andai.
pattern Afd :: Language
pattern Afd = $(bakeLanguage Nothing "afd")

-- | Putukwam.
pattern Afe :: Language
pattern Afe = $(bakeLanguage Nothing "afe")

-- | Afghan Sign Language.
pattern Afg :: Language
pattern Afg = $(bakeLanguage Nothing "afg")

-- | Afrihili.
pattern Afh :: Language
pattern Afh = $(bakeLanguage Nothing "afh")

-- | Akrukay.
pattern Afi :: Language
pattern Afi = $(bakeLanguage Nothing "afi")

-- | Nanubae.
pattern Afk :: Language
pattern Afk = $(bakeLanguage Nothing "afk")

-- | Defaka.
pattern Afn :: Language
pattern Afn = $(bakeLanguage Nothing "afn")

-- | Eloyi.
pattern Afo :: Language
pattern Afo = $(bakeLanguage Nothing "afo")

-- | Tapei.
pattern Afp :: Language
pattern Afp = $(bakeLanguage Nothing "afp")

-- | Afro-Seminole Creole.
pattern Afs :: Language
pattern Afs = $(bakeLanguage Nothing "afs")

-- | Afitti.
pattern Aft :: Language
pattern Aft = $(bakeLanguage Nothing "aft")

-- | Awutu.
pattern Afu :: Language
pattern Afu = $(bakeLanguage Nothing "afu")

-- | Obokuitai.
pattern Afz :: Language
pattern Afz = $(bakeLanguage Nothing "afz")

-- | Aguano.
pattern Aga :: Language
pattern Aga = $(bakeLanguage Nothing "aga")

-- | Legbo.
pattern Agb :: Language
pattern Agb = $(bakeLanguage Nothing "agb")

-- | Agatu.
pattern Agc :: Language
pattern Agc = $(bakeLanguage Nothing "agc")

-- | Agarabi.
pattern Agd :: Language
pattern Agd = $(bakeLanguage Nothing "agd")

-- | Angal.
pattern Age :: Language
pattern Age = $(bakeLanguage Nothing "age")

-- | Arguni.
pattern Agf :: Language
pattern Agf = $(bakeLanguage Nothing "agf")

-- | Angor.
pattern Agg :: Language
pattern Agg = $(bakeLanguage Nothing "agg")

-- | Ngelima.
pattern Agh :: Language
pattern Agh = $(bakeLanguage Nothing "agh")

-- | Agariya.
pattern Agi :: Language
pattern Agi = $(bakeLanguage Nothing "agi")

-- | Argobba.
pattern Agj :: Language
pattern Agj = $(bakeLanguage Nothing "agj")

-- | Isarog Agta.
pattern Agk :: Language
pattern Agk = $(bakeLanguage Nothing "agk")

-- | Fembe.
pattern Agl :: Language
pattern Agl = $(bakeLanguage Nothing "agl")

-- | Angaataha.
pattern Agm :: Language
pattern Agm = $(bakeLanguage Nothing "agm")

-- | Agutaynen.
pattern Agn :: Language
pattern Agn = $(bakeLanguage Nothing "agn")

-- | Tainae.
pattern Ago :: Language
pattern Ago = $(bakeLanguage Nothing "ago")

-- | Aghem.
pattern Agq :: Language
pattern Agq = $(bakeLanguage Nothing "agq")

-- | Aguaruna.
pattern Agr :: Language
pattern Agr = $(bakeLanguage Nothing "agr")

-- | Esimbi.
pattern Ags :: Language
pattern Ags = $(bakeLanguage Nothing "ags")

-- | Central Cagayan Agta.
pattern Agt :: Language
pattern Agt = $(bakeLanguage Nothing "agt")

-- | Aguacateco.
pattern Agu :: Language
pattern Agu = $(bakeLanguage Nothing "agu")

-- | Remontado Dumagat.
pattern Agv :: Language
pattern Agv = $(bakeLanguage Nothing "agv")

-- | Kahua.
pattern Agw :: Language
pattern Agw = $(bakeLanguage Nothing "agw")

-- | Aghul.
pattern Agx :: Language
pattern Agx = $(bakeLanguage Nothing "agx")

-- | Southern Alta.
pattern Agy :: Language
pattern Agy = $(bakeLanguage Nothing "agy")

-- | Mt. Iriga Agta.
pattern Agz :: Language
pattern Agz = $(bakeLanguage Nothing "agz")

-- | Ahanta.
pattern Aha :: Language
pattern Aha = $(bakeLanguage Nothing "aha")

-- | Axamb.
pattern Ahb :: Language
pattern Ahb = $(bakeLanguage Nothing "ahb")

-- | Qimant.
pattern Ahg :: Language
pattern Ahg = $(bakeLanguage Nothing "ahg")

-- | Aghu.
pattern Ahh :: Language
pattern Ahh = $(bakeLanguage Nothing "ahh")

-- | Tiagbamrin Aizi.
pattern Ahi :: Language
pattern Ahi = $(bakeLanguage Nothing "ahi")

-- | Akha.
pattern Ahk :: Language
pattern Ahk = $(bakeLanguage Nothing "ahk")

-- | Igo.
pattern Ahl :: Language
pattern Ahl = $(bakeLanguage Nothing "ahl")

-- | Mobumrin Aizi.
pattern Ahm :: Language
pattern Ahm = $(bakeLanguage Nothing "ahm")

-- | Àhàn.
pattern Ahn :: Language
pattern Ahn = $(bakeLanguage Nothing "ahn")

-- | Ahom.
pattern Aho :: Language
pattern Aho = $(bakeLanguage Nothing "aho")

-- | Aproumu Aizi.
pattern Ahp :: Language
pattern Ahp = $(bakeLanguage Nothing "ahp")

-- | Ahirani.
pattern Ahr :: Language
pattern Ahr = $(bakeLanguage Nothing "ahr")

-- | Ashe.
pattern Ahs :: Language
pattern Ahs = $(bakeLanguage Nothing "ahs")

-- | Ahtena.
pattern Aht :: Language
pattern Aht = $(bakeLanguage Nothing "aht")

-- | Arosi.
pattern Aia :: Language
pattern Aia = $(bakeLanguage Nothing "aia")

-- | Ainu (China).
pattern Aib :: Language
pattern Aib = $(bakeLanguage Nothing "aib")

-- | Ainbai.
pattern Aic :: Language
pattern Aic = $(bakeLanguage Nothing "aic")

-- | Alngith.
pattern Aid :: Language
pattern Aid = $(bakeLanguage Nothing "aid")

-- | Amara.
pattern Aie :: Language
pattern Aie = $(bakeLanguage Nothing "aie")

-- | Agi.
pattern Aif :: Language
pattern Aif = $(bakeLanguage Nothing "aif")

-- | Antigua and Barbuda Creole English.
pattern Aig :: Language
pattern Aig = $(bakeLanguage Nothing "aig")

-- | Ai-Cham.
pattern Aih :: Language
pattern Aih = $(bakeLanguage Nothing "aih")

-- | Assyrian Neo-Aramaic.
pattern Aii :: Language
pattern Aii = $(bakeLanguage Nothing "aii")

-- | Lishanid Noshan.
pattern Aij :: Language
pattern Aij = $(bakeLanguage Nothing "aij")

-- | Ake.
pattern Aik :: Language
pattern Aik = $(bakeLanguage Nothing "aik")

-- | Aimele.
pattern Ail :: Language
pattern Ail = $(bakeLanguage Nothing "ail")

-- | Aimol.
pattern Aim :: Language
pattern Aim = $(bakeLanguage Nothing "aim")

-- | Ainu (Japan).
pattern Ain :: Language
pattern Ain = $(bakeLanguage Nothing "ain")

-- | Aiton.
pattern Aio :: Language
pattern Aio = $(bakeLanguage Nothing "aio")

-- | Burumakok.
pattern Aip :: Language
pattern Aip = $(bakeLanguage Nothing "aip")

-- | Aimaq.
pattern Aiq :: Language
pattern Aiq = $(bakeLanguage Nothing "aiq")

-- | Airoran.
pattern Air :: Language
pattern Air = $(bakeLanguage Nothing "air")

-- | Arikem.
pattern Ait :: Language
pattern Ait = $(bakeLanguage Nothing "ait")

-- | Aari.
pattern Aiw :: Language
pattern Aiw = $(bakeLanguage Nothing "aiw")

-- | Aighon.
pattern Aix :: Language
pattern Aix = $(bakeLanguage Nothing "aix")

-- | Ali.
pattern Aiy :: Language
pattern Aiy = $(bakeLanguage Nothing "aiy")

-- | Aja (South Sudan).
pattern Aja :: Language
pattern Aja = $(bakeLanguage Nothing "aja")

-- | Aja (Benin).
pattern Ajg :: Language
pattern Ajg = $(bakeLanguage Nothing "ajg")

-- | Ajië.
pattern Aji :: Language
pattern Aji = $(bakeLanguage Nothing "aji")

-- | Andajin.
pattern Ajn :: Language
pattern Ajn = $(bakeLanguage Nothing "ajn")

-- | Algerian Jewish Sign Language.
pattern Ajs :: Language
pattern Ajs = $(bakeLanguage Nothing "ajs")

-- | Judeo-Moroccan Arabic.
pattern Aju :: Language
pattern Aju = $(bakeLanguage Nothing "aju")

-- | Ajawa.
pattern Ajw :: Language
pattern Ajw = $(bakeLanguage Nothing "ajw")

-- | Amri Karbi.
pattern Ajz :: Language
pattern Ajz = $(bakeLanguage Nothing "ajz")

-- | Batak Angkola.
pattern Akb :: Language
pattern Akb = $(bakeLanguage Nothing "akb")

-- | Mpur.
pattern Akc :: Language
pattern Akc = $(bakeLanguage Nothing "akc")

-- | Ukpet-Ehom.
pattern Akd :: Language
pattern Akd = $(bakeLanguage Nothing "akd")

-- | Akawaio.
pattern Ake :: Language
pattern Ake = $(bakeLanguage Nothing "ake")

-- | Akpa.
pattern Akf :: Language
pattern Akf = $(bakeLanguage Nothing "akf")

-- | Anakalangu.
pattern Akg :: Language
pattern Akg = $(bakeLanguage Nothing "akg")

-- | Angal Heneng.
pattern Akh :: Language
pattern Akh = $(bakeLanguage Nothing "akh")

-- | Aiome.
pattern Aki :: Language
pattern Aki = $(bakeLanguage Nothing "aki")

-- | Aka-Jeru.
pattern Akj :: Language
pattern Akj = $(bakeLanguage Nothing "akj")

-- | Akkadian.
pattern Akk :: Language
pattern Akk = $(bakeLanguage Nothing "akk")

-- | Aklanon.
pattern Akl :: Language
pattern Akl = $(bakeLanguage Nothing "akl")

-- | Aka-Bo.
pattern Akm :: Language
pattern Akm = $(bakeLanguage Nothing "akm")

-- | Akurio.
pattern Ako :: Language
pattern Ako = $(bakeLanguage Nothing "ako")

-- | Siwu.
pattern Akp :: Language
pattern Akp = $(bakeLanguage Nothing "akp")

-- | Ak.
pattern Akq :: Language
pattern Akq = $(bakeLanguage Nothing "akq")

-- | Araki.
pattern Akr :: Language
pattern Akr = $(bakeLanguage Nothing "akr")

-- | Akaselem.
pattern Aks :: Language
pattern Aks = $(bakeLanguage Nothing "aks")

-- | Akolet.
pattern Akt :: Language
pattern Akt = $(bakeLanguage Nothing "akt")

-- | Akum.
pattern Aku :: Language
pattern Aku = $(bakeLanguage Nothing "aku")

-- | Akhvakh.
pattern Akv :: Language
pattern Akv = $(bakeLanguage Nothing "akv")

-- | Akwa.
pattern Akw :: Language
pattern Akw = $(bakeLanguage Nothing "akw")

-- | Aka-Kede.
pattern Akx :: Language
pattern Akx = $(bakeLanguage Nothing "akx")

-- | Aka-Kol.
pattern Aky :: Language
pattern Aky = $(bakeLanguage Nothing "aky")

-- | Alabama.
pattern Akz :: Language
pattern Akz = $(bakeLanguage Nothing "akz")

-- | Alago.
pattern Ala :: Language
pattern Ala = $(bakeLanguage Nothing "ala")

-- | Qawasqar.
pattern Alc :: Language
pattern Alc = $(bakeLanguage Nothing "alc")

-- | Alladian.
pattern Ald :: Language
pattern Ald = $(bakeLanguage Nothing "ald")

-- | Aleut.
pattern Ale :: Language
pattern Ale = $(bakeLanguage Nothing "ale")

-- | Alege.
pattern Alf :: Language
pattern Alf = $(bakeLanguage Nothing "alf")

-- | Alawa.
pattern Alh :: Language
pattern Alh = $(bakeLanguage Nothing "alh")

-- | Amaimon.
pattern Ali :: Language
pattern Ali = $(bakeLanguage Nothing "ali")

-- | Alangan.
pattern Alj :: Language
pattern Alj = $(bakeLanguage Nothing "alj")

-- | Alak.
pattern Alk :: Language
pattern Alk = $(bakeLanguage Nothing "alk")

-- | Allar.
pattern All :: Language
pattern All = $(bakeLanguage Nothing "all")

-- | Amblong.
pattern Alm :: Language
pattern Alm = $(bakeLanguage Nothing "alm")

-- | Gheg Albanian.
pattern Aln :: Language
pattern Aln = $(bakeLanguage Nothing "aln")

-- | Larike-Wakasihu.
pattern Alo :: Language
pattern Alo = $(bakeLanguage Nothing "alo")

-- | Alune.
pattern Alp :: Language
pattern Alp = $(bakeLanguage Nothing "alp")

-- | Algonquin.
pattern Alq :: Language
pattern Alq = $(bakeLanguage Nothing "alq")

-- | Alutor.
pattern Alr :: Language
pattern Alr = $(bakeLanguage Nothing "alr")

-- | Tosk Albanian.
pattern Als :: Language
pattern Als = $(bakeLanguage Nothing "als")

-- | Southern Altai.
pattern Alt :: Language
pattern Alt = $(bakeLanguage Nothing "alt")

-- | 'Are'are.
pattern Alu :: Language
pattern Alu = $(bakeLanguage Nothing "alu")

-- | Alaba-K’abeena.
pattern Alw :: Language
pattern Alw = $(bakeLanguage Nothing "alw")

-- | Amol.
pattern Alx :: Language
pattern Alx = $(bakeLanguage Nothing "alx")

-- | Alyawarr.
pattern Aly :: Language
pattern Aly = $(bakeLanguage Nothing "aly")

-- | Alur.
pattern Alz :: Language
pattern Alz = $(bakeLanguage Nothing "alz")

-- | Amanayé.
pattern Ama :: Language
pattern Ama = $(bakeLanguage Nothing "ama")

-- | Ambo.
pattern Amb :: Language
pattern Amb = $(bakeLanguage Nothing "amb")

-- | Amahuaca.
pattern Amc :: Language
pattern Amc = $(bakeLanguage Nothing "amc")

-- | Yanesha'.
pattern Ame :: Language
pattern Ame = $(bakeLanguage Nothing "ame")

-- | Hamer-Banna.
pattern Amf :: Language
pattern Amf = $(bakeLanguage Nothing "amf")

-- | Amurdak.
pattern Amg :: Language
pattern Amg = $(bakeLanguage Nothing "amg")

-- | Amis.
pattern Ami :: Language
pattern Ami = $(bakeLanguage Nothing "ami")

-- | Amdang.
pattern Amj :: Language
pattern Amj = $(bakeLanguage Nothing "amj")

-- | Ambai.
pattern Amk :: Language
pattern Amk = $(bakeLanguage Nothing "amk")

-- | War-Jaintia.
pattern Aml :: Language
pattern Aml = $(bakeLanguage Nothing "aml")

-- | Ama (Papua New Guinea).
pattern Amm :: Language
pattern Amm = $(bakeLanguage Nothing "amm")

-- | Amanab.
pattern Amn :: Language
pattern Amn = $(bakeLanguage Nothing "amn")

-- | Amo.
pattern Amo :: Language
pattern Amo = $(bakeLanguage Nothing "amo")

-- | Alamblak.
pattern Amp :: Language
pattern Amp = $(bakeLanguage Nothing "amp")

-- | Amahai.
pattern Amq :: Language
pattern Amq = $(bakeLanguage Nothing "amq")

-- | Amarakaeri.
pattern Amr :: Language
pattern Amr = $(bakeLanguage Nothing "amr")

-- | Southern Amami-Oshima.
pattern Ams :: Language
pattern Ams = $(bakeLanguage Nothing "ams")

-- | Amto.
pattern Amt :: Language
pattern Amt = $(bakeLanguage Nothing "amt")

-- | Guerrero Amuzgo.
pattern Amu :: Language
pattern Amu = $(bakeLanguage Nothing "amu")

-- | Ambelau.
pattern Amv :: Language
pattern Amv = $(bakeLanguage Nothing "amv")

-- | Western Neo-Aramaic.
pattern Amw :: Language
pattern Amw = $(bakeLanguage Nothing "amw")

-- | Anmatyerre.
pattern Amx :: Language
pattern Amx = $(bakeLanguage Nothing "amx")

-- | Ami.
pattern Amy :: Language
pattern Amy = $(bakeLanguage Nothing "amy")

-- | Atampaya.
pattern Amz :: Language
pattern Amz = $(bakeLanguage Nothing "amz")

-- | Andaqui.
pattern Ana :: Language
pattern Ana = $(bakeLanguage Nothing "ana")

-- | Andoa.
pattern Anb :: Language
pattern Anb = $(bakeLanguage Nothing "anb")

-- | Ngas.
pattern Anc :: Language
pattern Anc = $(bakeLanguage Nothing "anc")

-- | Ansus.
pattern And :: Language
pattern And = $(bakeLanguage Nothing "and")

-- | Xârâcùù.
pattern Ane :: Language
pattern Ane = $(bakeLanguage Nothing "ane")

-- | Animere.
pattern Anf :: Language
pattern Anf = $(bakeLanguage Nothing "anf")

-- | Old English (ca. 450-1100).
pattern Ang :: Language
pattern Ang = $(bakeLanguage Nothing "ang")

-- | Nend.
pattern Anh :: Language
pattern Anh = $(bakeLanguage Nothing "anh")

-- | Andi.
pattern Ani :: Language
pattern Ani = $(bakeLanguage Nothing "ani")

-- | Anor.
pattern Anj :: Language
pattern Anj = $(bakeLanguage Nothing "anj")

-- | Goemai.
pattern Ank :: Language
pattern Ank = $(bakeLanguage Nothing "ank")

-- | Anu-Hkongso Chin.
pattern Anl :: Language
pattern Anl = $(bakeLanguage Nothing "anl")

-- | Anal.
pattern Anm :: Language
pattern Anm = $(bakeLanguage Nothing "anm")

-- | Obolo.
pattern Ann :: Language
pattern Ann = $(bakeLanguage Nothing "ann")

-- | Andoque.
pattern Ano :: Language
pattern Ano = $(bakeLanguage Nothing "ano")

-- | Angika.
pattern Anp :: Language
pattern Anp = $(bakeLanguage Nothing "anp")

-- | Jarawa (India).
pattern Anq :: Language
pattern Anq = $(bakeLanguage Nothing "anq")

-- | Andh.
pattern Anr :: Language
pattern Anr = $(bakeLanguage Nothing "anr")

-- | Anserma.
pattern Ans :: Language
pattern Ans = $(bakeLanguage Nothing "ans")

-- | Antakarinya.
pattern Ant :: Language
pattern Ant = $(bakeLanguage Nothing "ant")

-- | Anuak.
pattern Anu :: Language
pattern Anu = $(bakeLanguage Nothing "anu")

-- | Denya.
pattern Anv :: Language
pattern Anv = $(bakeLanguage Nothing "anv")

-- | Anaang.
pattern Anw :: Language
pattern Anw = $(bakeLanguage Nothing "anw")

-- | Andra-Hus.
pattern Anx :: Language
pattern Anx = $(bakeLanguage Nothing "anx")

-- | Anyin.
pattern Any :: Language
pattern Any = $(bakeLanguage Nothing "any")

-- | Anem.
pattern Anz :: Language
pattern Anz = $(bakeLanguage Nothing "anz")

-- | Angolar.
pattern Aoa :: Language
pattern Aoa = $(bakeLanguage Nothing "aoa")

-- | Abom.
pattern Aob :: Language
pattern Aob = $(bakeLanguage Nothing "aob")

-- | Pemon.
pattern Aoc :: Language
pattern Aoc = $(bakeLanguage Nothing "aoc")

-- | Andarum.
pattern Aod :: Language
pattern Aod = $(bakeLanguage Nothing "aod")

-- | Angal Enen.
pattern Aoe :: Language
pattern Aoe = $(bakeLanguage Nothing "aoe")

-- | Bragat.
pattern Aof :: Language
pattern Aof = $(bakeLanguage Nothing "aof")

-- | Angoram.
pattern Aog :: Language
pattern Aog = $(bakeLanguage Nothing "aog")

-- | Anindilyakwa.
pattern Aoi :: Language
pattern Aoi = $(bakeLanguage Nothing "aoi")

-- | Mufian.
pattern Aoj :: Language
pattern Aoj = $(bakeLanguage Nothing "aoj")

-- | Arhö.
pattern Aok :: Language
pattern Aok = $(bakeLanguage Nothing "aok")

-- | Alor.
pattern Aol :: Language
pattern Aol = $(bakeLanguage Nothing "aol")

-- | Ömie.
pattern Aom :: Language
pattern Aom = $(bakeLanguage Nothing "aom")

-- | Bumbita Arapesh.
pattern Aon :: Language
pattern Aon = $(bakeLanguage Nothing "aon")

-- | Aore.
pattern Aor :: Language
pattern Aor = $(bakeLanguage Nothing "aor")

-- | Taikat.
pattern Aos :: Language
pattern Aos = $(bakeLanguage Nothing "aos")

-- | Atong (India).
pattern Aot :: Language
pattern Aot = $(bakeLanguage Nothing "aot")

-- | A'ou.
pattern Aou :: Language
pattern Aou = $(bakeLanguage Nothing "aou")

-- | Atorada.
pattern Aox :: Language
pattern Aox = $(bakeLanguage Nothing "aox")

-- | Uab Meto.
pattern Aoz :: Language
pattern Aoz = $(bakeLanguage Nothing "aoz")

-- | Sa'a.
pattern Apb :: Language
pattern Apb = $(bakeLanguage Nothing "apb")

-- | Levantine Arabic.
pattern Apc :: Language
pattern Apc = $(bakeLanguage Nothing "apc")

-- | Sudanese Arabic.
pattern Apd :: Language
pattern Apd = $(bakeLanguage Nothing "apd")

-- | Bukiyip.
pattern Ape :: Language
pattern Ape = $(bakeLanguage Nothing "ape")

-- | Pahanan Agta.
pattern Apf :: Language
pattern Apf = $(bakeLanguage Nothing "apf")

-- | Ampanang.
pattern Apg :: Language
pattern Apg = $(bakeLanguage Nothing "apg")

-- | Athpariya.
pattern Aph :: Language
pattern Aph = $(bakeLanguage Nothing "aph")

-- | Apiaká.
pattern Api :: Language
pattern Api = $(bakeLanguage Nothing "api")

-- | Jicarilla Apache.
pattern Apj :: Language
pattern Apj = $(bakeLanguage Nothing "apj")

-- | Kiowa Apache.
pattern Apk :: Language
pattern Apk = $(bakeLanguage Nothing "apk")

-- | Lipan Apache.
pattern Apl :: Language
pattern Apl = $(bakeLanguage Nothing "apl")

-- | Mescalero-Chiricahua Apache.
pattern Apm :: Language
pattern Apm = $(bakeLanguage Nothing "apm")

-- | Apinayé.
pattern Apn :: Language
pattern Apn = $(bakeLanguage Nothing "apn")

-- | Ambul.
pattern Apo :: Language
pattern Apo = $(bakeLanguage Nothing "apo")

-- | Apma.
pattern App :: Language
pattern App = $(bakeLanguage Nothing "app")

-- | A-Pucikwar.
pattern Apq :: Language
pattern Apq = $(bakeLanguage Nothing "apq")

-- | Arop-Lokep.
pattern Apr :: Language
pattern Apr = $(bakeLanguage Nothing "apr")

-- | Arop-Sissano.
pattern Aps :: Language
pattern Aps = $(bakeLanguage Nothing "aps")

-- | Apatani.
pattern Apt :: Language
pattern Apt = $(bakeLanguage Nothing "apt")

-- | Apurinã.
pattern Apu :: Language
pattern Apu = $(bakeLanguage Nothing "apu")

-- | Alapmunte.
pattern Apv :: Language
pattern Apv = $(bakeLanguage Nothing "apv")

-- | Western Apache.
pattern Apw :: Language
pattern Apw = $(bakeLanguage Nothing "apw")

-- | Aputai.
pattern Apx :: Language
pattern Apx = $(bakeLanguage Nothing "apx")

-- | Apalaí.
pattern Apy :: Language
pattern Apy = $(bakeLanguage Nothing "apy")

-- | Safeyoka.
pattern Apz :: Language
pattern Apz = $(bakeLanguage Nothing "apz")

-- | Archi.
pattern Aqc :: Language
pattern Aqc = $(bakeLanguage Nothing "aqc")

-- | Ampari Dogon.
pattern Aqd :: Language
pattern Aqd = $(bakeLanguage Nothing "aqd")

-- | Arigidi.
pattern Aqg :: Language
pattern Aqg = $(bakeLanguage Nothing "aqg")

-- | Aninka.
pattern Aqk :: Language
pattern Aqk = $(bakeLanguage Nothing "aqk")

-- | Atohwaim.
pattern Aqm :: Language
pattern Aqm = $(bakeLanguage Nothing "aqm")

-- | Northern Alta.
pattern Aqn :: Language
pattern Aqn = $(bakeLanguage Nothing "aqn")

-- | Atakapa.
pattern Aqp :: Language
pattern Aqp = $(bakeLanguage Nothing "aqp")

-- | Arhâ.
pattern Aqr :: Language
pattern Aqr = $(bakeLanguage Nothing "aqr")

-- | Angaité.
pattern Aqt :: Language
pattern Aqt = $(bakeLanguage Nothing "aqt")

-- | Akuntsu.
pattern Aqz :: Language
pattern Aqz = $(bakeLanguage Nothing "aqz")

-- | Standard Arabic.
pattern Arb :: Language
pattern Arb = $(bakeLanguage Nothing "arb")

-- | Official Aramaic (700-300 BCE).
pattern Arc :: Language
pattern Arc = $(bakeLanguage Nothing "arc")

-- | Arabana.
pattern Ard :: Language
pattern Ard = $(bakeLanguage Nothing "ard")

-- | Western Arrarnta.
pattern Are :: Language
pattern Are = $(bakeLanguage Nothing "are")

-- | Arhuaco.
pattern Arh :: Language
pattern Arh = $(bakeLanguage Nothing "arh")

-- | Arikara.
pattern Ari :: Language
pattern Ari = $(bakeLanguage Nothing "ari")

-- | Arapaso.
pattern Arj :: Language
pattern Arj = $(bakeLanguage Nothing "arj")

-- | Arikapú.
pattern Ark :: Language
pattern Ark = $(bakeLanguage Nothing "ark")

-- | Arabela.
pattern Arl :: Language
pattern Arl = $(bakeLanguage Nothing "arl")

-- | Mapudungun.
pattern Arn :: Language
pattern Arn = $(bakeLanguage Nothing "arn")

-- | Araona.
pattern Aro :: Language
pattern Aro = $(bakeLanguage Nothing "aro")

-- | Arapaho.
pattern Arp :: Language
pattern Arp = $(bakeLanguage Nothing "arp")

-- | Algerian Arabic.
pattern Arq :: Language
pattern Arq = $(bakeLanguage Nothing "arq")

-- | Karo (Brazil).
pattern Arr :: Language
pattern Arr = $(bakeLanguage Nothing "arr")

-- | Najdi Arabic.
pattern Ars :: Language
pattern Ars = $(bakeLanguage Nothing "ars")

-- | Aruá (Amazonas State).
pattern Aru :: Language
pattern Aru = $(bakeLanguage Nothing "aru")

-- | Arbore.
pattern Arv :: Language
pattern Arv = $(bakeLanguage Nothing "arv")

-- | Arawak.
pattern Arw :: Language
pattern Arw = $(bakeLanguage Nothing "arw")

-- | Aruá (Rodonia State).
pattern Arx :: Language
pattern Arx = $(bakeLanguage Nothing "arx")

-- | Moroccan Arabic.
pattern Ary :: Language
pattern Ary = $(bakeLanguage Nothing "ary")

-- | Egyptian Arabic.
pattern Arz :: Language
pattern Arz = $(bakeLanguage Nothing "arz")

-- | Asu (Tanzania).
pattern Asa :: Language
pattern Asa = $(bakeLanguage Nothing "asa")

-- | Assiniboine.
pattern Asb :: Language
pattern Asb = $(bakeLanguage Nothing "asb")

-- | Casuarina Coast Asmat.
pattern Asc :: Language
pattern Asc = $(bakeLanguage Nothing "asc")

-- | American Sign Language.
pattern Ase :: Language
pattern Ase = $(bakeLanguage Nothing "ase")

-- | Auslan.
pattern Asf :: Language
pattern Asf = $(bakeLanguage Nothing "asf")

-- | Cishingini.
pattern Asg :: Language
pattern Asg = $(bakeLanguage Nothing "asg")

-- | Abishira.
pattern Ash :: Language
pattern Ash = $(bakeLanguage Nothing "ash")

-- | Buruwai.
pattern Asi :: Language
pattern Asi = $(bakeLanguage Nothing "asi")

-- | Sari.
pattern Asj :: Language
pattern Asj = $(bakeLanguage Nothing "asj")

-- | Ashkun.
pattern Ask :: Language
pattern Ask = $(bakeLanguage Nothing "ask")

-- | Asilulu.
pattern Asl :: Language
pattern Asl = $(bakeLanguage Nothing "asl")

-- | Xingú Asuriní.
pattern Asn :: Language
pattern Asn = $(bakeLanguage Nothing "asn")

-- | Dano.
pattern Aso :: Language
pattern Aso = $(bakeLanguage Nothing "aso")

-- | Algerian Sign Language.
pattern Asp :: Language
pattern Asp = $(bakeLanguage Nothing "asp")

-- | Austrian Sign Language.
pattern Asq :: Language
pattern Asq = $(bakeLanguage Nothing "asq")

-- | Asuri.
pattern Asr :: Language
pattern Asr = $(bakeLanguage Nothing "asr")

-- | Ipulo.
pattern Ass :: Language
pattern Ass = $(bakeLanguage Nothing "ass")

-- | Asturian.
pattern Ast :: Language
pattern Ast = $(bakeLanguage Nothing "ast")

-- | Tocantins Asurini.
pattern Asu :: Language
pattern Asu = $(bakeLanguage Nothing "asu")

-- | Asoa.
pattern Asv :: Language
pattern Asv = $(bakeLanguage Nothing "asv")

-- | Australian Aborigines Sign Language.
pattern Asw :: Language
pattern Asw = $(bakeLanguage Nothing "asw")

-- | Muratayak.
pattern Asx :: Language
pattern Asx = $(bakeLanguage Nothing "asx")

-- | Yaosakor Asmat.
pattern Asy :: Language
pattern Asy = $(bakeLanguage Nothing "asy")

-- | As.
pattern Asz :: Language
pattern Asz = $(bakeLanguage Nothing "asz")

-- | Pele-Ata.
pattern Ata :: Language
pattern Ata = $(bakeLanguage Nothing "ata")

-- | Zaiwa.
pattern Atb :: Language
pattern Atb = $(bakeLanguage Nothing "atb")

-- | Atsahuaca.
pattern Atc :: Language
pattern Atc = $(bakeLanguage Nothing "atc")

-- | Ata Manobo.
pattern Atd :: Language
pattern Atd = $(bakeLanguage Nothing "atd")

-- | Atemble.
pattern Ate :: Language
pattern Ate = $(bakeLanguage Nothing "ate")

-- | Ivbie North-Okpela-Arhe.
pattern Atg :: Language
pattern Atg = $(bakeLanguage Nothing "atg")

-- | Attié.
pattern Ati :: Language
pattern Ati = $(bakeLanguage Nothing "ati")

-- | Atikamekw.
pattern Atj :: Language
pattern Atj = $(bakeLanguage Nothing "atj")

-- | Ati.
pattern Atk :: Language
pattern Atk = $(bakeLanguage Nothing "atk")

-- | Mt. Iraya Agta.
pattern Atl :: Language
pattern Atl = $(bakeLanguage Nothing "atl")

-- | Ata.
pattern Atm :: Language
pattern Atm = $(bakeLanguage Nothing "atm")

-- | Ashtiani.
pattern Atn :: Language
pattern Atn = $(bakeLanguage Nothing "atn")

-- | Atong (Cameroon).
pattern Ato :: Language
pattern Ato = $(bakeLanguage Nothing "ato")

-- | Pudtol Atta.
pattern Atp :: Language
pattern Atp = $(bakeLanguage Nothing "atp")

-- | Aralle-Tabulahan.
pattern Atq :: Language
pattern Atq = $(bakeLanguage Nothing "atq")

-- | Waimiri-Atroari.
pattern Atr :: Language
pattern Atr = $(bakeLanguage Nothing "atr")

-- | Gros Ventre.
pattern Ats :: Language
pattern Ats = $(bakeLanguage Nothing "ats")

-- | Pamplona Atta.
pattern Att :: Language
pattern Att = $(bakeLanguage Nothing "att")

-- | Reel.
pattern Atu :: Language
pattern Atu = $(bakeLanguage Nothing "atu")

-- | Northern Altai.
pattern Atv :: Language
pattern Atv = $(bakeLanguage Nothing "atv")

-- | Atsugewi.
pattern Atw :: Language
pattern Atw = $(bakeLanguage Nothing "atw")

-- | Arutani.
pattern Atx :: Language
pattern Atx = $(bakeLanguage Nothing "atx")

-- | Aneityum.
pattern Aty :: Language
pattern Aty = $(bakeLanguage Nothing "aty")

-- | Arta.
pattern Atz :: Language
pattern Atz = $(bakeLanguage Nothing "atz")

-- | Asumboa.
pattern Aua :: Language
pattern Aua = $(bakeLanguage Nothing "aua")

-- | Alugu.
pattern Aub :: Language
pattern Aub = $(bakeLanguage Nothing "aub")

-- | Waorani.
pattern Auc :: Language
pattern Auc = $(bakeLanguage Nothing "auc")

-- | Anuta.
pattern Aud :: Language
pattern Aud = $(bakeLanguage Nothing "aud")

-- | Aguna.
pattern Aug :: Language
pattern Aug = $(bakeLanguage Nothing "aug")

-- | Aushi.
pattern Auh :: Language
pattern Auh = $(bakeLanguage Nothing "auh")

-- | Anuki.
pattern Aui :: Language
pattern Aui = $(bakeLanguage Nothing "aui")

-- | Awjilah.
pattern Auj :: Language
pattern Auj = $(bakeLanguage Nothing "auj")

-- | Heyo.
pattern Auk :: Language
pattern Auk = $(bakeLanguage Nothing "auk")

-- | Aulua.
pattern Aul :: Language
pattern Aul = $(bakeLanguage Nothing "aul")

-- | Asu (Nigeria).
pattern Aum :: Language
pattern Aum = $(bakeLanguage Nothing "aum")

-- | Molmo One.
pattern Aun :: Language
pattern Aun = $(bakeLanguage Nothing "aun")

-- | Auyokawa.
pattern Auo :: Language
pattern Auo = $(bakeLanguage Nothing "auo")

-- | Makayam.
pattern Aup :: Language
pattern Aup = $(bakeLanguage Nothing "aup")

-- | Anus.
pattern Auq :: Language
pattern Auq = $(bakeLanguage Nothing "auq")

-- | Aruek.
pattern Aur :: Language
pattern Aur = $(bakeLanguage Nothing "aur")

-- | Austral.
pattern Aut :: Language
pattern Aut = $(bakeLanguage Nothing "aut")

-- | Auye.
pattern Auu :: Language
pattern Auu = $(bakeLanguage Nothing "auu")

-- | Awyi.
pattern Auw :: Language
pattern Auw = $(bakeLanguage Nothing "auw")

-- | Aurá.
pattern Aux :: Language
pattern Aux = $(bakeLanguage Nothing "aux")

-- | Awiyaana.
pattern Auy :: Language
pattern Auy = $(bakeLanguage Nothing "auy")

-- | Uzbeki Arabic.
pattern Auz :: Language
pattern Auz = $(bakeLanguage Nothing "auz")

-- | Avau.
pattern Avb :: Language
pattern Avb = $(bakeLanguage Nothing "avb")

-- | Alviri-Vidari.
pattern Avd :: Language
pattern Avd = $(bakeLanguage Nothing "avd")

-- | Avikam.
pattern Avi :: Language
pattern Avi = $(bakeLanguage Nothing "avi")

-- | Kotava.
pattern Avk :: Language
pattern Avk = $(bakeLanguage Nothing "avk")

-- | Eastern Egyptian Bedawi Arabic.
pattern Avl :: Language
pattern Avl = $(bakeLanguage Nothing "avl")

-- | Angkamuthi.
pattern Avm :: Language
pattern Avm = $(bakeLanguage Nothing "avm")

-- | Avatime.
pattern Avn :: Language
pattern Avn = $(bakeLanguage Nothing "avn")

-- | Agavotaguerra.
pattern Avo :: Language
pattern Avo = $(bakeLanguage Nothing "avo")

-- | Aushiri.
pattern Avs :: Language
pattern Avs = $(bakeLanguage Nothing "avs")

-- | Au.
pattern Avt :: Language
pattern Avt = $(bakeLanguage Nothing "avt")

-- | Avokaya.
pattern Avu :: Language
pattern Avu = $(bakeLanguage Nothing "avu")

-- | Avá-Canoeiro.
pattern Avv :: Language
pattern Avv = $(bakeLanguage Nothing "avv")

-- | Awadhi.
pattern Awa :: Language
pattern Awa = $(bakeLanguage Nothing "awa")

-- | Awa (Papua New Guinea).
pattern Awb :: Language
pattern Awb = $(bakeLanguage Nothing "awb")

-- | Cicipu.
pattern Awc :: Language
pattern Awc = $(bakeLanguage Nothing "awc")

-- | Awetí.
pattern Awe :: Language
pattern Awe = $(bakeLanguage Nothing "awe")

-- | Anguthimri.
pattern Awg :: Language
pattern Awg = $(bakeLanguage Nothing "awg")

-- | Awbono.
pattern Awh :: Language
pattern Awh = $(bakeLanguage Nothing "awh")

-- | Aekyom.
pattern Awi :: Language
pattern Awi = $(bakeLanguage Nothing "awi")

-- | Awabakal.
pattern Awk :: Language
pattern Awk = $(bakeLanguage Nothing "awk")

-- | Arawum.
pattern Awm :: Language
pattern Awm = $(bakeLanguage Nothing "awm")

-- | Awngi.
pattern Awn :: Language
pattern Awn = $(bakeLanguage Nothing "awn")

-- | Awak.
pattern Awo :: Language
pattern Awo = $(bakeLanguage Nothing "awo")

-- | Awera.
pattern Awr :: Language
pattern Awr = $(bakeLanguage Nothing "awr")

-- | South Awyu.
pattern Aws :: Language
pattern Aws = $(bakeLanguage Nothing "aws")

-- | Araweté.
pattern Awt :: Language
pattern Awt = $(bakeLanguage Nothing "awt")

-- | Central Awyu.
pattern Awu :: Language
pattern Awu = $(bakeLanguage Nothing "awu")

-- | Jair Awyu.
pattern Awv :: Language
pattern Awv = $(bakeLanguage Nothing "awv")

-- | Awun.
pattern Aww :: Language
pattern Aww = $(bakeLanguage Nothing "aww")

-- | Awara.
pattern Awx :: Language
pattern Awx = $(bakeLanguage Nothing "awx")

-- | Edera Awyu.
pattern Awy :: Language
pattern Awy = $(bakeLanguage Nothing "awy")

-- | Abipon.
pattern Axb :: Language
pattern Axb = $(bakeLanguage Nothing "axb")

-- | Ayerrerenge.
pattern Axe :: Language
pattern Axe = $(bakeLanguage Nothing "axe")

-- | Mato Grosso Arára.
pattern Axg :: Language
pattern Axg = $(bakeLanguage Nothing "axg")

-- | Yaka (Central African Republic).
pattern Axk :: Language
pattern Axk = $(bakeLanguage Nothing "axk")

-- | Lower Southern Aranda.
pattern Axl :: Language
pattern Axl = $(bakeLanguage Nothing "axl")

-- | Middle Armenian.
pattern Axm :: Language
pattern Axm = $(bakeLanguage Nothing "axm")

-- | Xârâgurè.
pattern Axx :: Language
pattern Axx = $(bakeLanguage Nothing "axx")

-- | Awar.
pattern Aya :: Language
pattern Aya = $(bakeLanguage Nothing "aya")

-- | Ayizo Gbe.
pattern Ayb :: Language
pattern Ayb = $(bakeLanguage Nothing "ayb")

-- | Southern Aymara.
pattern Ayc :: Language
pattern Ayc = $(bakeLanguage Nothing "ayc")

-- | Ayabadhu.
pattern Ayd :: Language
pattern Ayd = $(bakeLanguage Nothing "ayd")

-- | Ayere.
pattern Aye :: Language
pattern Aye = $(bakeLanguage Nothing "aye")

-- | Ginyanga.
pattern Ayg :: Language
pattern Ayg = $(bakeLanguage Nothing "ayg")

-- | Hadrami Arabic.
pattern Ayh :: Language
pattern Ayh = $(bakeLanguage Nothing "ayh")

-- | Leyigha.
pattern Ayi :: Language
pattern Ayi = $(bakeLanguage Nothing "ayi")

-- | Akuku.
pattern Ayk :: Language
pattern Ayk = $(bakeLanguage Nothing "ayk")

-- | Libyan Arabic.
pattern Ayl :: Language
pattern Ayl = $(bakeLanguage Nothing "ayl")

-- | Sanaani Arabic.
pattern Ayn :: Language
pattern Ayn = $(bakeLanguage Nothing "ayn")

-- | Ayoreo.
pattern Ayo :: Language
pattern Ayo = $(bakeLanguage Nothing "ayo")

-- | North Mesopotamian Arabic.
pattern Ayp :: Language
pattern Ayp = $(bakeLanguage Nothing "ayp")

-- | Ayi (Papua New Guinea).
pattern Ayq :: Language
pattern Ayq = $(bakeLanguage Nothing "ayq")

-- | Central Aymara.
pattern Ayr :: Language
pattern Ayr = $(bakeLanguage Nothing "ayr")

-- | Sorsogon Ayta.
pattern Ays :: Language
pattern Ays = $(bakeLanguage Nothing "ays")

-- | Magbukun Ayta.
pattern Ayt :: Language
pattern Ayt = $(bakeLanguage Nothing "ayt")

-- | Ayu.
pattern Ayu :: Language
pattern Ayu = $(bakeLanguage Nothing "ayu")

-- | Mai Brat.
pattern Ayz :: Language
pattern Ayz = $(bakeLanguage Nothing "ayz")

-- | Azha.
pattern Aza :: Language
pattern Aza = $(bakeLanguage Nothing "aza")

-- | South Azerbaijani.
pattern Azb :: Language
pattern Azb = $(bakeLanguage Nothing "azb")

-- | Eastern Durango Nahuatl.
pattern Azd :: Language
pattern Azd = $(bakeLanguage Nothing "azd")

-- | San Pedro Amuzgos Amuzgo.
pattern Azg :: Language
pattern Azg = $(bakeLanguage Nothing "azg")

-- | North Azerbaijani.
pattern Azj :: Language
pattern Azj = $(bakeLanguage Nothing "azj")

-- | Ipalapa Amuzgo.
pattern Azm :: Language
pattern Azm = $(bakeLanguage Nothing "azm")

-- | Western Durango Nahuatl.
pattern Azn :: Language
pattern Azn = $(bakeLanguage Nothing "azn")

-- | Awing.
pattern Azo :: Language
pattern Azo = $(bakeLanguage Nothing "azo")

-- | Faire Atta.
pattern Azt :: Language
pattern Azt = $(bakeLanguage Nothing "azt")

-- | Highland Puebla Nahuatl.
pattern Azz :: Language
pattern Azz = $(bakeLanguage Nothing "azz")

-- | Babatana.
pattern Baa :: Language
pattern Baa = $(bakeLanguage Nothing "baa")

-- | Bainouk-Gunyuño.
pattern Bab :: Language
pattern Bab = $(bakeLanguage Nothing "bab")

-- | Badui.
pattern Bac :: Language
pattern Bac = $(bakeLanguage Nothing "bac")

-- | Baré.
pattern Bae :: Language
pattern Bae = $(bakeLanguage Nothing "bae")

-- | Nubaca.
pattern Baf :: Language
pattern Baf = $(bakeLanguage Nothing "baf")

-- | Tuki.
pattern Bag :: Language
pattern Bag = $(bakeLanguage Nothing "bag")

-- | Bahamas Creole English.
pattern Bah :: Language
pattern Bah = $(bakeLanguage Nothing "bah")

-- | Barakai.
pattern Baj :: Language
pattern Baj = $(bakeLanguage Nothing "baj")

-- | Baluchi.
pattern Bal :: Language
pattern Bal = $(bakeLanguage Nothing "bal")

-- | Balinese.
pattern Ban :: Language
pattern Ban = $(bakeLanguage Nothing "ban")

-- | Waimaha.
pattern Bao :: Language
pattern Bao = $(bakeLanguage Nothing "bao")

-- | Bantawa.
pattern Bap :: Language
pattern Bap = $(bakeLanguage Nothing "bap")

-- | Bavarian.
pattern Bar :: Language
pattern Bar = $(bakeLanguage Nothing "bar")

-- | Basa (Cameroon).
pattern Bas :: Language
pattern Bas = $(bakeLanguage Nothing "bas")

-- | Bada (Nigeria).
pattern Bau :: Language
pattern Bau = $(bakeLanguage Nothing "bau")

-- | Vengo.
pattern Bav :: Language
pattern Bav = $(bakeLanguage Nothing "bav")

-- | Bambili-Bambui.
pattern Baw :: Language
pattern Baw = $(bakeLanguage Nothing "baw")

-- | Bamun.
pattern Bax :: Language
pattern Bax = $(bakeLanguage Nothing "bax")

-- | Batuley.
pattern Bay :: Language
pattern Bay = $(bakeLanguage Nothing "bay")

-- | Baatonum.
pattern Bba :: Language
pattern Bba = $(bakeLanguage Nothing "bba")

-- | Barai.
pattern Bbb :: Language
pattern Bbb = $(bakeLanguage Nothing "bbb")

-- | Batak Toba.
pattern Bbc :: Language
pattern Bbc = $(bakeLanguage Nothing "bbc")

-- | Bau.
pattern Bbd :: Language
pattern Bbd = $(bakeLanguage Nothing "bbd")

-- | Bangba.
pattern Bbe :: Language
pattern Bbe = $(bakeLanguage Nothing "bbe")

-- | Baibai.
pattern Bbf :: Language
pattern Bbf = $(bakeLanguage Nothing "bbf")

-- | Barama.
pattern Bbg :: Language
pattern Bbg = $(bakeLanguage Nothing "bbg")

-- | Bugan.
pattern Bbh :: Language
pattern Bbh = $(bakeLanguage Nothing "bbh")

-- | Barombi.
pattern Bbi :: Language
pattern Bbi = $(bakeLanguage Nothing "bbi")

-- | Ghomálá'.
pattern Bbj :: Language
pattern Bbj = $(bakeLanguage Nothing "bbj")

-- | Babanki.
pattern Bbk :: Language
pattern Bbk = $(bakeLanguage Nothing "bbk")

-- | Bats.
pattern Bbl :: Language
pattern Bbl = $(bakeLanguage Nothing "bbl")

-- | Babango.
pattern Bbm :: Language
pattern Bbm = $(bakeLanguage Nothing "bbm")

-- | Uneapa.
pattern Bbn :: Language
pattern Bbn = $(bakeLanguage Nothing "bbn")

-- | Northern Bobo Madaré.
pattern Bbo :: Language
pattern Bbo = $(bakeLanguage Nothing "bbo")

-- | West Central Banda.
pattern Bbp :: Language
pattern Bbp = $(bakeLanguage Nothing "bbp")

-- | Bamali.
pattern Bbq :: Language
pattern Bbq = $(bakeLanguage Nothing "bbq")

-- | Girawa.
pattern Bbr :: Language
pattern Bbr = $(bakeLanguage Nothing "bbr")

-- | Bakpinka.
pattern Bbs :: Language
pattern Bbs = $(bakeLanguage Nothing "bbs")

-- | Mburku.
pattern Bbt :: Language
pattern Bbt = $(bakeLanguage Nothing "bbt")

-- | Kulung (Nigeria).
pattern Bbu :: Language
pattern Bbu = $(bakeLanguage Nothing "bbu")

-- | Karnai.
pattern Bbv :: Language
pattern Bbv = $(bakeLanguage Nothing "bbv")

-- | Baba.
pattern Bbw :: Language
pattern Bbw = $(bakeLanguage Nothing "bbw")

-- | Bubia.
pattern Bbx :: Language
pattern Bbx = $(bakeLanguage Nothing "bbx")

-- | Befang.
pattern Bby :: Language
pattern Bby = $(bakeLanguage Nothing "bby")

-- | Central Bai.
pattern Bca :: Language
pattern Bca = $(bakeLanguage Nothing "bca")

-- | Bainouk-Samik.
pattern Bcb :: Language
pattern Bcb = $(bakeLanguage Nothing "bcb")

-- | Southern Balochi.
pattern Bcc :: Language
pattern Bcc = $(bakeLanguage Nothing "bcc")

-- | North Babar.
pattern Bcd :: Language
pattern Bcd = $(bakeLanguage Nothing "bcd")

-- | Bamenyam.
pattern Bce :: Language
pattern Bce = $(bakeLanguage Nothing "bce")

-- | Bamu.
pattern Bcf :: Language
pattern Bcf = $(bakeLanguage Nothing "bcf")

-- | Baga Pokur.
pattern Bcg :: Language
pattern Bcg = $(bakeLanguage Nothing "bcg")

-- | Bariai.
pattern Bch :: Language
pattern Bch = $(bakeLanguage Nothing "bch")

-- | Baoulé.
pattern Bci :: Language
pattern Bci = $(bakeLanguage Nothing "bci")

-- | Bardi.
pattern Bcj :: Language
pattern Bcj = $(bakeLanguage Nothing "bcj")

-- | Bunuba.
pattern Bck :: Language
pattern Bck = $(bakeLanguage Nothing "bck")

-- | Central Bikol.
pattern Bcl :: Language
pattern Bcl = $(bakeLanguage Nothing "bcl")

-- | Bannoni.
pattern Bcm :: Language
pattern Bcm = $(bakeLanguage Nothing "bcm")

-- | Bali (Nigeria).
pattern Bcn :: Language
pattern Bcn = $(bakeLanguage Nothing "bcn")

-- | Kaluli.
pattern Bco :: Language
pattern Bco = $(bakeLanguage Nothing "bco")

-- | Bali (Democratic Republic of Congo).
pattern Bcp :: Language
pattern Bcp = $(bakeLanguage Nothing "bcp")

-- | Bench.
pattern Bcq :: Language
pattern Bcq = $(bakeLanguage Nothing "bcq")

-- | Babine.
pattern Bcr :: Language
pattern Bcr = $(bakeLanguage Nothing "bcr")

-- | Kohumono.
pattern Bcs :: Language
pattern Bcs = $(bakeLanguage Nothing "bcs")

-- | Bendi.
pattern Bct :: Language
pattern Bct = $(bakeLanguage Nothing "bct")

-- | Awad Bing.
pattern Bcu :: Language
pattern Bcu = $(bakeLanguage Nothing "bcu")

-- | Shoo-Minda-Nye.
pattern Bcv :: Language
pattern Bcv = $(bakeLanguage Nothing "bcv")

-- | Bana.
pattern Bcw :: Language
pattern Bcw = $(bakeLanguage Nothing "bcw")

-- | Bacama.
pattern Bcy :: Language
pattern Bcy = $(bakeLanguage Nothing "bcy")

-- | Bainouk-Gunyaamolo.
pattern Bcz :: Language
pattern Bcz = $(bakeLanguage Nothing "bcz")

-- | Bayot.
pattern Bda :: Language
pattern Bda = $(bakeLanguage Nothing "bda")

-- | Basap.
pattern Bdb :: Language
pattern Bdb = $(bakeLanguage Nothing "bdb")

-- | Emberá-Baudó.
pattern Bdc :: Language
pattern Bdc = $(bakeLanguage Nothing "bdc")

-- | Bunama.
pattern Bdd :: Language
pattern Bdd = $(bakeLanguage Nothing "bdd")

-- | Bade.
pattern Bde :: Language
pattern Bde = $(bakeLanguage Nothing "bde")

-- | Biage.
pattern Bdf :: Language
pattern Bdf = $(bakeLanguage Nothing "bdf")

-- | Bonggi.
pattern Bdg :: Language
pattern Bdg = $(bakeLanguage Nothing "bdg")

-- | Baka (South Sudan).
pattern Bdh :: Language
pattern Bdh = $(bakeLanguage Nothing "bdh")

-- | Burun.
pattern Bdi :: Language
pattern Bdi = $(bakeLanguage Nothing "bdi")

-- | Bai (South Sudan).
pattern Bdj :: Language
pattern Bdj = $(bakeLanguage Nothing "bdj")

-- | Budukh.
pattern Bdk :: Language
pattern Bdk = $(bakeLanguage Nothing "bdk")

-- | Indonesian Bajau.
pattern Bdl :: Language
pattern Bdl = $(bakeLanguage Nothing "bdl")

-- | Buduma.
pattern Bdm :: Language
pattern Bdm = $(bakeLanguage Nothing "bdm")

-- | Baldemu.
pattern Bdn :: Language
pattern Bdn = $(bakeLanguage Nothing "bdn")

-- | Morom.
pattern Bdo :: Language
pattern Bdo = $(bakeLanguage Nothing "bdo")

-- | Bende.
pattern Bdp :: Language
pattern Bdp = $(bakeLanguage Nothing "bdp")

-- | Bahnar.
pattern Bdq :: Language
pattern Bdq = $(bakeLanguage Nothing "bdq")

-- | West Coast Bajau.
pattern Bdr :: Language
pattern Bdr = $(bakeLanguage Nothing "bdr")

-- | Burunge.
pattern Bds :: Language
pattern Bds = $(bakeLanguage Nothing "bds")

-- | Bokoto.
pattern Bdt :: Language
pattern Bdt = $(bakeLanguage Nothing "bdt")

-- | Oroko.
pattern Bdu :: Language
pattern Bdu = $(bakeLanguage Nothing "bdu")

-- | Bodo Parja.
pattern Bdv :: Language
pattern Bdv = $(bakeLanguage Nothing "bdv")

-- | Baham.
pattern Bdw :: Language
pattern Bdw = $(bakeLanguage Nothing "bdw")

-- | Budong-Budong.
pattern Bdx :: Language
pattern Bdx = $(bakeLanguage Nothing "bdx")

-- | Bandjalang.
pattern Bdy :: Language
pattern Bdy = $(bakeLanguage Nothing "bdy")

-- | Badeshi.
pattern Bdz :: Language
pattern Bdz = $(bakeLanguage Nothing "bdz")

-- | Beaver.
pattern Bea :: Language
pattern Bea = $(bakeLanguage Nothing "bea")

-- | Bebele.
pattern Beb :: Language
pattern Beb = $(bakeLanguage Nothing "beb")

-- | Iceve-Maci.
pattern Bec :: Language
pattern Bec = $(bakeLanguage Nothing "bec")

-- | Bedoanas.
pattern Bed :: Language
pattern Bed = $(bakeLanguage Nothing "bed")

-- | Byangsi.
pattern Bee :: Language
pattern Bee = $(bakeLanguage Nothing "bee")

-- | Benabena.
pattern Bef :: Language
pattern Bef = $(bakeLanguage Nothing "bef")

-- | Belait.
pattern Beg :: Language
pattern Beg = $(bakeLanguage Nothing "beg")

-- | Biali.
pattern Beh :: Language
pattern Beh = $(bakeLanguage Nothing "beh")

-- | Bekati'.
pattern Bei :: Language
pattern Bei = $(bakeLanguage Nothing "bei")

-- | Beja.
pattern Bej :: Language
pattern Bej = $(bakeLanguage Nothing "bej")

-- | Bebeli.
pattern Bek :: Language
pattern Bek = $(bakeLanguage Nothing "bek")

-- | Bemba (Zambia).
pattern Bem :: Language
pattern Bem = $(bakeLanguage Nothing "bem")

-- | Beami.
pattern Beo :: Language
pattern Beo = $(bakeLanguage Nothing "beo")

-- | Besoa.
pattern Bep :: Language
pattern Bep = $(bakeLanguage Nothing "bep")

-- | Beembe.
pattern Beq :: Language
pattern Beq = $(bakeLanguage Nothing "beq")

-- | Besme.
pattern Bes :: Language
pattern Bes = $(bakeLanguage Nothing "bes")

-- | Guiberoua Béte.
pattern Bet :: Language
pattern Bet = $(bakeLanguage Nothing "bet")

-- | Blagar.
pattern Beu :: Language
pattern Beu = $(bakeLanguage Nothing "beu")

-- | Daloa Bété.
pattern Bev :: Language
pattern Bev = $(bakeLanguage Nothing "bev")

-- | Betawi.
pattern Bew :: Language
pattern Bew = $(bakeLanguage Nothing "bew")

-- | Jur Modo.
pattern Bex :: Language
pattern Bex = $(bakeLanguage Nothing "bex")

-- | Beli (Papua New Guinea).
pattern Bey :: Language
pattern Bey = $(bakeLanguage Nothing "bey")

-- | Bena (Tanzania).
pattern Bez :: Language
pattern Bez = $(bakeLanguage Nothing "bez")

-- | Bari.
pattern Bfa :: Language
pattern Bfa = $(bakeLanguage Nothing "bfa")

-- | Pauri Bareli.
pattern Bfb :: Language
pattern Bfb = $(bakeLanguage Nothing "bfb")

-- | Panyi Bai.
pattern Bfc :: Language
pattern Bfc = $(bakeLanguage Nothing "bfc")

-- | Bafut.
pattern Bfd :: Language
pattern Bfd = $(bakeLanguage Nothing "bfd")

-- | Betaf.
pattern Bfe :: Language
pattern Bfe = $(bakeLanguage Nothing "bfe")

-- | Bofi.
pattern Bff :: Language
pattern Bff = $(bakeLanguage Nothing "bff")

-- | Busang Kayan.
pattern Bfg :: Language
pattern Bfg = $(bakeLanguage Nothing "bfg")

-- | Blafe.
pattern Bfh :: Language
pattern Bfh = $(bakeLanguage Nothing "bfh")

-- | British Sign Language.
pattern Bfi :: Language
pattern Bfi = $(bakeLanguage Nothing "bfi")

-- | Bafanji.
pattern Bfj :: Language
pattern Bfj = $(bakeLanguage Nothing "bfj")

-- | Ban Khor Sign Language.
pattern Bfk :: Language
pattern Bfk = $(bakeLanguage Nothing "bfk")

-- | Banda-Ndélé.
pattern Bfl :: Language
pattern Bfl = $(bakeLanguage Nothing "bfl")

-- | Mmen.
pattern Bfm :: Language
pattern Bfm = $(bakeLanguage Nothing "bfm")

-- | Bunak.
pattern Bfn :: Language
pattern Bfn = $(bakeLanguage Nothing "bfn")

-- | Malba Birifor.
pattern Bfo :: Language
pattern Bfo = $(bakeLanguage Nothing "bfo")

-- | Beba.
pattern Bfp :: Language
pattern Bfp = $(bakeLanguage Nothing "bfp")

-- | Badaga.
pattern Bfq :: Language
pattern Bfq = $(bakeLanguage Nothing "bfq")

-- | Bazigar.
pattern Bfr :: Language
pattern Bfr = $(bakeLanguage Nothing "bfr")

-- | Southern Bai.
pattern Bfs :: Language
pattern Bfs = $(bakeLanguage Nothing "bfs")

-- | Balti.
pattern Bft :: Language
pattern Bft = $(bakeLanguage Nothing "bft")

-- | Gahri.
pattern Bfu :: Language
pattern Bfu = $(bakeLanguage Nothing "bfu")

-- | Bondo.
pattern Bfw :: Language
pattern Bfw = $(bakeLanguage Nothing "bfw")

-- | Bantayanon.
pattern Bfx :: Language
pattern Bfx = $(bakeLanguage Nothing "bfx")

-- | Bagheli.
pattern Bfy :: Language
pattern Bfy = $(bakeLanguage Nothing "bfy")

-- | Mahasu Pahari.
pattern Bfz :: Language
pattern Bfz = $(bakeLanguage Nothing "bfz")

-- | Gwamhi-Wuri.
pattern Bga :: Language
pattern Bga = $(bakeLanguage Nothing "bga")

-- | Bobongko.
pattern Bgb :: Language
pattern Bgb = $(bakeLanguage Nothing "bgb")

-- | Haryanvi.
pattern Bgc :: Language
pattern Bgc = $(bakeLanguage Nothing "bgc")

-- | Rathwi Bareli.
pattern Bgd :: Language
pattern Bgd = $(bakeLanguage Nothing "bgd")

-- | Bauria.
pattern Bge :: Language
pattern Bge = $(bakeLanguage Nothing "bge")

-- | Bangandu.
pattern Bgf :: Language
pattern Bgf = $(bakeLanguage Nothing "bgf")

-- | Bugun.
pattern Bgg :: Language
pattern Bgg = $(bakeLanguage Nothing "bgg")

-- | Giangan.
pattern Bgi :: Language
pattern Bgi = $(bakeLanguage Nothing "bgi")

-- | Bangolan.
pattern Bgj :: Language
pattern Bgj = $(bakeLanguage Nothing "bgj")

-- | Bit.
pattern Bgk :: Language
pattern Bgk = $(bakeLanguage Nothing "bgk")

-- | Bo (Laos).
pattern Bgl :: Language
pattern Bgl = $(bakeLanguage Nothing "bgl")

-- | Western Balochi.
pattern Bgn :: Language
pattern Bgn = $(bakeLanguage Nothing "bgn")

-- | Baga Koga.
pattern Bgo :: Language
pattern Bgo = $(bakeLanguage Nothing "bgo")

-- | Eastern Balochi.
pattern Bgp :: Language
pattern Bgp = $(bakeLanguage Nothing "bgp")

-- | Bagri.
pattern Bgq :: Language
pattern Bgq = $(bakeLanguage Nothing "bgq")

-- | Bawm Chin.
pattern Bgr :: Language
pattern Bgr = $(bakeLanguage Nothing "bgr")

-- | Tagabawa.
pattern Bgs :: Language
pattern Bgs = $(bakeLanguage Nothing "bgs")

-- | Bughotu.
pattern Bgt :: Language
pattern Bgt = $(bakeLanguage Nothing "bgt")

-- | Mbongno.
pattern Bgu :: Language
pattern Bgu = $(bakeLanguage Nothing "bgu")

-- | Warkay-Bipim.
pattern Bgv :: Language
pattern Bgv = $(bakeLanguage Nothing "bgv")

-- | Bhatri.
pattern Bgw :: Language
pattern Bgw = $(bakeLanguage Nothing "bgw")

-- | Balkan Gagauz Turkish.
pattern Bgx :: Language
pattern Bgx = $(bakeLanguage Nothing "bgx")

-- | Benggoi.
pattern Bgy :: Language
pattern Bgy = $(bakeLanguage Nothing "bgy")

-- | Banggai.
pattern Bgz :: Language
pattern Bgz = $(bakeLanguage Nothing "bgz")

-- | Bharia.
pattern Bha :: Language
pattern Bha = $(bakeLanguage Nothing "bha")

-- | Bhili.
pattern Bhb :: Language
pattern Bhb = $(bakeLanguage Nothing "bhb")

-- | Biga.
pattern Bhc :: Language
pattern Bhc = $(bakeLanguage Nothing "bhc")

-- | Bhadrawahi.
pattern Bhd :: Language
pattern Bhd = $(bakeLanguage Nothing "bhd")

-- | Bhaya.
pattern Bhe :: Language
pattern Bhe = $(bakeLanguage Nothing "bhe")

-- | Odiai.
pattern Bhf :: Language
pattern Bhf = $(bakeLanguage Nothing "bhf")

-- | Binandere.
pattern Bhg :: Language
pattern Bhg = $(bakeLanguage Nothing "bhg")

-- | Bukharic.
pattern Bhh :: Language
pattern Bhh = $(bakeLanguage Nothing "bhh")

-- | Bhilali.
pattern Bhi :: Language
pattern Bhi = $(bakeLanguage Nothing "bhi")

-- | Bahing.
pattern Bhj :: Language
pattern Bhj = $(bakeLanguage Nothing "bhj")

-- | Bimin.
pattern Bhl :: Language
pattern Bhl = $(bakeLanguage Nothing "bhl")

-- | Bathari.
pattern Bhm :: Language
pattern Bhm = $(bakeLanguage Nothing "bhm")

-- | Bohtan Neo-Aramaic.
pattern Bhn :: Language
pattern Bhn = $(bakeLanguage Nothing "bhn")

-- | Bhojpuri.
pattern Bho :: Language
pattern Bho = $(bakeLanguage Nothing "bho")

-- | Bima.
pattern Bhp :: Language
pattern Bhp = $(bakeLanguage Nothing "bhp")

-- | Tukang Besi South.
pattern Bhq :: Language
pattern Bhq = $(bakeLanguage Nothing "bhq")

-- | Bara Malagasy.
pattern Bhr :: Language
pattern Bhr = $(bakeLanguage Nothing "bhr")

-- | Buwal.
pattern Bhs :: Language
pattern Bhs = $(bakeLanguage Nothing "bhs")

-- | Bhattiyali.
pattern Bht :: Language
pattern Bht = $(bakeLanguage Nothing "bht")

-- | Bhunjia.
pattern Bhu :: Language
pattern Bhu = $(bakeLanguage Nothing "bhu")

-- | Bahau.
pattern Bhv :: Language
pattern Bhv = $(bakeLanguage Nothing "bhv")

-- | Biak.
pattern Bhw :: Language
pattern Bhw = $(bakeLanguage Nothing "bhw")

-- | Bhalay.
pattern Bhx :: Language
pattern Bhx = $(bakeLanguage Nothing "bhx")

-- | Bhele.
pattern Bhy :: Language
pattern Bhy = $(bakeLanguage Nothing "bhy")

-- | Bada (Indonesia).
pattern Bhz :: Language
pattern Bhz = $(bakeLanguage Nothing "bhz")

-- | Badimaya.
pattern Bia :: Language
pattern Bia = $(bakeLanguage Nothing "bia")

-- | Bissa.
pattern Bib :: Language
pattern Bib = $(bakeLanguage Nothing "bib")

-- | Bidiyo.
pattern Bid :: Language
pattern Bid = $(bakeLanguage Nothing "bid")

-- | Bepour.
pattern Bie :: Language
pattern Bie = $(bakeLanguage Nothing "bie")

-- | Biafada.
pattern Bif :: Language
pattern Bif = $(bakeLanguage Nothing "bif")

-- | Biangai.
pattern Big :: Language
pattern Big = $(bakeLanguage Nothing "big")

-- | Bikol.
pattern Bik :: Language
pattern Bik = $(bakeLanguage Nothing "bik")

-- | Bile.
pattern Bil :: Language
pattern Bil = $(bakeLanguage Nothing "bil")

-- | Bimoba.
pattern Bim :: Language
pattern Bim = $(bakeLanguage Nothing "bim")

-- | Bini.
pattern Bin :: Language
pattern Bin = $(bakeLanguage Nothing "bin")

-- | Nai.
pattern Bio :: Language
pattern Bio = $(bakeLanguage Nothing "bio")

-- | Bila.
pattern Bip :: Language
pattern Bip = $(bakeLanguage Nothing "bip")

-- | Bipi.
pattern Biq :: Language
pattern Biq = $(bakeLanguage Nothing "biq")

-- | Bisorio.
pattern Bir :: Language
pattern Bir = $(bakeLanguage Nothing "bir")

-- | Berinomo.
pattern Bit :: Language
pattern Bit = $(bakeLanguage Nothing "bit")

-- | Biete.
pattern Biu :: Language
pattern Biu = $(bakeLanguage Nothing "biu")

-- | Southern Birifor.
pattern Biv :: Language
pattern Biv = $(bakeLanguage Nothing "biv")

-- | Kol (Cameroon).
pattern Biw :: Language
pattern Biw = $(bakeLanguage Nothing "biw")

-- | Bijori.
pattern Bix :: Language
pattern Bix = $(bakeLanguage Nothing "bix")

-- | Birhor.
pattern Biy :: Language
pattern Biy = $(bakeLanguage Nothing "biy")

-- | Baloi.
pattern Biz :: Language
pattern Biz = $(bakeLanguage Nothing "biz")

-- | Budza.
pattern Bja :: Language
pattern Bja = $(bakeLanguage Nothing "bja")

-- | Banggarla.
pattern Bjb :: Language
pattern Bjb = $(bakeLanguage Nothing "bjb")

-- | Bariji.
pattern Bjc :: Language
pattern Bjc = $(bakeLanguage Nothing "bjc")

-- | Biao-Jiao Mien.
pattern Bje :: Language
pattern Bje = $(bakeLanguage Nothing "bje")

-- | Barzani Jewish Neo-Aramaic.
pattern Bjf :: Language
pattern Bjf = $(bakeLanguage Nothing "bjf")

-- | Bidyogo.
pattern Bjg :: Language
pattern Bjg = $(bakeLanguage Nothing "bjg")

-- | Bahinemo.
pattern Bjh :: Language
pattern Bjh = $(bakeLanguage Nothing "bjh")

-- | Burji.
pattern Bji :: Language
pattern Bji = $(bakeLanguage Nothing "bji")

-- | Kanauji.
pattern Bjj :: Language
pattern Bjj = $(bakeLanguage Nothing "bjj")

-- | Barok.
pattern Bjk :: Language
pattern Bjk = $(bakeLanguage Nothing "bjk")

-- | Bulu (Papua New Guinea).
pattern Bjl :: Language
pattern Bjl = $(bakeLanguage Nothing "bjl")

-- | Bajelani.
pattern Bjm :: Language
pattern Bjm = $(bakeLanguage Nothing "bjm")

-- | Banjar.
pattern Bjn :: Language
pattern Bjn = $(bakeLanguage Nothing "bjn")

-- | Mid-Southern Banda.
pattern Bjo :: Language
pattern Bjo = $(bakeLanguage Nothing "bjo")

-- | Fanamaket.
pattern Bjp :: Language
pattern Bjp = $(bakeLanguage Nothing "bjp")

-- | Binumarien.
pattern Bjr :: Language
pattern Bjr = $(bakeLanguage Nothing "bjr")

-- | Bajan.
pattern Bjs :: Language
pattern Bjs = $(bakeLanguage Nothing "bjs")

-- | Balanta-Ganja.
pattern Bjt :: Language
pattern Bjt = $(bakeLanguage Nothing "bjt")

-- | Busuu.
pattern Bju :: Language
pattern Bju = $(bakeLanguage Nothing "bju")

-- | Bedjond.
pattern Bjv :: Language
pattern Bjv = $(bakeLanguage Nothing "bjv")

-- | Bakwé.
pattern Bjw :: Language
pattern Bjw = $(bakeLanguage Nothing "bjw")

-- | Banao Itneg.
pattern Bjx :: Language
pattern Bjx = $(bakeLanguage Nothing "bjx")

-- | Bayali.
pattern Bjy :: Language
pattern Bjy = $(bakeLanguage Nothing "bjy")

-- | Baruga.
pattern Bjz :: Language
pattern Bjz = $(bakeLanguage Nothing "bjz")

-- | Kyak.
pattern Bka :: Language
pattern Bka = $(bakeLanguage Nothing "bka")

-- | Baka (Cameroon).
pattern Bkc :: Language
pattern Bkc = $(bakeLanguage Nothing "bkc")

-- | Binukid.
pattern Bkd :: Language
pattern Bkd = $(bakeLanguage Nothing "bkd")

-- | Beeke.
pattern Bkf :: Language
pattern Bkf = $(bakeLanguage Nothing "bkf")

-- | Buraka.
pattern Bkg :: Language
pattern Bkg = $(bakeLanguage Nothing "bkg")

-- | Bakoko.
pattern Bkh :: Language
pattern Bkh = $(bakeLanguage Nothing "bkh")

-- | Baki.
pattern Bki :: Language
pattern Bki = $(bakeLanguage Nothing "bki")

-- | Pande.
pattern Bkj :: Language
pattern Bkj = $(bakeLanguage Nothing "bkj")

-- | Brokskat.
pattern Bkk :: Language
pattern Bkk = $(bakeLanguage Nothing "bkk")

-- | Berik.
pattern Bkl :: Language
pattern Bkl = $(bakeLanguage Nothing "bkl")

-- | Kom (Cameroon).
pattern Bkm :: Language
pattern Bkm = $(bakeLanguage Nothing "bkm")

-- | Bukitan.
pattern Bkn :: Language
pattern Bkn = $(bakeLanguage Nothing "bkn")

-- | Kwa'.
pattern Bko :: Language
pattern Bko = $(bakeLanguage Nothing "bko")

-- | Boko (Democratic Republic of Congo).
pattern Bkp :: Language
pattern Bkp = $(bakeLanguage Nothing "bkp")

-- | Bakairí.
pattern Bkq :: Language
pattern Bkq = $(bakeLanguage Nothing "bkq")

-- | Bakumpai.
pattern Bkr :: Language
pattern Bkr = $(bakeLanguage Nothing "bkr")

-- | Northern Sorsoganon.
pattern Bks :: Language
pattern Bks = $(bakeLanguage Nothing "bks")

-- | Boloki.
pattern Bkt :: Language
pattern Bkt = $(bakeLanguage Nothing "bkt")

-- | Buhid.
pattern Bku :: Language
pattern Bku = $(bakeLanguage Nothing "bku")

-- | Bekwarra.
pattern Bkv :: Language
pattern Bkv = $(bakeLanguage Nothing "bkv")

-- | Bekwel.
pattern Bkw :: Language
pattern Bkw = $(bakeLanguage Nothing "bkw")

-- | Baikeno.
pattern Bkx :: Language
pattern Bkx = $(bakeLanguage Nothing "bkx")

-- | Bokyi.
pattern Bky :: Language
pattern Bky = $(bakeLanguage Nothing "bky")

-- | Bungku.
pattern Bkz :: Language
pattern Bkz = $(bakeLanguage Nothing "bkz")

-- | Siksika.
pattern Bla :: Language
pattern Bla = $(bakeLanguage Nothing "bla")

-- | Bilua.
pattern Blb :: Language
pattern Blb = $(bakeLanguage Nothing "blb")

-- | Bella Coola.
pattern Blc :: Language
pattern Blc = $(bakeLanguage Nothing "blc")

-- | Bolango.
pattern Bld :: Language
pattern Bld = $(bakeLanguage Nothing "bld")

-- | Balanta-Kentohe.
pattern Ble :: Language
pattern Ble = $(bakeLanguage Nothing "ble")

-- | Buol.
pattern Blf :: Language
pattern Blf = $(bakeLanguage Nothing "blf")

-- | Kuwaa.
pattern Blh :: Language
pattern Blh = $(bakeLanguage Nothing "blh")

-- | Bolia.
pattern Bli :: Language
pattern Bli = $(bakeLanguage Nothing "bli")

-- | Bolongan.
pattern Blj :: Language
pattern Blj = $(bakeLanguage Nothing "blj")

-- | Pa'o Karen.
pattern Blk :: Language
pattern Blk = $(bakeLanguage Nothing "blk")

-- | Biloxi.
pattern Bll :: Language
pattern Bll = $(bakeLanguage Nothing "bll")

-- | Beli (South Sudan).
pattern Blm :: Language
pattern Blm = $(bakeLanguage Nothing "blm")

-- | Southern Catanduanes Bikol.
pattern Bln :: Language
pattern Bln = $(bakeLanguage Nothing "bln")

-- | Anii.
pattern Blo :: Language
pattern Blo = $(bakeLanguage Nothing "blo")

-- | Blablanga.
pattern Blp :: Language
pattern Blp = $(bakeLanguage Nothing "blp")

-- | Baluan-Pam.
pattern Blq :: Language
pattern Blq = $(bakeLanguage Nothing "blq")

-- | Blang.
pattern Blr :: Language
pattern Blr = $(bakeLanguage Nothing "blr")

-- | Balaesang.
pattern Bls :: Language
pattern Bls = $(bakeLanguage Nothing "bls")

-- | Tai Dam.
pattern Blt :: Language
pattern Blt = $(bakeLanguage Nothing "blt")

-- | Kibala.
pattern Blv :: Language
pattern Blv = $(bakeLanguage Nothing "blv")

-- | Balangao.
pattern Blw :: Language
pattern Blw = $(bakeLanguage Nothing "blw")

-- | Mag-Indi Ayta.
pattern Blx :: Language
pattern Blx = $(bakeLanguage Nothing "blx")

-- | Notre.
pattern Bly :: Language
pattern Bly = $(bakeLanguage Nothing "bly")

-- | Balantak.
pattern Blz :: Language
pattern Blz = $(bakeLanguage Nothing "blz")

-- | Lame.
pattern Bma :: Language
pattern Bma = $(bakeLanguage Nothing "bma")

-- | Bembe.
pattern Bmb :: Language
pattern Bmb = $(bakeLanguage Nothing "bmb")

-- | Biem.
pattern Bmc :: Language
pattern Bmc = $(bakeLanguage Nothing "bmc")

-- | Baga Manduri.
pattern Bmd :: Language
pattern Bmd = $(bakeLanguage Nothing "bmd")

-- | Limassa.
pattern Bme :: Language
pattern Bme = $(bakeLanguage Nothing "bme")

-- | Bom-Kim.
pattern Bmf :: Language
pattern Bmf = $(bakeLanguage Nothing "bmf")

-- | Bamwe.
pattern Bmg :: Language
pattern Bmg = $(bakeLanguage Nothing "bmg")

-- | Kein.
pattern Bmh :: Language
pattern Bmh = $(bakeLanguage Nothing "bmh")

-- | Bagirmi.
pattern Bmi :: Language
pattern Bmi = $(bakeLanguage Nothing "bmi")

-- | Bote-Majhi.
pattern Bmj :: Language
pattern Bmj = $(bakeLanguage Nothing "bmj")

-- | Ghayavi.
pattern Bmk :: Language
pattern Bmk = $(bakeLanguage Nothing "bmk")

-- | Bomboli.
pattern Bml :: Language
pattern Bml = $(bakeLanguage Nothing "bml")

-- | Northern Betsimisaraka Malagasy.
pattern Bmm :: Language
pattern Bmm = $(bakeLanguage Nothing "bmm")

-- | Bina (Papua New Guinea).
pattern Bmn :: Language
pattern Bmn = $(bakeLanguage Nothing "bmn")

-- | Bambalang.
pattern Bmo :: Language
pattern Bmo = $(bakeLanguage Nothing "bmo")

-- | Bulgebi.
pattern Bmp :: Language
pattern Bmp = $(bakeLanguage Nothing "bmp")

-- | Bomu.
pattern Bmq :: Language
pattern Bmq = $(bakeLanguage Nothing "bmq")

-- | Muinane.
pattern Bmr :: Language
pattern Bmr = $(bakeLanguage Nothing "bmr")

-- | Bilma Kanuri.
pattern Bms :: Language
pattern Bms = $(bakeLanguage Nothing "bms")

-- | Biao Mon.
pattern Bmt :: Language
pattern Bmt = $(bakeLanguage Nothing "bmt")

-- | Somba-Siawari.
pattern Bmu :: Language
pattern Bmu = $(bakeLanguage Nothing "bmu")

-- | Bum.
pattern Bmv :: Language
pattern Bmv = $(bakeLanguage Nothing "bmv")

-- | Bomwali.
pattern Bmw :: Language
pattern Bmw = $(bakeLanguage Nothing "bmw")

-- | Baimak.
pattern Bmx :: Language
pattern Bmx = $(bakeLanguage Nothing "bmx")

-- | Baramu.
pattern Bmz :: Language
pattern Bmz = $(bakeLanguage Nothing "bmz")

-- | Bonerate.
pattern Bna :: Language
pattern Bna = $(bakeLanguage Nothing "bna")

-- | Bookan.
pattern Bnb :: Language
pattern Bnb = $(bakeLanguage Nothing "bnb")

-- | Bontok.
pattern Bnc :: Language
pattern Bnc = $(bakeLanguage Nothing "bnc")

-- | Banda (Indonesia).
pattern Bnd :: Language
pattern Bnd = $(bakeLanguage Nothing "bnd")

-- | Bintauna.
pattern Bne :: Language
pattern Bne = $(bakeLanguage Nothing "bne")

-- | Masiwang.
pattern Bnf :: Language
pattern Bnf = $(bakeLanguage Nothing "bnf")

-- | Benga.
pattern Bng :: Language
pattern Bng = $(bakeLanguage Nothing "bng")

-- | Bangi.
pattern Bni :: Language
pattern Bni = $(bakeLanguage Nothing "bni")

-- | Eastern Tawbuid.
pattern Bnj :: Language
pattern Bnj = $(bakeLanguage Nothing "bnj")

-- | Bierebo.
pattern Bnk :: Language
pattern Bnk = $(bakeLanguage Nothing "bnk")

-- | Boon.
pattern Bnl :: Language
pattern Bnl = $(bakeLanguage Nothing "bnl")

-- | Batanga.
pattern Bnm :: Language
pattern Bnm = $(bakeLanguage Nothing "bnm")

-- | Bunun.
pattern Bnn :: Language
pattern Bnn = $(bakeLanguage Nothing "bnn")

-- | Bantoanon.
pattern Bno :: Language
pattern Bno = $(bakeLanguage Nothing "bno")

-- | Bola.
pattern Bnp :: Language
pattern Bnp = $(bakeLanguage Nothing "bnp")

-- | Bantik.
pattern Bnq :: Language
pattern Bnq = $(bakeLanguage Nothing "bnq")

-- | Butmas-Tur.
pattern Bnr :: Language
pattern Bnr = $(bakeLanguage Nothing "bnr")

-- | Bundeli.
pattern Bns :: Language
pattern Bns = $(bakeLanguage Nothing "bns")

-- | Bentong.
pattern Bnu :: Language
pattern Bnu = $(bakeLanguage Nothing "bnu")

-- | Bonerif.
pattern Bnv :: Language
pattern Bnv = $(bakeLanguage Nothing "bnv")

-- | Bisis.
pattern Bnw :: Language
pattern Bnw = $(bakeLanguage Nothing "bnw")

-- | Bangubangu.
pattern Bnx :: Language
pattern Bnx = $(bakeLanguage Nothing "bnx")

-- | Bintulu.
pattern Bny :: Language
pattern Bny = $(bakeLanguage Nothing "bny")

-- | Beezen.
pattern Bnz :: Language
pattern Bnz = $(bakeLanguage Nothing "bnz")

-- | Bora.
pattern Boa :: Language
pattern Boa = $(bakeLanguage Nothing "boa")

-- | Aweer.
pattern Bob :: Language
pattern Bob = $(bakeLanguage Nothing "bob")

-- | Mundabli-Mufu.
pattern Boe :: Language
pattern Boe = $(bakeLanguage Nothing "boe")

-- | Bolon.
pattern Bof :: Language
pattern Bof = $(bakeLanguage Nothing "bof")

-- | Bamako Sign Language.
pattern Bog :: Language
pattern Bog = $(bakeLanguage Nothing "bog")

-- | Boma.
pattern Boh :: Language
pattern Boh = $(bakeLanguage Nothing "boh")

-- | Barbareño.
pattern Boi :: Language
pattern Boi = $(bakeLanguage Nothing "boi")

-- | Anjam.
pattern Boj :: Language
pattern Boj = $(bakeLanguage Nothing "boj")

-- | Bonjo.
pattern Bok :: Language
pattern Bok = $(bakeLanguage Nothing "bok")

-- | Bole.
pattern Bol :: Language
pattern Bol = $(bakeLanguage Nothing "bol")

-- | Berom.
pattern Bom :: Language
pattern Bom = $(bakeLanguage Nothing "bom")

-- | Bine.
pattern Bon :: Language
pattern Bon = $(bakeLanguage Nothing "bon")

-- | Tiemacèwè Bozo.
pattern Boo :: Language
pattern Boo = $(bakeLanguage Nothing "boo")

-- | Bonkiman.
pattern Bop :: Language
pattern Bop = $(bakeLanguage Nothing "bop")

-- | Bogaya.
pattern Boq :: Language
pattern Boq = $(bakeLanguage Nothing "boq")

-- | Borôro.
pattern Bor :: Language
pattern Bor = $(bakeLanguage Nothing "bor")

-- | Bongo.
pattern Bot :: Language
pattern Bot = $(bakeLanguage Nothing "bot")

-- | Bondei.
pattern Bou :: Language
pattern Bou = $(bakeLanguage Nothing "bou")

-- | Tuwuli.
pattern Bov :: Language
pattern Bov = $(bakeLanguage Nothing "bov")

-- | Rema.
pattern Bow :: Language
pattern Bow = $(bakeLanguage Nothing "bow")

-- | Buamu.
pattern Box :: Language
pattern Box = $(bakeLanguage Nothing "box")

-- | Bodo (Central African Republic).
pattern Boy :: Language
pattern Boy = $(bakeLanguage Nothing "boy")

-- | Tiéyaxo Bozo.
pattern Boz :: Language
pattern Boz = $(bakeLanguage Nothing "boz")

-- | Daakaka.
pattern Bpa :: Language
pattern Bpa = $(bakeLanguage Nothing "bpa")

-- | Mbuk.
pattern Bpc :: Language
pattern Bpc = $(bakeLanguage Nothing "bpc")

-- | Banda-Banda.
pattern Bpd :: Language
pattern Bpd = $(bakeLanguage Nothing "bpd")

-- | Bauni.
pattern Bpe :: Language
pattern Bpe = $(bakeLanguage Nothing "bpe")

-- | Bonggo.
pattern Bpg :: Language
pattern Bpg = $(bakeLanguage Nothing "bpg")

-- | Botlikh.
pattern Bph :: Language
pattern Bph = $(bakeLanguage Nothing "bph")

-- | Bagupi.
pattern Bpi :: Language
pattern Bpi = $(bakeLanguage Nothing "bpi")

-- | Binji.
pattern Bpj :: Language
pattern Bpj = $(bakeLanguage Nothing "bpj")

-- | Orowe.
pattern Bpk :: Language
pattern Bpk = $(bakeLanguage Nothing "bpk")

-- | Broome Pearling Lugger Pidgin.
pattern Bpl :: Language
pattern Bpl = $(bakeLanguage Nothing "bpl")

-- | Biyom.
pattern Bpm :: Language
pattern Bpm = $(bakeLanguage Nothing "bpm")

-- | Dzao Min.
pattern Bpn :: Language
pattern Bpn = $(bakeLanguage Nothing "bpn")

-- | Anasi.
pattern Bpo :: Language
pattern Bpo = $(bakeLanguage Nothing "bpo")

-- | Kaure.
pattern Bpp :: Language
pattern Bpp = $(bakeLanguage Nothing "bpp")

-- | Banda Malay.
pattern Bpq :: Language
pattern Bpq = $(bakeLanguage Nothing "bpq")

-- | Koronadal Blaan.
pattern Bpr :: Language
pattern Bpr = $(bakeLanguage Nothing "bpr")

-- | Sarangani Blaan.
pattern Bps :: Language
pattern Bps = $(bakeLanguage Nothing "bps")

-- | Barrow Point.
pattern Bpt :: Language
pattern Bpt = $(bakeLanguage Nothing "bpt")

-- | Bongu.
pattern Bpu :: Language
pattern Bpu = $(bakeLanguage Nothing "bpu")

-- | Bian Marind.
pattern Bpv :: Language
pattern Bpv = $(bakeLanguage Nothing "bpv")

-- | Bo (Papua New Guinea).
pattern Bpw :: Language
pattern Bpw = $(bakeLanguage Nothing "bpw")

-- | Palya Bareli.
pattern Bpx :: Language
pattern Bpx = $(bakeLanguage Nothing "bpx")

-- | Bishnupriya.
pattern Bpy :: Language
pattern Bpy = $(bakeLanguage Nothing "bpy")

-- | Bilba.
pattern Bpz :: Language
pattern Bpz = $(bakeLanguage Nothing "bpz")

-- | Tchumbuli.
pattern Bqa :: Language
pattern Bqa = $(bakeLanguage Nothing "bqa")

-- | Bagusa.
pattern Bqb :: Language
pattern Bqb = $(bakeLanguage Nothing "bqb")

-- | Boko (Benin).
pattern Bqc :: Language
pattern Bqc = $(bakeLanguage Nothing "bqc")

-- | Bung.
pattern Bqd :: Language
pattern Bqd = $(bakeLanguage Nothing "bqd")

-- | Baga Kaloum.
pattern Bqf :: Language
pattern Bqf = $(bakeLanguage Nothing "bqf")

-- | Bago-Kusuntu.
pattern Bqg :: Language
pattern Bqg = $(bakeLanguage Nothing "bqg")

-- | Baima.
pattern Bqh :: Language
pattern Bqh = $(bakeLanguage Nothing "bqh")

-- | Bakhtiari.
pattern Bqi :: Language
pattern Bqi = $(bakeLanguage Nothing "bqi")

-- | Bandial.
pattern Bqj :: Language
pattern Bqj = $(bakeLanguage Nothing "bqj")

-- | Banda-Mbrès.
pattern Bqk :: Language
pattern Bqk = $(bakeLanguage Nothing "bqk")

-- | Karian.
pattern Bql :: Language
pattern Bql = $(bakeLanguage Nothing "bql")

-- | Wumboko.
pattern Bqm :: Language
pattern Bqm = $(bakeLanguage Nothing "bqm")

-- | Bulgarian Sign Language.
pattern Bqn :: Language
pattern Bqn = $(bakeLanguage Nothing "bqn")

-- | Balo.
pattern Bqo :: Language
pattern Bqo = $(bakeLanguage Nothing "bqo")

-- | Busa.
pattern Bqp :: Language
pattern Bqp = $(bakeLanguage Nothing "bqp")

-- | Biritai.
pattern Bqq :: Language
pattern Bqq = $(bakeLanguage Nothing "bqq")

-- | Burusu.
pattern Bqr :: Language
pattern Bqr = $(bakeLanguage Nothing "bqr")

-- | Bosngun.
pattern Bqs :: Language
pattern Bqs = $(bakeLanguage Nothing "bqs")

-- | Bamukumbit.
pattern Bqt :: Language
pattern Bqt = $(bakeLanguage Nothing "bqt")

-- | Boguru.
pattern Bqu :: Language
pattern Bqu = $(bakeLanguage Nothing "bqu")

-- | Koro Wachi.
pattern Bqv :: Language
pattern Bqv = $(bakeLanguage Nothing "bqv")

-- | Buru (Nigeria).
pattern Bqw :: Language
pattern Bqw = $(bakeLanguage Nothing "bqw")

-- | Baangi.
pattern Bqx :: Language
pattern Bqx = $(bakeLanguage Nothing "bqx")

-- | Bengkala Sign Language.
pattern Bqy :: Language
pattern Bqy = $(bakeLanguage Nothing "bqy")

-- | Bakaka.
pattern Bqz :: Language
pattern Bqz = $(bakeLanguage Nothing "bqz")

-- | Braj.
pattern Bra :: Language
pattern Bra = $(bakeLanguage Nothing "bra")

-- | Brao.
pattern Brb :: Language
pattern Brb = $(bakeLanguage Nothing "brb")

-- | Berbice Creole Dutch.
pattern Brc :: Language
pattern Brc = $(bakeLanguage Nothing "brc")

-- | Baraamu.
pattern Brd :: Language
pattern Brd = $(bakeLanguage Nothing "brd")

-- | Bira.
pattern Brf :: Language
pattern Brf = $(bakeLanguage Nothing "brf")

-- | Baure.
pattern Brg :: Language
pattern Brg = $(bakeLanguage Nothing "brg")

-- | Brahui.
pattern Brh :: Language
pattern Brh = $(bakeLanguage Nothing "brh")

-- | Mokpwe.
pattern Bri :: Language
pattern Bri = $(bakeLanguage Nothing "bri")

-- | Bieria.
pattern Brj :: Language
pattern Brj = $(bakeLanguage Nothing "brj")

-- | Birked.
pattern Brk :: Language
pattern Brk = $(bakeLanguage Nothing "brk")

-- | Birwa.
pattern Brl :: Language
pattern Brl = $(bakeLanguage Nothing "brl")

-- | Barambu.
pattern Brm :: Language
pattern Brm = $(bakeLanguage Nothing "brm")

-- | Boruca.
pattern Brn :: Language
pattern Brn = $(bakeLanguage Nothing "brn")

-- | Brokkat.
pattern Bro :: Language
pattern Bro = $(bakeLanguage Nothing "bro")

-- | Barapasi.
pattern Brp :: Language
pattern Brp = $(bakeLanguage Nothing "brp")

-- | Breri.
pattern Brq :: Language
pattern Brq = $(bakeLanguage Nothing "brq")

-- | Birao.
pattern Brr :: Language
pattern Brr = $(bakeLanguage Nothing "brr")

-- | Baras.
pattern Brs :: Language
pattern Brs = $(bakeLanguage Nothing "brs")

-- | Bitare.
pattern Brt :: Language
pattern Brt = $(bakeLanguage Nothing "brt")

-- | Eastern Bru.
pattern Bru :: Language
pattern Bru = $(bakeLanguage Nothing "bru")

-- | Western Bru.
pattern Brv :: Language
pattern Brv = $(bakeLanguage Nothing "brv")

-- | Bellari.
pattern Brw :: Language
pattern Brw = $(bakeLanguage Nothing "brw")

-- | Bodo (India).
pattern Brx :: Language
pattern Brx = $(bakeLanguage Nothing "brx")

-- | Burui.
pattern Bry :: Language
pattern Bry = $(bakeLanguage Nothing "bry")

-- | Bilbil.
pattern Brz :: Language
pattern Brz = $(bakeLanguage Nothing "brz")

-- | Abinomn.
pattern Bsa :: Language
pattern Bsa = $(bakeLanguage Nothing "bsa")

-- | Brunei Bisaya.
pattern Bsb :: Language
pattern Bsb = $(bakeLanguage Nothing "bsb")

-- | Bassari.
pattern Bsc :: Language
pattern Bsc = $(bakeLanguage Nothing "bsc")

-- | Wushi.
pattern Bse :: Language
pattern Bse = $(bakeLanguage Nothing "bse")

-- | Bauchi.
pattern Bsf :: Language
pattern Bsf = $(bakeLanguage Nothing "bsf")

-- | Bashkardi.
pattern Bsg :: Language
pattern Bsg = $(bakeLanguage Nothing "bsg")

-- | Kati.
pattern Bsh :: Language
pattern Bsh = $(bakeLanguage Nothing "bsh")

-- | Bassossi.
pattern Bsi :: Language
pattern Bsi = $(bakeLanguage Nothing "bsi")

-- | Bangwinji.
pattern Bsj :: Language
pattern Bsj = $(bakeLanguage Nothing "bsj")

-- | Burushaski.
pattern Bsk :: Language
pattern Bsk = $(bakeLanguage Nothing "bsk")

-- | Basa-Gumna.
pattern Bsl :: Language
pattern Bsl = $(bakeLanguage Nothing "bsl")

-- | Busami.
pattern Bsm :: Language
pattern Bsm = $(bakeLanguage Nothing "bsm")

-- | Barasana-Eduria.
pattern Bsn :: Language
pattern Bsn = $(bakeLanguage Nothing "bsn")

-- | Buso.
pattern Bso :: Language
pattern Bso = $(bakeLanguage Nothing "bso")

-- | Baga Sitemu.
pattern Bsp :: Language
pattern Bsp = $(bakeLanguage Nothing "bsp")

-- | Bassa.
pattern Bsq :: Language
pattern Bsq = $(bakeLanguage Nothing "bsq")

-- | Bassa-Kontagora.
pattern Bsr :: Language
pattern Bsr = $(bakeLanguage Nothing "bsr")

-- | Akoose.
pattern Bss :: Language
pattern Bss = $(bakeLanguage Nothing "bss")

-- | Basketo.
pattern Bst :: Language
pattern Bst = $(bakeLanguage Nothing "bst")

-- | Bahonsuai.
pattern Bsu :: Language
pattern Bsu = $(bakeLanguage Nothing "bsu")

-- | Baga Sobané.
pattern Bsv :: Language
pattern Bsv = $(bakeLanguage Nothing "bsv")

-- | Baiso.
pattern Bsw :: Language
pattern Bsw = $(bakeLanguage Nothing "bsw")

-- | Yangkam.
pattern Bsx :: Language
pattern Bsx = $(bakeLanguage Nothing "bsx")

-- | Sabah Bisaya.
pattern Bsy :: Language
pattern Bsy = $(bakeLanguage Nothing "bsy")

-- | Bata.
pattern Bta :: Language
pattern Bta = $(bakeLanguage Nothing "bta")

-- | Bati (Cameroon).
pattern Btc :: Language
pattern Btc = $(bakeLanguage Nothing "btc")

-- | Batak Dairi.
pattern Btd :: Language
pattern Btd = $(bakeLanguage Nothing "btd")

-- | Gamo-Ningi.
pattern Bte :: Language
pattern Bte = $(bakeLanguage Nothing "bte")

-- | Birgit.
pattern Btf :: Language
pattern Btf = $(bakeLanguage Nothing "btf")

-- | Gagnoa Bété.
pattern Btg :: Language
pattern Btg = $(bakeLanguage Nothing "btg")

-- | Biatah Bidayuh.
pattern Bth :: Language
pattern Bth = $(bakeLanguage Nothing "bth")

-- | Burate.
pattern Bti :: Language
pattern Bti = $(bakeLanguage Nothing "bti")

-- | Bacanese Malay.
pattern Btj :: Language
pattern Btj = $(bakeLanguage Nothing "btj")

-- | Batak Mandailing.
pattern Btm :: Language
pattern Btm = $(bakeLanguage Nothing "btm")

-- | Ratagnon.
pattern Btn :: Language
pattern Btn = $(bakeLanguage Nothing "btn")

-- | Rinconada Bikol.
pattern Bto :: Language
pattern Bto = $(bakeLanguage Nothing "bto")

-- | Budibud.
pattern Btp :: Language
pattern Btp = $(bakeLanguage Nothing "btp")

-- | Batek.
pattern Btq :: Language
pattern Btq = $(bakeLanguage Nothing "btq")

-- | Baetora.
pattern Btr :: Language
pattern Btr = $(bakeLanguage Nothing "btr")

-- | Batak Simalungun.
pattern Bts :: Language
pattern Bts = $(bakeLanguage Nothing "bts")

-- | Bete-Bendi.
pattern Btt :: Language
pattern Btt = $(bakeLanguage Nothing "btt")

-- | Batu.
pattern Btu :: Language
pattern Btu = $(bakeLanguage Nothing "btu")

-- | Bateri.
pattern Btv :: Language
pattern Btv = $(bakeLanguage Nothing "btv")

-- | Butuanon.
pattern Btw :: Language
pattern Btw = $(bakeLanguage Nothing "btw")

-- | Batak Karo.
pattern Btx :: Language
pattern Btx = $(bakeLanguage Nothing "btx")

-- | Bobot.
pattern Bty :: Language
pattern Bty = $(bakeLanguage Nothing "bty")

-- | Batak Alas-Kluet.
pattern Btz :: Language
pattern Btz = $(bakeLanguage Nothing "btz")

-- | Buriat.
pattern Bua :: Language
pattern Bua = $(bakeLanguage Nothing "bua")

-- | Bua.
pattern Bub :: Language
pattern Bub = $(bakeLanguage Nothing "bub")

-- | Bushi.
pattern Buc :: Language
pattern Buc = $(bakeLanguage Nothing "buc")

-- | Ntcham.
pattern Bud :: Language
pattern Bud = $(bakeLanguage Nothing "bud")

-- | Beothuk.
pattern Bue :: Language
pattern Bue = $(bakeLanguage Nothing "bue")

-- | Bushoong.
pattern Buf :: Language
pattern Buf = $(bakeLanguage Nothing "buf")

-- | Buginese.
pattern Bug :: Language
pattern Bug = $(bakeLanguage Nothing "bug")

-- | Younuo Bunu.
pattern Buh :: Language
pattern Buh = $(bakeLanguage Nothing "buh")

-- | Bongili.
pattern Bui :: Language
pattern Bui = $(bakeLanguage Nothing "bui")

-- | Basa-Gurmana.
pattern Buj :: Language
pattern Buj = $(bakeLanguage Nothing "buj")

-- | Bugawac.
pattern Buk :: Language
pattern Buk = $(bakeLanguage Nothing "buk")

-- | Bulu (Cameroon).
pattern Bum :: Language
pattern Bum = $(bakeLanguage Nothing "bum")

-- | Sherbro.
pattern Bun :: Language
pattern Bun = $(bakeLanguage Nothing "bun")

-- | Terei.
pattern Buo :: Language
pattern Buo = $(bakeLanguage Nothing "buo")

-- | Busoa.
pattern Bup :: Language
pattern Bup = $(bakeLanguage Nothing "bup")

-- | Brem.
pattern Buq :: Language
pattern Buq = $(bakeLanguage Nothing "buq")

-- | Bokobaru.
pattern Bus :: Language
pattern Bus = $(bakeLanguage Nothing "bus")

-- | Bungain.
pattern But :: Language
pattern But = $(bakeLanguage Nothing "but")

-- | Budu.
pattern Buu :: Language
pattern Buu = $(bakeLanguage Nothing "buu")

-- | Bun.
pattern Buv :: Language
pattern Buv = $(bakeLanguage Nothing "buv")

-- | Bubi.
pattern Buw :: Language
pattern Buw = $(bakeLanguage Nothing "buw")

-- | Boghom.
pattern Bux :: Language
pattern Bux = $(bakeLanguage Nothing "bux")

-- | Bullom So.
pattern Buy :: Language
pattern Buy = $(bakeLanguage Nothing "buy")

-- | Bukwen.
pattern Buz :: Language
pattern Buz = $(bakeLanguage Nothing "buz")

-- | Barein.
pattern Bva :: Language
pattern Bva = $(bakeLanguage Nothing "bva")

-- | Bube.
pattern Bvb :: Language
pattern Bvb = $(bakeLanguage Nothing "bvb")

-- | Baelelea.
pattern Bvc :: Language
pattern Bvc = $(bakeLanguage Nothing "bvc")

-- | Baeggu.
pattern Bvd :: Language
pattern Bvd = $(bakeLanguage Nothing "bvd")

-- | Berau Malay.
pattern Bve :: Language
pattern Bve = $(bakeLanguage Nothing "bve")

-- | Boor.
pattern Bvf :: Language
pattern Bvf = $(bakeLanguage Nothing "bvf")

-- | Bonkeng.
pattern Bvg :: Language
pattern Bvg = $(bakeLanguage Nothing "bvg")

-- | Bure.
pattern Bvh :: Language
pattern Bvh = $(bakeLanguage Nothing "bvh")

-- | Belanda Viri.
pattern Bvi :: Language
pattern Bvi = $(bakeLanguage Nothing "bvi")

-- | Baan.
pattern Bvj :: Language
pattern Bvj = $(bakeLanguage Nothing "bvj")

-- | Bukat.
pattern Bvk :: Language
pattern Bvk = $(bakeLanguage Nothing "bvk")

-- | Bolivian Sign Language.
pattern Bvl :: Language
pattern Bvl = $(bakeLanguage Nothing "bvl")

-- | Bamunka.
pattern Bvm :: Language
pattern Bvm = $(bakeLanguage Nothing "bvm")

-- | Buna.
pattern Bvn :: Language
pattern Bvn = $(bakeLanguage Nothing "bvn")

-- | Bolgo.
pattern Bvo :: Language
pattern Bvo = $(bakeLanguage Nothing "bvo")

-- | Bumang.
pattern Bvp :: Language
pattern Bvp = $(bakeLanguage Nothing "bvp")

-- | Birri.
pattern Bvq :: Language
pattern Bvq = $(bakeLanguage Nothing "bvq")

-- | Burarra.
pattern Bvr :: Language
pattern Bvr = $(bakeLanguage Nothing "bvr")

-- | Bati (Indonesia).
pattern Bvt :: Language
pattern Bvt = $(bakeLanguage Nothing "bvt")

-- | Bukit Malay.
pattern Bvu :: Language
pattern Bvu = $(bakeLanguage Nothing "bvu")

-- | Baniva.
pattern Bvv :: Language
pattern Bvv = $(bakeLanguage Nothing "bvv")

-- | Boga.
pattern Bvw :: Language
pattern Bvw = $(bakeLanguage Nothing "bvw")

-- | Dibole.
pattern Bvx :: Language
pattern Bvx = $(bakeLanguage Nothing "bvx")

-- | Baybayanon.
pattern Bvy :: Language
pattern Bvy = $(bakeLanguage Nothing "bvy")

-- | Bauzi.
pattern Bvz :: Language
pattern Bvz = $(bakeLanguage Nothing "bvz")

-- | Bwatoo.
pattern Bwa :: Language
pattern Bwa = $(bakeLanguage Nothing "bwa")

-- | Namosi-Naitasiri-Serua.
pattern Bwb :: Language
pattern Bwb = $(bakeLanguage Nothing "bwb")

-- | Bwile.
pattern Bwc :: Language
pattern Bwc = $(bakeLanguage Nothing "bwc")

-- | Bwaidoka.
pattern Bwd :: Language
pattern Bwd = $(bakeLanguage Nothing "bwd")

-- | Bwe Karen.
pattern Bwe :: Language
pattern Bwe = $(bakeLanguage Nothing "bwe")

-- | Boselewa.
pattern Bwf :: Language
pattern Bwf = $(bakeLanguage Nothing "bwf")

-- | Barwe.
pattern Bwg :: Language
pattern Bwg = $(bakeLanguage Nothing "bwg")

-- | Bishuo.
pattern Bwh :: Language
pattern Bwh = $(bakeLanguage Nothing "bwh")

-- | Baniwa.
pattern Bwi :: Language
pattern Bwi = $(bakeLanguage Nothing "bwi")

-- | Láá Láá Bwamu.
pattern Bwj :: Language
pattern Bwj = $(bakeLanguage Nothing "bwj")

-- | Bauwaki.
pattern Bwk :: Language
pattern Bwk = $(bakeLanguage Nothing "bwk")

-- | Bwela.
pattern Bwl :: Language
pattern Bwl = $(bakeLanguage Nothing "bwl")

-- | Biwat.
pattern Bwm :: Language
pattern Bwm = $(bakeLanguage Nothing "bwm")

-- | Wunai Bunu.
pattern Bwn :: Language
pattern Bwn = $(bakeLanguage Nothing "bwn")

-- | Boro (Ethiopia).
pattern Bwo :: Language
pattern Bwo = $(bakeLanguage Nothing "bwo")

-- | Mandobo Bawah.
pattern Bwp :: Language
pattern Bwp = $(bakeLanguage Nothing "bwp")

-- | Southern Bobo Madaré.
pattern Bwq :: Language
pattern Bwq = $(bakeLanguage Nothing "bwq")

-- | Bura-Pabir.
pattern Bwr :: Language
pattern Bwr = $(bakeLanguage Nothing "bwr")

-- | Bomboma.
pattern Bws :: Language
pattern Bws = $(bakeLanguage Nothing "bws")

-- | Bafaw-Balong.
pattern Bwt :: Language
pattern Bwt = $(bakeLanguage Nothing "bwt")

-- | Buli (Ghana).
pattern Bwu :: Language
pattern Bwu = $(bakeLanguage Nothing "bwu")

-- | Bwa.
pattern Bww :: Language
pattern Bww = $(bakeLanguage Nothing "bww")

-- | Bu-Nao Bunu.
pattern Bwx :: Language
pattern Bwx = $(bakeLanguage Nothing "bwx")

-- | Cwi Bwamu.
pattern Bwy :: Language
pattern Bwy = $(bakeLanguage Nothing "bwy")

-- | Bwisi.
pattern Bwz :: Language
pattern Bwz = $(bakeLanguage Nothing "bwz")

-- | Tairaha.
pattern Bxa :: Language
pattern Bxa = $(bakeLanguage Nothing "bxa")

-- | Belanda Bor.
pattern Bxb :: Language
pattern Bxb = $(bakeLanguage Nothing "bxb")

-- | Molengue.
pattern Bxc :: Language
pattern Bxc = $(bakeLanguage Nothing "bxc")

-- | Pela.
pattern Bxd :: Language
pattern Bxd = $(bakeLanguage Nothing "bxd")

-- | Birale.
pattern Bxe :: Language
pattern Bxe = $(bakeLanguage Nothing "bxe")

-- | Bilur.
pattern Bxf :: Language
pattern Bxf = $(bakeLanguage Nothing "bxf")

-- | Bangala.
pattern Bxg :: Language
pattern Bxg = $(bakeLanguage Nothing "bxg")

-- | Buhutu.
pattern Bxh :: Language
pattern Bxh = $(bakeLanguage Nothing "bxh")

-- | Pirlatapa.
pattern Bxi :: Language
pattern Bxi = $(bakeLanguage Nothing "bxi")

-- | Bayungu.
pattern Bxj :: Language
pattern Bxj = $(bakeLanguage Nothing "bxj")

-- | Bukusu.
pattern Bxk :: Language
pattern Bxk = $(bakeLanguage Nothing "bxk")

-- | Jalkunan.
pattern Bxl :: Language
pattern Bxl = $(bakeLanguage Nothing "bxl")

-- | Mongolia Buriat.
pattern Bxm :: Language
pattern Bxm = $(bakeLanguage Nothing "bxm")

-- | Burduna.
pattern Bxn :: Language
pattern Bxn = $(bakeLanguage Nothing "bxn")

-- | Barikanchi.
pattern Bxo :: Language
pattern Bxo = $(bakeLanguage Nothing "bxo")

-- | Bebil.
pattern Bxp :: Language
pattern Bxp = $(bakeLanguage Nothing "bxp")

-- | Beele.
pattern Bxq :: Language
pattern Bxq = $(bakeLanguage Nothing "bxq")

-- | Russia Buriat.
pattern Bxr :: Language
pattern Bxr = $(bakeLanguage Nothing "bxr")

-- | Busam.
pattern Bxs :: Language
pattern Bxs = $(bakeLanguage Nothing "bxs")

-- | China Buriat.
pattern Bxu :: Language
pattern Bxu = $(bakeLanguage Nothing "bxu")

-- | Berakou.
pattern Bxv :: Language
pattern Bxv = $(bakeLanguage Nothing "bxv")

-- | Bankagooma.
pattern Bxw :: Language
pattern Bxw = $(bakeLanguage Nothing "bxw")

-- | Binahari.
pattern Bxz :: Language
pattern Bxz = $(bakeLanguage Nothing "bxz")

-- | Batak.
pattern Bya :: Language
pattern Bya = $(bakeLanguage Nothing "bya")

-- | Bikya.
pattern Byb :: Language
pattern Byb = $(bakeLanguage Nothing "byb")

-- | Ubaghara.
pattern Byc :: Language
pattern Byc = $(bakeLanguage Nothing "byc")

-- | Benyadu'.
pattern Byd :: Language
pattern Byd = $(bakeLanguage Nothing "byd")

-- | Pouye.
pattern Bye :: Language
pattern Bye = $(bakeLanguage Nothing "bye")

-- | Bete.
pattern Byf :: Language
pattern Byf = $(bakeLanguage Nothing "byf")

-- | Baygo.
pattern Byg :: Language
pattern Byg = $(bakeLanguage Nothing "byg")

-- | Bhujel.
pattern Byh :: Language
pattern Byh = $(bakeLanguage Nothing "byh")

-- | Buyu.
pattern Byi :: Language
pattern Byi = $(bakeLanguage Nothing "byi")

-- | Bina (Nigeria).
pattern Byj :: Language
pattern Byj = $(bakeLanguage Nothing "byj")

-- | Biao.
pattern Byk :: Language
pattern Byk = $(bakeLanguage Nothing "byk")

-- | Bayono.
pattern Byl :: Language
pattern Byl = $(bakeLanguage Nothing "byl")

-- | Bidjara.
pattern Bym :: Language
pattern Bym = $(bakeLanguage Nothing "bym")

-- | Bilin.
pattern Byn :: Language
pattern Byn = $(bakeLanguage Nothing "byn")

-- | Biyo.
pattern Byo :: Language
pattern Byo = $(bakeLanguage Nothing "byo")

-- | Bumaji.
pattern Byp :: Language
pattern Byp = $(bakeLanguage Nothing "byp")

-- | Basay.
pattern Byq :: Language
pattern Byq = $(bakeLanguage Nothing "byq")

-- | Baruya.
pattern Byr :: Language
pattern Byr = $(bakeLanguage Nothing "byr")

-- | Burak.
pattern Bys :: Language
pattern Bys = $(bakeLanguage Nothing "bys")

-- | Berti.
pattern Byt :: Language
pattern Byt = $(bakeLanguage Nothing "byt")

-- | Medumba.
pattern Byv :: Language
pattern Byv = $(bakeLanguage Nothing "byv")

-- | Belhariya.
pattern Byw :: Language
pattern Byw = $(bakeLanguage Nothing "byw")

-- | Qaqet.
pattern Byx :: Language
pattern Byx = $(bakeLanguage Nothing "byx")

-- | Banaro.
pattern Byz :: Language
pattern Byz = $(bakeLanguage Nothing "byz")

-- | Bandi.
pattern Bza :: Language
pattern Bza = $(bakeLanguage Nothing "bza")

-- | Andio.
pattern Bzb :: Language
pattern Bzb = $(bakeLanguage Nothing "bzb")

-- | Southern Betsimisaraka Malagasy.
pattern Bzc :: Language
pattern Bzc = $(bakeLanguage Nothing "bzc")

-- | Bribri.
pattern Bzd :: Language
pattern Bzd = $(bakeLanguage Nothing "bzd")

-- | Jenaama Bozo.
pattern Bze :: Language
pattern Bze = $(bakeLanguage Nothing "bze")

-- | Boikin.
pattern Bzf :: Language
pattern Bzf = $(bakeLanguage Nothing "bzf")

-- | Babuza.
pattern Bzg :: Language
pattern Bzg = $(bakeLanguage Nothing "bzg")

-- | Mapos Buang.
pattern Bzh :: Language
pattern Bzh = $(bakeLanguage Nothing "bzh")

-- | Bisu.
pattern Bzi :: Language
pattern Bzi = $(bakeLanguage Nothing "bzi")

-- | Belize Kriol English.
pattern Bzj :: Language
pattern Bzj = $(bakeLanguage Nothing "bzj")

-- | Nicaragua Creole English.
pattern Bzk :: Language
pattern Bzk = $(bakeLanguage Nothing "bzk")

-- | Boano (Sulawesi).
pattern Bzl :: Language
pattern Bzl = $(bakeLanguage Nothing "bzl")

-- | Bolondo.
pattern Bzm :: Language
pattern Bzm = $(bakeLanguage Nothing "bzm")

-- | Boano (Maluku).
pattern Bzn :: Language
pattern Bzn = $(bakeLanguage Nothing "bzn")

-- | Bozaba.
pattern Bzo :: Language
pattern Bzo = $(bakeLanguage Nothing "bzo")

-- | Kemberano.
pattern Bzp :: Language
pattern Bzp = $(bakeLanguage Nothing "bzp")

-- | Buli (Indonesia).
pattern Bzq :: Language
pattern Bzq = $(bakeLanguage Nothing "bzq")

-- | Biri.
pattern Bzr :: Language
pattern Bzr = $(bakeLanguage Nothing "bzr")

-- | Brazilian Sign Language.
pattern Bzs :: Language
pattern Bzs = $(bakeLanguage Nothing "bzs")

-- | Brithenig.
pattern Bzt :: Language
pattern Bzt = $(bakeLanguage Nothing "bzt")

-- | Burmeso.
pattern Bzu :: Language
pattern Bzu = $(bakeLanguage Nothing "bzu")

-- | Naami.
pattern Bzv :: Language
pattern Bzv = $(bakeLanguage Nothing "bzv")

-- | Basa (Nigeria).
pattern Bzw :: Language
pattern Bzw = $(bakeLanguage Nothing "bzw")

-- | Kɛlɛngaxo Bozo.
pattern Bzx :: Language
pattern Bzx = $(bakeLanguage Nothing "bzx")

-- | Obanliku.
pattern Bzy :: Language
pattern Bzy = $(bakeLanguage Nothing "bzy")

-- | Evant.
pattern Bzz :: Language
pattern Bzz = $(bakeLanguage Nothing "bzz")

-- | Chortí.
pattern Caa :: Language
pattern Caa = $(bakeLanguage Nothing "caa")

-- | Garifuna.
pattern Cab :: Language
pattern Cab = $(bakeLanguage Nothing "cab")

-- | Chuj.
pattern Cac :: Language
pattern Cac = $(bakeLanguage Nothing "cac")

-- | Caddo.
pattern Cad :: Language
pattern Cad = $(bakeLanguage Nothing "cad")

-- | Lehar.
pattern Cae :: Language
pattern Cae = $(bakeLanguage Nothing "cae")

-- | Southern Carrier.
pattern Caf :: Language
pattern Caf = $(bakeLanguage Nothing "caf")

-- | Nivaclé.
pattern Cag :: Language
pattern Cag = $(bakeLanguage Nothing "cag")

-- | Cahuarano.
pattern Cah :: Language
pattern Cah = $(bakeLanguage Nothing "cah")

-- | Chané.
pattern Caj :: Language
pattern Caj = $(bakeLanguage Nothing "caj")

-- | Kaqchikel.
pattern Cak :: Language
pattern Cak = $(bakeLanguage Nothing "cak")

-- | Carolinian.
pattern Cal :: Language
pattern Cal = $(bakeLanguage Nothing "cal")

-- | Cemuhî.
pattern Cam :: Language
pattern Cam = $(bakeLanguage Nothing "cam")

-- | Chambri.
pattern Can :: Language
pattern Can = $(bakeLanguage Nothing "can")

-- | Chácobo.
pattern Cao :: Language
pattern Cao = $(bakeLanguage Nothing "cao")

-- | Chipaya.
pattern Cap :: Language
pattern Cap = $(bakeLanguage Nothing "cap")

-- | Car Nicobarese.
pattern Caq :: Language
pattern Caq = $(bakeLanguage Nothing "caq")

-- | Galibi Carib.
pattern Car :: Language
pattern Car = $(bakeLanguage Nothing "car")

-- | Tsimané.
pattern Cas :: Language
pattern Cas = $(bakeLanguage Nothing "cas")

-- | Cavineña.
pattern Cav :: Language
pattern Cav = $(bakeLanguage Nothing "cav")

-- | Callawalla.
pattern Caw :: Language
pattern Caw = $(bakeLanguage Nothing "caw")

-- | Chiquitano.
pattern Cax :: Language
pattern Cax = $(bakeLanguage Nothing "cax")

-- | Cayuga.
pattern Cay :: Language
pattern Cay = $(bakeLanguage Nothing "cay")

-- | Canichana.
pattern Caz :: Language
pattern Caz = $(bakeLanguage Nothing "caz")

-- | Cabiyarí.
pattern Cbb :: Language
pattern Cbb = $(bakeLanguage Nothing "cbb")

-- | Carapana.
pattern Cbc :: Language
pattern Cbc = $(bakeLanguage Nothing "cbc")

-- | Carijona.
pattern Cbd :: Language
pattern Cbd = $(bakeLanguage Nothing "cbd")

-- | Chimila.
pattern Cbg :: Language
pattern Cbg = $(bakeLanguage Nothing "cbg")

-- | Chachi.
pattern Cbi :: Language
pattern Cbi = $(bakeLanguage Nothing "cbi")

-- | Ede Cabe.
pattern Cbj :: Language
pattern Cbj = $(bakeLanguage Nothing "cbj")

-- | Chavacano.
pattern Cbk :: Language
pattern Cbk = $(bakeLanguage Nothing "cbk")

-- | Bualkhaw Chin.
pattern Cbl :: Language
pattern Cbl = $(bakeLanguage Nothing "cbl")

-- | Nyahkur.
pattern Cbn :: Language
pattern Cbn = $(bakeLanguage Nothing "cbn")

-- | Izora.
pattern Cbo :: Language
pattern Cbo = $(bakeLanguage Nothing "cbo")

-- | Tsucuba.
pattern Cbq :: Language
pattern Cbq = $(bakeLanguage Nothing "cbq")

-- | Cashibo-Cacataibo.
pattern Cbr :: Language
pattern Cbr = $(bakeLanguage Nothing "cbr")

-- | Cashinahua.
pattern Cbs :: Language
pattern Cbs = $(bakeLanguage Nothing "cbs")

-- | Chayahuita.
pattern Cbt :: Language
pattern Cbt = $(bakeLanguage Nothing "cbt")

-- | Candoshi-Shapra.
pattern Cbu :: Language
pattern Cbu = $(bakeLanguage Nothing "cbu")

-- | Cacua.
pattern Cbv :: Language
pattern Cbv = $(bakeLanguage Nothing "cbv")

-- | Kinabalian.
pattern Cbw :: Language
pattern Cbw = $(bakeLanguage Nothing "cbw")

-- | Carabayo.
pattern Cby :: Language
pattern Cby = $(bakeLanguage Nothing "cby")

-- | Chamicuro.
pattern Ccc :: Language
pattern Ccc = $(bakeLanguage Nothing "ccc")

-- | Cafundo Creole.
pattern Ccd :: Language
pattern Ccd = $(bakeLanguage Nothing "ccd")

-- | Chopi.
pattern Cce :: Language
pattern Cce = $(bakeLanguage Nothing "cce")

-- | Samba Daka.
pattern Ccg :: Language
pattern Ccg = $(bakeLanguage Nothing "ccg")

-- | Atsam.
pattern Cch :: Language
pattern Cch = $(bakeLanguage Nothing "cch")

-- | Kasanga.
pattern Ccj :: Language
pattern Ccj = $(bakeLanguage Nothing "ccj")

-- | Cutchi-Swahili.
pattern Ccl :: Language
pattern Ccl = $(bakeLanguage Nothing "ccl")

-- | Malaccan Creole Malay.
pattern Ccm :: Language
pattern Ccm = $(bakeLanguage Nothing "ccm")

-- | Comaltepec Chinantec.
pattern Cco :: Language
pattern Cco = $(bakeLanguage Nothing "cco")

-- | Chakma.
pattern Ccp :: Language
pattern Ccp = $(bakeLanguage Nothing "ccp")

-- | Cacaopera.
pattern Ccr :: Language
pattern Ccr = $(bakeLanguage Nothing "ccr")

-- | Choni.
pattern Cda :: Language
pattern Cda = $(bakeLanguage Nothing "cda")

-- | Chenchu.
pattern Cde :: Language
pattern Cde = $(bakeLanguage Nothing "cde")

-- | Chiru.
pattern Cdf :: Language
pattern Cdf = $(bakeLanguage Nothing "cdf")

-- | Chambeali.
pattern Cdh :: Language
pattern Cdh = $(bakeLanguage Nothing "cdh")

-- | Chodri.
pattern Cdi :: Language
pattern Cdi = $(bakeLanguage Nothing "cdi")

-- | Churahi.
pattern Cdj :: Language
pattern Cdj = $(bakeLanguage Nothing "cdj")

-- | Chepang.
pattern Cdm :: Language
pattern Cdm = $(bakeLanguage Nothing "cdm")

-- | Chaudangsi.
pattern Cdn :: Language
pattern Cdn = $(bakeLanguage Nothing "cdn")

-- | Min Dong Chinese.
pattern Cdo :: Language
pattern Cdo = $(bakeLanguage Nothing "cdo")

-- | Cinda-Regi-Tiyal.
pattern Cdr :: Language
pattern Cdr = $(bakeLanguage Nothing "cdr")

-- | Chadian Sign Language.
pattern Cds :: Language
pattern Cds = $(bakeLanguage Nothing "cds")

-- | Chadong.
pattern Cdy :: Language
pattern Cdy = $(bakeLanguage Nothing "cdy")

-- | Koda.
pattern Cdz :: Language
pattern Cdz = $(bakeLanguage Nothing "cdz")

-- | Lower Chehalis.
pattern Cea :: Language
pattern Cea = $(bakeLanguage Nothing "cea")

-- | Cebuano.
pattern Ceb :: Language
pattern Ceb = $(bakeLanguage Nothing "ceb")

-- | Chamacoco.
pattern Ceg :: Language
pattern Ceg = $(bakeLanguage Nothing "ceg")

-- | Eastern Khumi Chin.
pattern Cek :: Language
pattern Cek = $(bakeLanguage Nothing "cek")

-- | Cen.
pattern Cen :: Language
pattern Cen = $(bakeLanguage Nothing "cen")

-- | Centúúm.
pattern Cet :: Language
pattern Cet = $(bakeLanguage Nothing "cet")

-- | Ekai Chin.
pattern Cey :: Language
pattern Cey = $(bakeLanguage Nothing "cey")

-- | Dijim-Bwilim.
pattern Cfa :: Language
pattern Cfa = $(bakeLanguage Nothing "cfa")

-- | Cara.
pattern Cfd :: Language
pattern Cfd = $(bakeLanguage Nothing "cfd")

-- | Como Karim.
pattern Cfg :: Language
pattern Cfg = $(bakeLanguage Nothing "cfg")

-- | Falam Chin.
pattern Cfm :: Language
pattern Cfm = $(bakeLanguage Nothing "cfm")

-- | Changriwa.
pattern Cga :: Language
pattern Cga = $(bakeLanguage Nothing "cga")

-- | Kagayanen.
pattern Cgc :: Language
pattern Cgc = $(bakeLanguage Nothing "cgc")

-- | Chiga.
pattern Cgg :: Language
pattern Cgg = $(bakeLanguage Nothing "cgg")

-- | Chocangacakha.
pattern Cgk :: Language
pattern Cgk = $(bakeLanguage Nothing "cgk")

-- | Chibcha.
pattern Chb :: Language
pattern Chb = $(bakeLanguage Nothing "chb")

-- | Catawba.
pattern Chc :: Language
pattern Chc = $(bakeLanguage Nothing "chc")

-- | Highland Oaxaca Chontal.
pattern Chd :: Language
pattern Chd = $(bakeLanguage Nothing "chd")

-- | Tabasco Chontal.
pattern Chf :: Language
pattern Chf = $(bakeLanguage Nothing "chf")

-- | Chagatai.
pattern Chg :: Language
pattern Chg = $(bakeLanguage Nothing "chg")

-- | Chinook.
pattern Chh :: Language
pattern Chh = $(bakeLanguage Nothing "chh")

-- | Ojitlán Chinantec.
pattern Chj :: Language
pattern Chj = $(bakeLanguage Nothing "chj")

-- | Chuukese.
pattern Chk :: Language
pattern Chk = $(bakeLanguage Nothing "chk")

-- | Cahuilla.
pattern Chl :: Language
pattern Chl = $(bakeLanguage Nothing "chl")

-- | Mari (Russia).
pattern Chm :: Language
pattern Chm = $(bakeLanguage Nothing "chm")

-- | Chinook jargon.
pattern Chn :: Language
pattern Chn = $(bakeLanguage Nothing "chn")

-- | Choctaw.
pattern Cho :: Language
pattern Cho = $(bakeLanguage Nothing "cho")

-- | Chipewyan.
pattern Chp :: Language
pattern Chp = $(bakeLanguage Nothing "chp")

-- | Quiotepec Chinantec.
pattern Chq :: Language
pattern Chq = $(bakeLanguage Nothing "chq")

-- | Cherokee.
pattern Chr :: Language
pattern Chr = $(bakeLanguage Nothing "chr")

-- | Cholón.
pattern Cht :: Language
pattern Cht = $(bakeLanguage Nothing "cht")

-- | Chuwabu.
pattern Chw :: Language
pattern Chw = $(bakeLanguage Nothing "chw")

-- | Chantyal.
pattern Chx :: Language
pattern Chx = $(bakeLanguage Nothing "chx")

-- | Cheyenne.
pattern Chy :: Language
pattern Chy = $(bakeLanguage Nothing "chy")

-- | Ozumacín Chinantec.
pattern Chz :: Language
pattern Chz = $(bakeLanguage Nothing "chz")

-- | Cia-Cia.
pattern Cia :: Language
pattern Cia = $(bakeLanguage Nothing "cia")

-- | Ci Gbe.
pattern Cib :: Language
pattern Cib = $(bakeLanguage Nothing "cib")

-- | Chickasaw.
pattern Cic :: Language
pattern Cic = $(bakeLanguage Nothing "cic")

-- | Chimariko.
pattern Cid :: Language
pattern Cid = $(bakeLanguage Nothing "cid")

-- | Cineni.
pattern Cie :: Language
pattern Cie = $(bakeLanguage Nothing "cie")

-- | Chinali.
pattern Cih :: Language
pattern Cih = $(bakeLanguage Nothing "cih")

-- | Chitkuli Kinnauri.
pattern Cik :: Language
pattern Cik = $(bakeLanguage Nothing "cik")

-- | Cimbrian.
pattern Cim :: Language
pattern Cim = $(bakeLanguage Nothing "cim")

-- | Cinta Larga.
pattern Cin :: Language
pattern Cin = $(bakeLanguage Nothing "cin")

-- | Chiapanec.
pattern Cip :: Language
pattern Cip = $(bakeLanguage Nothing "cip")

-- | Tiri.
pattern Cir :: Language
pattern Cir = $(bakeLanguage Nothing "cir")

-- | Chippewa.
pattern Ciw :: Language
pattern Ciw = $(bakeLanguage Nothing "ciw")

-- | Chaima.
pattern Ciy :: Language
pattern Ciy = $(bakeLanguage Nothing "ciy")

-- | Western Cham.
pattern Cja :: Language
pattern Cja = $(bakeLanguage Nothing "cja")

-- | Chru.
pattern Cje :: Language
pattern Cje = $(bakeLanguage Nothing "cje")

-- | Upper Chehalis.
pattern Cjh :: Language
pattern Cjh = $(bakeLanguage Nothing "cjh")

-- | Chamalal.
pattern Cji :: Language
pattern Cji = $(bakeLanguage Nothing "cji")

-- | Chokwe.
pattern Cjk :: Language
pattern Cjk = $(bakeLanguage Nothing "cjk")

-- | Eastern Cham.
pattern Cjm :: Language
pattern Cjm = $(bakeLanguage Nothing "cjm")

-- | Chenapian.
pattern Cjn :: Language
pattern Cjn = $(bakeLanguage Nothing "cjn")

-- | Ashéninka Pajonal.
pattern Cjo :: Language
pattern Cjo = $(bakeLanguage Nothing "cjo")

-- | Cabécar.
pattern Cjp :: Language
pattern Cjp = $(bakeLanguage Nothing "cjp")

-- | Shor.
pattern Cjs :: Language
pattern Cjs = $(bakeLanguage Nothing "cjs")

-- | Chuave.
pattern Cjv :: Language
pattern Cjv = $(bakeLanguage Nothing "cjv")

-- | Jinyu Chinese.
pattern Cjy :: Language
pattern Cjy = $(bakeLanguage Nothing "cjy")

-- | Central Kurdish.
pattern Ckb :: Language
pattern Ckb = $(bakeLanguage Nothing "ckb")

-- | Chak.
pattern Ckh :: Language
pattern Ckh = $(bakeLanguage Nothing "ckh")

-- | Cibak.
pattern Ckl :: Language
pattern Ckl = $(bakeLanguage Nothing "ckl")

-- | Chakavian.
pattern Ckm :: Language
pattern Ckm = $(bakeLanguage Nothing "ckm")

-- | Kaang Chin.
pattern Ckn :: Language
pattern Ckn = $(bakeLanguage Nothing "ckn")

-- | Anufo.
pattern Cko :: Language
pattern Cko = $(bakeLanguage Nothing "cko")

-- | Kajakse.
pattern Ckq :: Language
pattern Ckq = $(bakeLanguage Nothing "ckq")

-- | Kairak.
pattern Ckr :: Language
pattern Ckr = $(bakeLanguage Nothing "ckr")

-- | Tayo.
pattern Cks :: Language
pattern Cks = $(bakeLanguage Nothing "cks")

-- | Chukot.
pattern Ckt :: Language
pattern Ckt = $(bakeLanguage Nothing "ckt")

-- | Koasati.
pattern Cku :: Language
pattern Cku = $(bakeLanguage Nothing "cku")

-- | Kavalan.
pattern Ckv :: Language
pattern Ckv = $(bakeLanguage Nothing "ckv")

-- | Caka.
pattern Ckx :: Language
pattern Ckx = $(bakeLanguage Nothing "ckx")

-- | Cakfem-Mushere.
pattern Cky :: Language
pattern Cky = $(bakeLanguage Nothing "cky")

-- | Cakchiquel-Quiché Mixed Language.
pattern Ckz :: Language
pattern Ckz = $(bakeLanguage Nothing "ckz")

-- | Ron.
pattern Cla :: Language
pattern Cla = $(bakeLanguage Nothing "cla")

-- | Chilcotin.
pattern Clc :: Language
pattern Clc = $(bakeLanguage Nothing "clc")

-- | Chaldean Neo-Aramaic.
pattern Cld :: Language
pattern Cld = $(bakeLanguage Nothing "cld")

-- | Lealao Chinantec.
pattern Cle :: Language
pattern Cle = $(bakeLanguage Nothing "cle")

-- | Chilisso.
pattern Clh :: Language
pattern Clh = $(bakeLanguage Nothing "clh")

-- | Chakali.
pattern Cli :: Language
pattern Cli = $(bakeLanguage Nothing "cli")

-- | Laitu Chin.
pattern Clj :: Language
pattern Clj = $(bakeLanguage Nothing "clj")

-- | Idu-Mishmi.
pattern Clk :: Language
pattern Clk = $(bakeLanguage Nothing "clk")

-- | Chala.
pattern Cll :: Language
pattern Cll = $(bakeLanguage Nothing "cll")

-- | Klallam.
pattern Clm :: Language
pattern Clm = $(bakeLanguage Nothing "clm")

-- | Lowland Oaxaca Chontal.
pattern Clo :: Language
pattern Clo = $(bakeLanguage Nothing "clo")

-- | Classical Sanskrit.
pattern Cls :: Language
pattern Cls = $(bakeLanguage Nothing "cls")

-- | Lautu Chin.
pattern Clt :: Language
pattern Clt = $(bakeLanguage Nothing "clt")

-- | Caluyanun.
pattern Clu :: Language
pattern Clu = $(bakeLanguage Nothing "clu")

-- | Chulym.
pattern Clw :: Language
pattern Clw = $(bakeLanguage Nothing "clw")

-- | Eastern Highland Chatino.
pattern Cly :: Language
pattern Cly = $(bakeLanguage Nothing "cly")

-- | Maa.
pattern Cma :: Language
pattern Cma = $(bakeLanguage Nothing "cma")

-- | Cerma.
pattern Cme :: Language
pattern Cme = $(bakeLanguage Nothing "cme")

-- | Classical Mongolian.
pattern Cmg :: Language
pattern Cmg = $(bakeLanguage Nothing "cmg")

-- | Emberá-Chamí.
pattern Cmi :: Language
pattern Cmi = $(bakeLanguage Nothing "cmi")

-- | Campalagian.
pattern Cml :: Language
pattern Cml = $(bakeLanguage Nothing "cml")

-- | Michigamea.
pattern Cmm :: Language
pattern Cmm = $(bakeLanguage Nothing "cmm")

-- | Mandarin Chinese.
pattern Cmn :: Language
pattern Cmn = $(bakeLanguage Nothing "cmn")

-- | Central Mnong.
pattern Cmo :: Language
pattern Cmo = $(bakeLanguage Nothing "cmo")

-- | Mro-Khimi Chin.
pattern Cmr :: Language
pattern Cmr = $(bakeLanguage Nothing "cmr")

-- | Messapic.
pattern Cms :: Language
pattern Cms = $(bakeLanguage Nothing "cms")

-- | Camtho.
pattern Cmt :: Language
pattern Cmt = $(bakeLanguage Nothing "cmt")

-- | Changthang.
pattern Cna :: Language
pattern Cna = $(bakeLanguage Nothing "cna")

-- | Chinbon Chin.
pattern Cnb :: Language
pattern Cnb = $(bakeLanguage Nothing "cnb")

-- | Côông.
pattern Cnc :: Language
pattern Cnc = $(bakeLanguage Nothing "cnc")

-- | Northern Qiang.
pattern Cng :: Language
pattern Cng = $(bakeLanguage Nothing "cng")

-- | Hakha Chin.
pattern Cnh :: Language
pattern Cnh = $(bakeLanguage Nothing "cnh")

-- | Asháninka.
pattern Cni :: Language
pattern Cni = $(bakeLanguage Nothing "cni")

-- | Khumi Chin.
pattern Cnk :: Language
pattern Cnk = $(bakeLanguage Nothing "cnk")

-- | Lalana Chinantec.
pattern Cnl :: Language
pattern Cnl = $(bakeLanguage Nothing "cnl")

-- | Con.
pattern Cno :: Language
pattern Cno = $(bakeLanguage Nothing "cno")

-- | Northern Ping Chinese.
pattern Cnp :: Language
pattern Cnp = $(bakeLanguage Nothing "cnp")

-- | Chung.
pattern Cnq :: Language
pattern Cnq = $(bakeLanguage Nothing "cnq")

-- | Montenegrin.
pattern Cnr :: Language
pattern Cnr = $(bakeLanguage Nothing "cnr")

-- | Central Asmat.
pattern Cns :: Language
pattern Cns = $(bakeLanguage Nothing "cns")

-- | Tepetotutla Chinantec.
pattern Cnt :: Language
pattern Cnt = $(bakeLanguage Nothing "cnt")

-- | Chenoua.
pattern Cnu :: Language
pattern Cnu = $(bakeLanguage Nothing "cnu")

-- | Ngawn Chin.
pattern Cnw :: Language
pattern Cnw = $(bakeLanguage Nothing "cnw")

-- | Middle Cornish.
pattern Cnx :: Language
pattern Cnx = $(bakeLanguage Nothing "cnx")

-- | Cocos Islands Malay.
pattern Coa :: Language
pattern Coa = $(bakeLanguage Nothing "coa")

-- | Chicomuceltec.
pattern Cob :: Language
pattern Cob = $(bakeLanguage Nothing "cob")

-- | Cocopa.
pattern Coc :: Language
pattern Coc = $(bakeLanguage Nothing "coc")

-- | Cocama-Cocamilla.
pattern Cod :: Language
pattern Cod = $(bakeLanguage Nothing "cod")

-- | Koreguaje.
pattern Coe :: Language
pattern Coe = $(bakeLanguage Nothing "coe")

-- | Colorado.
pattern Cof :: Language
pattern Cof = $(bakeLanguage Nothing "cof")

-- | Chong.
pattern Cog :: Language
pattern Cog = $(bakeLanguage Nothing "cog")

-- | Chonyi-Dzihana-Kauma.
pattern Coh :: Language
pattern Coh = $(bakeLanguage Nothing "coh")

-- | Cochimi.
pattern Coj :: Language
pattern Coj = $(bakeLanguage Nothing "coj")

-- | Santa Teresa Cora.
pattern Cok :: Language
pattern Cok = $(bakeLanguage Nothing "cok")

-- | Columbia-Wenatchi.
pattern Col :: Language
pattern Col = $(bakeLanguage Nothing "col")

-- | Comanche.
pattern Com :: Language
pattern Com = $(bakeLanguage Nothing "com")

-- | Cofán.
pattern Con :: Language
pattern Con = $(bakeLanguage Nothing "con")

-- | Comox.
pattern Coo :: Language
pattern Coo = $(bakeLanguage Nothing "coo")

-- | Coptic.
pattern Cop :: Language
pattern Cop = $(bakeLanguage Nothing "cop")

-- | Coquille.
pattern Coq :: Language
pattern Coq = $(bakeLanguage Nothing "coq")

-- | Caquinte.
pattern Cot :: Language
pattern Cot = $(bakeLanguage Nothing "cot")

-- | Wamey.
pattern Cou :: Language
pattern Cou = $(bakeLanguage Nothing "cou")

-- | Cao Miao.
pattern Cov :: Language
pattern Cov = $(bakeLanguage Nothing "cov")

-- | Cowlitz.
pattern Cow :: Language
pattern Cow = $(bakeLanguage Nothing "cow")

-- | Nanti.
pattern Cox :: Language
pattern Cox = $(bakeLanguage Nothing "cox")

-- | Chochotec.
pattern Coz :: Language
pattern Coz = $(bakeLanguage Nothing "coz")

-- | Palantla Chinantec.
pattern Cpa :: Language
pattern Cpa = $(bakeLanguage Nothing "cpa")

-- | Ucayali-Yurúa Ashéninka.
pattern Cpb :: Language
pattern Cpb = $(bakeLanguage Nothing "cpb")

-- | Ajyíninka Apurucayali.
pattern Cpc :: Language
pattern Cpc = $(bakeLanguage Nothing "cpc")

-- | Cappadocian Greek.
pattern Cpg :: Language
pattern Cpg = $(bakeLanguage Nothing "cpg")

-- | Chinese Pidgin English.
pattern Cpi :: Language
pattern Cpi = $(bakeLanguage Nothing "cpi")

-- | Cherepon.
pattern Cpn :: Language
pattern Cpn = $(bakeLanguage Nothing "cpn")

-- | Kpeego.
pattern Cpo :: Language
pattern Cpo = $(bakeLanguage Nothing "cpo")

-- | Capiznon.
pattern Cps :: Language
pattern Cps = $(bakeLanguage Nothing "cps")

-- | Pichis Ashéninka.
pattern Cpu :: Language
pattern Cpu = $(bakeLanguage Nothing "cpu")

-- | Pu-Xian Chinese.
pattern Cpx :: Language
pattern Cpx = $(bakeLanguage Nothing "cpx")

-- | South Ucayali Ashéninka.
pattern Cpy :: Language
pattern Cpy = $(bakeLanguage Nothing "cpy")

-- | Chuanqiandian Cluster Miao.
pattern Cqd :: Language
pattern Cqd = $(bakeLanguage Nothing "cqd")

-- | Chara.
pattern Cra :: Language
pattern Cra = $(bakeLanguage Nothing "cra")

-- | Island Carib.
pattern Crb :: Language
pattern Crb = $(bakeLanguage Nothing "crb")

-- | Lonwolwol.
pattern Crc :: Language
pattern Crc = $(bakeLanguage Nothing "crc")

-- | Coeur d'Alene.
pattern Crd :: Language
pattern Crd = $(bakeLanguage Nothing "crd")

-- | Caramanta.
pattern Crf :: Language
pattern Crf = $(bakeLanguage Nothing "crf")

-- | Michif.
pattern Crg :: Language
pattern Crg = $(bakeLanguage Nothing "crg")

-- | Crimean Tatar.
pattern Crh :: Language
pattern Crh = $(bakeLanguage Nothing "crh")

-- | Sãotomense.
pattern Cri :: Language
pattern Cri = $(bakeLanguage Nothing "cri")

-- | Southern East Cree.
pattern Crj :: Language
pattern Crj = $(bakeLanguage Nothing "crj")

-- | Plains Cree.
pattern Crk :: Language
pattern Crk = $(bakeLanguage Nothing "crk")

-- | Northern East Cree.
pattern Crl :: Language
pattern Crl = $(bakeLanguage Nothing "crl")

-- | Moose Cree.
pattern Crm :: Language
pattern Crm = $(bakeLanguage Nothing "crm")

-- | El Nayar Cora.
pattern Crn :: Language
pattern Crn = $(bakeLanguage Nothing "crn")

-- | Crow.
pattern Cro :: Language
pattern Cro = $(bakeLanguage Nothing "cro")

-- | Iyo'wujwa Chorote.
pattern Crq :: Language
pattern Crq = $(bakeLanguage Nothing "crq")

-- | Carolina Algonquian.
pattern Crr :: Language
pattern Crr = $(bakeLanguage Nothing "crr")

-- | Seselwa Creole French.
pattern Crs :: Language
pattern Crs = $(bakeLanguage Nothing "crs")

-- | Iyojwa'ja Chorote.
pattern Crt :: Language
pattern Crt = $(bakeLanguage Nothing "crt")

-- | Chaura.
pattern Crv :: Language
pattern Crv = $(bakeLanguage Nothing "crv")

-- | Chrau.
pattern Crw :: Language
pattern Crw = $(bakeLanguage Nothing "crw")

-- | Carrier.
pattern Crx :: Language
pattern Crx = $(bakeLanguage Nothing "crx")

-- | Cori.
pattern Cry :: Language
pattern Cry = $(bakeLanguage Nothing "cry")

-- | Cruzeño.
pattern Crz :: Language
pattern Crz = $(bakeLanguage Nothing "crz")

-- | Chiltepec Chinantec.
pattern Csa :: Language
pattern Csa = $(bakeLanguage Nothing "csa")

-- | Kashubian.
pattern Csb :: Language
pattern Csb = $(bakeLanguage Nothing "csb")

-- | Catalan Sign Language.
pattern Csc :: Language
pattern Csc = $(bakeLanguage Nothing "csc")

-- | Chiangmai Sign Language.
pattern Csd :: Language
pattern Csd = $(bakeLanguage Nothing "csd")

-- | Czech Sign Language.
pattern Cse :: Language
pattern Cse = $(bakeLanguage Nothing "cse")

-- | Cuba Sign Language.
pattern Csf :: Language
pattern Csf = $(bakeLanguage Nothing "csf")

-- | Chilean Sign Language.
pattern Csg :: Language
pattern Csg = $(bakeLanguage Nothing "csg")

-- | Asho Chin.
pattern Csh :: Language
pattern Csh = $(bakeLanguage Nothing "csh")

-- | Coast Miwok.
pattern Csi :: Language
pattern Csi = $(bakeLanguage Nothing "csi")

-- | Songlai Chin.
pattern Csj :: Language
pattern Csj = $(bakeLanguage Nothing "csj")

-- | Jola-Kasa.
pattern Csk :: Language
pattern Csk = $(bakeLanguage Nothing "csk")

-- | Chinese Sign Language.
pattern Csl :: Language
pattern Csl = $(bakeLanguage Nothing "csl")

-- | Central Sierra Miwok.
pattern Csm :: Language
pattern Csm = $(bakeLanguage Nothing "csm")

-- | Colombian Sign Language.
pattern Csn :: Language
pattern Csn = $(bakeLanguage Nothing "csn")

-- | Sochiapam Chinantec.
pattern Cso :: Language
pattern Cso = $(bakeLanguage Nothing "cso")

-- | Southern Ping Chinese.
pattern Csp :: Language
pattern Csp = $(bakeLanguage Nothing "csp")

-- | Croatia Sign Language.
pattern Csq :: Language
pattern Csq = $(bakeLanguage Nothing "csq")

-- | Costa Rican Sign Language.
pattern Csr :: Language
pattern Csr = $(bakeLanguage Nothing "csr")

-- | Southern Ohlone.
pattern Css :: Language
pattern Css = $(bakeLanguage Nothing "css")

-- | Northern Ohlone.
pattern Cst :: Language
pattern Cst = $(bakeLanguage Nothing "cst")

-- | Sumtu Chin.
pattern Csv :: Language
pattern Csv = $(bakeLanguage Nothing "csv")

-- | Swampy Cree.
pattern Csw :: Language
pattern Csw = $(bakeLanguage Nothing "csw")

-- | Cambodian Sign Language.
pattern Csx :: Language
pattern Csx = $(bakeLanguage Nothing "csx")

-- | Siyin Chin.
pattern Csy :: Language
pattern Csy = $(bakeLanguage Nothing "csy")

-- | Coos.
pattern Csz :: Language
pattern Csz = $(bakeLanguage Nothing "csz")

-- | Tataltepec Chatino.
pattern Cta :: Language
pattern Cta = $(bakeLanguage Nothing "cta")

-- | Chetco.
pattern Ctc :: Language
pattern Ctc = $(bakeLanguage Nothing "ctc")

-- | Tedim Chin.
pattern Ctd :: Language
pattern Ctd = $(bakeLanguage Nothing "ctd")

-- | Tepinapa Chinantec.
pattern Cte :: Language
pattern Cte = $(bakeLanguage Nothing "cte")

-- | Chittagonian.
pattern Ctg :: Language
pattern Ctg = $(bakeLanguage Nothing "ctg")

-- | Thaiphum Chin.
pattern Cth :: Language
pattern Cth = $(bakeLanguage Nothing "cth")

-- | Tlacoatzintepec Chinantec.
pattern Ctl :: Language
pattern Ctl = $(bakeLanguage Nothing "ctl")

-- | Chitimacha.
pattern Ctm :: Language
pattern Ctm = $(bakeLanguage Nothing "ctm")

-- | Chhintange.
pattern Ctn :: Language
pattern Ctn = $(bakeLanguage Nothing "ctn")

-- | Emberá-Catío.
pattern Cto :: Language
pattern Cto = $(bakeLanguage Nothing "cto")

-- | Western Highland Chatino.
pattern Ctp :: Language
pattern Ctp = $(bakeLanguage Nothing "ctp")

-- | Northern Catanduanes Bikol.
pattern Cts :: Language
pattern Cts = $(bakeLanguage Nothing "cts")

-- | Wayanad Chetti.
pattern Ctt :: Language
pattern Ctt = $(bakeLanguage Nothing "ctt")

-- | Chol.
pattern Ctu :: Language
pattern Ctu = $(bakeLanguage Nothing "ctu")

-- | Moundadan Chetty.
pattern Cty :: Language
pattern Cty = $(bakeLanguage Nothing "cty")

-- | Zacatepec Chatino.
pattern Ctz :: Language
pattern Ctz = $(bakeLanguage Nothing "ctz")

-- | Cua.
pattern Cua :: Language
pattern Cua = $(bakeLanguage Nothing "cua")

-- | Cubeo.
pattern Cub :: Language
pattern Cub = $(bakeLanguage Nothing "cub")

-- | Usila Chinantec.
pattern Cuc :: Language
pattern Cuc = $(bakeLanguage Nothing "cuc")

-- | Chuka.
pattern Cuh :: Language
pattern Cuh = $(bakeLanguage Nothing "cuh")

-- | Cuiba.
pattern Cui :: Language
pattern Cui = $(bakeLanguage Nothing "cui")

-- | Mashco Piro.
pattern Cuj :: Language
pattern Cuj = $(bakeLanguage Nothing "cuj")

-- | San Blas Kuna.
pattern Cuk :: Language
pattern Cuk = $(bakeLanguage Nothing "cuk")

-- | Culina.
pattern Cul :: Language
pattern Cul = $(bakeLanguage Nothing "cul")

-- | Cumanagoto.
pattern Cuo :: Language
pattern Cuo = $(bakeLanguage Nothing "cuo")

-- | Cupeño.
pattern Cup :: Language
pattern Cup = $(bakeLanguage Nothing "cup")

-- | Cun.
pattern Cuq :: Language
pattern Cuq = $(bakeLanguage Nothing "cuq")

-- | Chhulung.
pattern Cur :: Language
pattern Cur = $(bakeLanguage Nothing "cur")

-- | Teutila Cuicatec.
pattern Cut :: Language
pattern Cut = $(bakeLanguage Nothing "cut")

-- | Tai Ya.
pattern Cuu :: Language
pattern Cuu = $(bakeLanguage Nothing "cuu")

-- | Cuvok.
pattern Cuv :: Language
pattern Cuv = $(bakeLanguage Nothing "cuv")

-- | Chukwa.
pattern Cuw :: Language
pattern Cuw = $(bakeLanguage Nothing "cuw")

-- | Tepeuxila Cuicatec.
pattern Cux :: Language
pattern Cux = $(bakeLanguage Nothing "cux")

-- | Cuitlatec.
pattern Cuy :: Language
pattern Cuy = $(bakeLanguage Nothing "cuy")

-- | Chug.
pattern Cvg :: Language
pattern Cvg = $(bakeLanguage Nothing "cvg")

-- | Valle Nacional Chinantec.
pattern Cvn :: Language
pattern Cvn = $(bakeLanguage Nothing "cvn")

-- | Kabwa.
pattern Cwa :: Language
pattern Cwa = $(bakeLanguage Nothing "cwa")

-- | Maindo.
pattern Cwb :: Language
pattern Cwb = $(bakeLanguage Nothing "cwb")

-- | Woods Cree.
pattern Cwd :: Language
pattern Cwd = $(bakeLanguage Nothing "cwd")

-- | Kwere.
pattern Cwe :: Language
pattern Cwe = $(bakeLanguage Nothing "cwe")

-- | Chewong.
pattern Cwg :: Language
pattern Cwg = $(bakeLanguage Nothing "cwg")

-- | Kuwaataay.
pattern Cwt :: Language
pattern Cwt = $(bakeLanguage Nothing "cwt")

-- | Cha'ari.
pattern Cxh :: Language
pattern Cxh = $(bakeLanguage Nothing "cxh")

-- | Nopala Chatino.
pattern Cya :: Language
pattern Cya = $(bakeLanguage Nothing "cya")

-- | Cayubaba.
pattern Cyb :: Language
pattern Cyb = $(bakeLanguage Nothing "cyb")

-- | Cuyonon.
pattern Cyo :: Language
pattern Cyo = $(bakeLanguage Nothing "cyo")

-- | Huizhou Chinese.
pattern Czh :: Language
pattern Czh = $(bakeLanguage Nothing "czh")

-- | Knaanic.
pattern Czk :: Language
pattern Czk = $(bakeLanguage Nothing "czk")

-- | Zenzontepec Chatino.
pattern Czn :: Language
pattern Czn = $(bakeLanguage Nothing "czn")

-- | Min Zhong Chinese.
pattern Czo :: Language
pattern Czo = $(bakeLanguage Nothing "czo")

-- | Zotung Chin.
pattern Czt :: Language
pattern Czt = $(bakeLanguage Nothing "czt")

-- | Dangaléat.
pattern Daa :: Language
pattern Daa = $(bakeLanguage Nothing "daa")

-- | Dambi.
pattern Dac :: Language
pattern Dac = $(bakeLanguage Nothing "dac")

-- | Marik.
pattern Dad :: Language
pattern Dad = $(bakeLanguage Nothing "dad")

-- | Duupa.
pattern Dae :: Language
pattern Dae = $(bakeLanguage Nothing "dae")

-- | Dagbani.
pattern Dag :: Language
pattern Dag = $(bakeLanguage Nothing "dag")

-- | Gwahatike.
pattern Dah :: Language
pattern Dah = $(bakeLanguage Nothing "dah")

-- | Day.
pattern Dai :: Language
pattern Dai = $(bakeLanguage Nothing "dai")

-- | Dar Fur Daju.
pattern Daj :: Language
pattern Daj = $(bakeLanguage Nothing "daj")

-- | Dakota.
pattern Dak :: Language
pattern Dak = $(bakeLanguage Nothing "dak")

-- | Dahalo.
pattern Dal :: Language
pattern Dal = $(bakeLanguage Nothing "dal")

-- | Damakawa.
pattern Dam :: Language
pattern Dam = $(bakeLanguage Nothing "dam")

-- | Daai Chin.
pattern Dao :: Language
pattern Dao = $(bakeLanguage Nothing "dao")

-- | Dandami Maria.
pattern Daq :: Language
pattern Daq = $(bakeLanguage Nothing "daq")

-- | Dargwa.
pattern Dar :: Language
pattern Dar = $(bakeLanguage Nothing "dar")

-- | Daho-Doo.
pattern Das :: Language
pattern Das = $(bakeLanguage Nothing "das")

-- | Dar Sila Daju.
pattern Dau :: Language
pattern Dau = $(bakeLanguage Nothing "dau")

-- | Taita.
pattern Dav :: Language
pattern Dav = $(bakeLanguage Nothing "dav")

-- | Davawenyo.
pattern Daw :: Language
pattern Daw = $(bakeLanguage Nothing "daw")

-- | Dayi.
pattern Dax :: Language
pattern Dax = $(bakeLanguage Nothing "dax")

-- | Moi-Wadea.
pattern Daz :: Language
pattern Daz = $(bakeLanguage Nothing "daz")

-- | Bangime.
pattern Dba :: Language
pattern Dba = $(bakeLanguage Nothing "dba")

-- | Deno.
pattern Dbb :: Language
pattern Dbb = $(bakeLanguage Nothing "dbb")

-- | Dadiya.
pattern Dbd :: Language
pattern Dbd = $(bakeLanguage Nothing "dbd")

-- | Dabe.
pattern Dbe :: Language
pattern Dbe = $(bakeLanguage Nothing "dbe")

-- | Edopi.
pattern Dbf :: Language
pattern Dbf = $(bakeLanguage Nothing "dbf")

-- | Dogul Dom Dogon.
pattern Dbg :: Language
pattern Dbg = $(bakeLanguage Nothing "dbg")

-- | Doka.
pattern Dbi :: Language
pattern Dbi = $(bakeLanguage Nothing "dbi")

-- | Ida'an.
pattern Dbj :: Language
pattern Dbj = $(bakeLanguage Nothing "dbj")

-- | Dyirbal.
pattern Dbl :: Language
pattern Dbl = $(bakeLanguage Nothing "dbl")

-- | Duguri.
pattern Dbm :: Language
pattern Dbm = $(bakeLanguage Nothing "dbm")

-- | Duriankere.
pattern Dbn :: Language
pattern Dbn = $(bakeLanguage Nothing "dbn")

-- | Dulbu.
pattern Dbo :: Language
pattern Dbo = $(bakeLanguage Nothing "dbo")

-- | Duwai.
pattern Dbp :: Language
pattern Dbp = $(bakeLanguage Nothing "dbp")

-- | Daba.
pattern Dbq :: Language
pattern Dbq = $(bakeLanguage Nothing "dbq")

-- | Dabarre.
pattern Dbr :: Language
pattern Dbr = $(bakeLanguage Nothing "dbr")

-- | Ben Tey Dogon.
pattern Dbt :: Language
pattern Dbt = $(bakeLanguage Nothing "dbt")

-- | Bondum Dom Dogon.
pattern Dbu :: Language
pattern Dbu = $(bakeLanguage Nothing "dbu")

-- | Dungu.
pattern Dbv :: Language
pattern Dbv = $(bakeLanguage Nothing "dbv")

-- | Bankan Tey Dogon.
pattern Dbw :: Language
pattern Dbw = $(bakeLanguage Nothing "dbw")

-- | Dibiyaso.
pattern Dby :: Language
pattern Dby = $(bakeLanguage Nothing "dby")

-- | Deccan.
pattern Dcc :: Language
pattern Dcc = $(bakeLanguage Nothing "dcc")

-- | Negerhollands.
pattern Dcr :: Language
pattern Dcr = $(bakeLanguage Nothing "dcr")

-- | Dadi Dadi.
pattern Dda :: Language
pattern Dda = $(bakeLanguage Nothing "dda")

-- | Dongotono.
pattern Ddd :: Language
pattern Ddd = $(bakeLanguage Nothing "ddd")

-- | Doondo.
pattern Dde :: Language
pattern Dde = $(bakeLanguage Nothing "dde")

-- | Fataluku.
pattern Ddg :: Language
pattern Ddg = $(bakeLanguage Nothing "ddg")

-- | West Goodenough.
pattern Ddi :: Language
pattern Ddi = $(bakeLanguage Nothing "ddi")

-- | Jaru.
pattern Ddj :: Language
pattern Ddj = $(bakeLanguage Nothing "ddj")

-- | Dendi (Benin).
pattern Ddn :: Language
pattern Ddn = $(bakeLanguage Nothing "ddn")

-- | Dido.
pattern Ddo :: Language
pattern Ddo = $(bakeLanguage Nothing "ddo")

-- | Dhudhuroa.
pattern Ddr :: Language
pattern Ddr = $(bakeLanguage Nothing "ddr")

-- | Donno So Dogon.
pattern Dds :: Language
pattern Dds = $(bakeLanguage Nothing "dds")

-- | Dawera-Daweloor.
pattern Ddw :: Language
pattern Ddw = $(bakeLanguage Nothing "ddw")

-- | Dagik.
pattern Dec :: Language
pattern Dec = $(bakeLanguage Nothing "dec")

-- | Dedua.
pattern Ded :: Language
pattern Ded = $(bakeLanguage Nothing "ded")

-- | Dewoin.
pattern Dee :: Language
pattern Dee = $(bakeLanguage Nothing "dee")

-- | Dezfuli.
pattern Def :: Language
pattern Def = $(bakeLanguage Nothing "def")

-- | Degema.
pattern Deg :: Language
pattern Deg = $(bakeLanguage Nothing "deg")

-- | Dehwari.
pattern Deh :: Language
pattern Deh = $(bakeLanguage Nothing "deh")

-- | Demisa.
pattern Dei :: Language
pattern Dei = $(bakeLanguage Nothing "dei")

-- | Delaware.
pattern Del :: Language
pattern Del = $(bakeLanguage Nothing "del")

-- | Dem.
pattern Dem :: Language
pattern Dem = $(bakeLanguage Nothing "dem")

-- | Slavey.
pattern Den :: Language
pattern Den = $(bakeLanguage Nothing "den")

-- | Pidgin Delaware.
pattern Dep :: Language
pattern Dep = $(bakeLanguage Nothing "dep")

-- | Dendi (Central African Republic).
pattern Deq :: Language
pattern Deq = $(bakeLanguage Nothing "deq")

-- | Deori.
pattern Der :: Language
pattern Der = $(bakeLanguage Nothing "der")

-- | Desano.
pattern Des :: Language
pattern Des = $(bakeLanguage Nothing "des")

-- | Domung.
pattern Dev :: Language
pattern Dev = $(bakeLanguage Nothing "dev")

-- | Dengese.
pattern Dez :: Language
pattern Dez = $(bakeLanguage Nothing "dez")

-- | Southern Dagaare.
pattern Dga :: Language
pattern Dga = $(bakeLanguage Nothing "dga")

-- | Bunoge Dogon.
pattern Dgb :: Language
pattern Dgb = $(bakeLanguage Nothing "dgb")

-- | Casiguran Dumagat Agta.
pattern Dgc :: Language
pattern Dgc = $(bakeLanguage Nothing "dgc")

-- | Dagaari Dioula.
pattern Dgd :: Language
pattern Dgd = $(bakeLanguage Nothing "dgd")

-- | Degenan.
pattern Dge :: Language
pattern Dge = $(bakeLanguage Nothing "dge")

-- | Doga.
pattern Dgg :: Language
pattern Dgg = $(bakeLanguage Nothing "dgg")

-- | Dghwede.
pattern Dgh :: Language
pattern Dgh = $(bakeLanguage Nothing "dgh")

-- | Northern Dagara.
pattern Dgi :: Language
pattern Dgi = $(bakeLanguage Nothing "dgi")

-- | Dagba.
pattern Dgk :: Language
pattern Dgk = $(bakeLanguage Nothing "dgk")

-- | Andaandi.
pattern Dgl :: Language
pattern Dgl = $(bakeLanguage Nothing "dgl")

-- | Dagoman.
pattern Dgn :: Language
pattern Dgn = $(bakeLanguage Nothing "dgn")

-- | Dogri (individual language).
pattern Dgo :: Language
pattern Dgo = $(bakeLanguage Nothing "dgo")

-- | Tlicho.
pattern Dgr :: Language
pattern Dgr = $(bakeLanguage Nothing "dgr")

-- | Dogoso.
pattern Dgs :: Language
pattern Dgs = $(bakeLanguage Nothing "dgs")

-- | Ndra'ngith.
pattern Dgt :: Language
pattern Dgt = $(bakeLanguage Nothing "dgt")

-- | Daungwurrung.
pattern Dgw :: Language
pattern Dgw = $(bakeLanguage Nothing "dgw")

-- | Doghoro.
pattern Dgx :: Language
pattern Dgx = $(bakeLanguage Nothing "dgx")

-- | Daga.
pattern Dgz :: Language
pattern Dgz = $(bakeLanguage Nothing "dgz")

-- | Dhundari.
pattern Dhd :: Language
pattern Dhd = $(bakeLanguage Nothing "dhd")

-- | Dhangu-Djangu.
pattern Dhg :: Language
pattern Dhg = $(bakeLanguage Nothing "dhg")

-- | Dhimal.
pattern Dhi :: Language
pattern Dhi = $(bakeLanguage Nothing "dhi")

-- | Dhalandji.
pattern Dhl :: Language
pattern Dhl = $(bakeLanguage Nothing "dhl")

-- | Zemba.
pattern Dhm :: Language
pattern Dhm = $(bakeLanguage Nothing "dhm")

-- | Dhanki.
pattern Dhn :: Language
pattern Dhn = $(bakeLanguage Nothing "dhn")

-- | Dhodia.
pattern Dho :: Language
pattern Dho = $(bakeLanguage Nothing "dho")

-- | Dhargari.
pattern Dhr :: Language
pattern Dhr = $(bakeLanguage Nothing "dhr")

-- | Dhaiso.
pattern Dhs :: Language
pattern Dhs = $(bakeLanguage Nothing "dhs")

-- | Dhurga.
pattern Dhu :: Language
pattern Dhu = $(bakeLanguage Nothing "dhu")

-- | Dehu.
pattern Dhv :: Language
pattern Dhv = $(bakeLanguage Nothing "dhv")

-- | Dhanwar (Nepal).
pattern Dhw :: Language
pattern Dhw = $(bakeLanguage Nothing "dhw")

-- | Dhungaloo.
pattern Dhx :: Language
pattern Dhx = $(bakeLanguage Nothing "dhx")

-- | Dia.
pattern Dia :: Language
pattern Dia = $(bakeLanguage Nothing "dia")

-- | South Central Dinka.
pattern Dib :: Language
pattern Dib = $(bakeLanguage Nothing "dib")

-- | Lakota Dida.
pattern Dic :: Language
pattern Dic = $(bakeLanguage Nothing "dic")

-- | Didinga.
pattern Did :: Language
pattern Did = $(bakeLanguage Nothing "did")

-- | Dieri.
pattern Dif :: Language
pattern Dif = $(bakeLanguage Nothing "dif")

-- | Digo.
pattern Dig :: Language
pattern Dig = $(bakeLanguage Nothing "dig")

-- | Kumiai.
pattern Dih :: Language
pattern Dih = $(bakeLanguage Nothing "dih")

-- | Dimbong.
pattern Dii :: Language
pattern Dii = $(bakeLanguage Nothing "dii")

-- | Dai.
pattern Dij :: Language
pattern Dij = $(bakeLanguage Nothing "dij")

-- | Southwestern Dinka.
pattern Dik :: Language
pattern Dik = $(bakeLanguage Nothing "dik")

-- | Dilling.
pattern Dil :: Language
pattern Dil = $(bakeLanguage Nothing "dil")

-- | Dime.
pattern Dim :: Language
pattern Dim = $(bakeLanguage Nothing "dim")

-- | Dinka.
pattern Din :: Language
pattern Din = $(bakeLanguage Nothing "din")

-- | Dibo.
pattern Dio :: Language
pattern Dio = $(bakeLanguage Nothing "dio")

-- | Northeastern Dinka.
pattern Dip :: Language
pattern Dip = $(bakeLanguage Nothing "dip")

-- | Dimli (individual language).
pattern Diq :: Language
pattern Diq = $(bakeLanguage Nothing "diq")

-- | Dirim.
pattern Dir :: Language
pattern Dir = $(bakeLanguage Nothing "dir")

-- | Dimasa.
pattern Dis :: Language
pattern Dis = $(bakeLanguage Nothing "dis")

-- | Diriku.
pattern Diu :: Language
pattern Diu = $(bakeLanguage Nothing "diu")

-- | Northwestern Dinka.
pattern Diw :: Language
pattern Diw = $(bakeLanguage Nothing "diw")

-- | Dixon Reef.
pattern Dix :: Language
pattern Dix = $(bakeLanguage Nothing "dix")

-- | Diuwe.
pattern Diy :: Language
pattern Diy = $(bakeLanguage Nothing "diy")

-- | Ding.
pattern Diz :: Language
pattern Diz = $(bakeLanguage Nothing "diz")

-- | Djadjawurrung.
pattern Dja :: Language
pattern Dja = $(bakeLanguage Nothing "dja")

-- | Djinba.
pattern Djb :: Language
pattern Djb = $(bakeLanguage Nothing "djb")

-- | Dar Daju Daju.
pattern Djc :: Language
pattern Djc = $(bakeLanguage Nothing "djc")

-- | Djamindjung.
pattern Djd :: Language
pattern Djd = $(bakeLanguage Nothing "djd")

-- | Zarma.
pattern Dje :: Language
pattern Dje = $(bakeLanguage Nothing "dje")

-- | Djangun.
pattern Djf :: Language
pattern Djf = $(bakeLanguage Nothing "djf")

-- | Djinang.
pattern Dji :: Language
pattern Dji = $(bakeLanguage Nothing "dji")

-- | Djeebbana.
pattern Djj :: Language
pattern Djj = $(bakeLanguage Nothing "djj")

-- | Eastern Maroon Creole.
pattern Djk :: Language
pattern Djk = $(bakeLanguage Nothing "djk")

-- | Jamsay Dogon.
pattern Djm :: Language
pattern Djm = $(bakeLanguage Nothing "djm")

-- | Jawoyn.
pattern Djn :: Language
pattern Djn = $(bakeLanguage Nothing "djn")

-- | Jangkang.
pattern Djo :: Language
pattern Djo = $(bakeLanguage Nothing "djo")

-- | Djambarrpuyngu.
pattern Djr :: Language
pattern Djr = $(bakeLanguage Nothing "djr")

-- | Kapriman.
pattern Dju :: Language
pattern Dju = $(bakeLanguage Nothing "dju")

-- | Djawi.
pattern Djw :: Language
pattern Djw = $(bakeLanguage Nothing "djw")

-- | Dakpakha.
pattern Dka :: Language
pattern Dka = $(bakeLanguage Nothing "dka")

-- | Kadung.
pattern Dkg :: Language
pattern Dkg = $(bakeLanguage Nothing "dkg")

-- | Dakka.
pattern Dkk :: Language
pattern Dkk = $(bakeLanguage Nothing "dkk")

-- | Kuijau.
pattern Dkr :: Language
pattern Dkr = $(bakeLanguage Nothing "dkr")

-- | Southeastern Dinka.
pattern Dks :: Language
pattern Dks = $(bakeLanguage Nothing "dks")

-- | Mazagway.
pattern Dkx :: Language
pattern Dkx = $(bakeLanguage Nothing "dkx")

-- | Dolgan.
pattern Dlg :: Language
pattern Dlg = $(bakeLanguage Nothing "dlg")

-- | Dahalik.
pattern Dlk :: Language
pattern Dlk = $(bakeLanguage Nothing "dlk")

-- | Dalmatian.
pattern Dlm :: Language
pattern Dlm = $(bakeLanguage Nothing "dlm")

-- | Darlong.
pattern Dln :: Language
pattern Dln = $(bakeLanguage Nothing "dln")

-- | Duma.
pattern Dma :: Language
pattern Dma = $(bakeLanguage Nothing "dma")

-- | Mombo Dogon.
pattern Dmb :: Language
pattern Dmb = $(bakeLanguage Nothing "dmb")

-- | Gavak.
pattern Dmc :: Language
pattern Dmc = $(bakeLanguage Nothing "dmc")

-- | Madhi Madhi.
pattern Dmd :: Language
pattern Dmd = $(bakeLanguage Nothing "dmd")

-- | Dugwor.
pattern Dme :: Language
pattern Dme = $(bakeLanguage Nothing "dme")

-- | Medefaidrin.
pattern Dmf :: Language
pattern Dmf = $(bakeLanguage Nothing "dmf")

-- | Upper Kinabatangan.
pattern Dmg :: Language
pattern Dmg = $(bakeLanguage Nothing "dmg")

-- | Domaaki.
pattern Dmk :: Language
pattern Dmk = $(bakeLanguage Nothing "dmk")

-- | Dameli.
pattern Dml :: Language
pattern Dml = $(bakeLanguage Nothing "dml")

-- | Dama.
pattern Dmm :: Language
pattern Dmm = $(bakeLanguage Nothing "dmm")

-- | Kemedzung.
pattern Dmo :: Language
pattern Dmo = $(bakeLanguage Nothing "dmo")

-- | East Damar.
pattern Dmr :: Language
pattern Dmr = $(bakeLanguage Nothing "dmr")

-- | Dampelas.
pattern Dms :: Language
pattern Dms = $(bakeLanguage Nothing "dms")

-- | Dubu.
pattern Dmu :: Language
pattern Dmu = $(bakeLanguage Nothing "dmu")

-- | Dumpas.
pattern Dmv :: Language
pattern Dmv = $(bakeLanguage Nothing "dmv")

-- | Mudburra.
pattern Dmw :: Language
pattern Dmw = $(bakeLanguage Nothing "dmw")

-- | Dema.
pattern Dmx :: Language
pattern Dmx = $(bakeLanguage Nothing "dmx")

-- | Demta.
pattern Dmy :: Language
pattern Dmy = $(bakeLanguage Nothing "dmy")

-- | Upper Grand Valley Dani.
pattern Dna :: Language
pattern Dna = $(bakeLanguage Nothing "dna")

-- | Daonda.
pattern Dnd :: Language
pattern Dnd = $(bakeLanguage Nothing "dnd")

-- | Ndendeule.
pattern Dne :: Language
pattern Dne = $(bakeLanguage Nothing "dne")

-- | Dungan.
pattern Dng :: Language
pattern Dng = $(bakeLanguage Nothing "dng")

-- | Lower Grand Valley Dani.
pattern Dni :: Language
pattern Dni = $(bakeLanguage Nothing "dni")

-- | Dan.
pattern Dnj :: Language
pattern Dnj = $(bakeLanguage Nothing "dnj")

-- | Dengka.
pattern Dnk :: Language
pattern Dnk = $(bakeLanguage Nothing "dnk")

-- | Dzùùngoo.
pattern Dnn :: Language
pattern Dnn = $(bakeLanguage Nothing "dnn")

-- | Ndrulo.
pattern Dno :: Language
pattern Dno = $(bakeLanguage Nothing "dno")

-- | Danaru.
pattern Dnr :: Language
pattern Dnr = $(bakeLanguage Nothing "dnr")

-- | Mid Grand Valley Dani.
pattern Dnt :: Language
pattern Dnt = $(bakeLanguage Nothing "dnt")

-- | Danau.
pattern Dnu :: Language
pattern Dnu = $(bakeLanguage Nothing "dnu")

-- | Danu.
pattern Dnv :: Language
pattern Dnv = $(bakeLanguage Nothing "dnv")

-- | Western Dani.
pattern Dnw :: Language
pattern Dnw = $(bakeLanguage Nothing "dnw")

-- | Dení.
pattern Dny :: Language
pattern Dny = $(bakeLanguage Nothing "dny")

-- | Dom.
pattern Doa :: Language
pattern Doa = $(bakeLanguage Nothing "doa")

-- | Dobu.
pattern Dob :: Language
pattern Dob = $(bakeLanguage Nothing "dob")

-- | Northern Dong.
pattern Doc :: Language
pattern Doc = $(bakeLanguage Nothing "doc")

-- | Doe.
pattern Doe :: Language
pattern Doe = $(bakeLanguage Nothing "doe")

-- | Domu.
pattern Dof :: Language
pattern Dof = $(bakeLanguage Nothing "dof")

-- | Dong.
pattern Doh :: Language
pattern Doh = $(bakeLanguage Nothing "doh")

-- | Dogri (macrolanguage).
pattern Doi :: Language
pattern Doi = $(bakeLanguage Nothing "doi")

-- | Dondo.
pattern Dok :: Language
pattern Dok = $(bakeLanguage Nothing "dok")

-- | Doso.
pattern Dol :: Language
pattern Dol = $(bakeLanguage Nothing "dol")

-- | Toura (Papua New Guinea).
pattern Don :: Language
pattern Don = $(bakeLanguage Nothing "don")

-- | Dongo.
pattern Doo :: Language
pattern Doo = $(bakeLanguage Nothing "doo")

-- | Lukpa.
pattern Dop :: Language
pattern Dop = $(bakeLanguage Nothing "dop")

-- | Dominican Sign Language.
pattern Doq :: Language
pattern Doq = $(bakeLanguage Nothing "doq")

-- | Dori'o.
pattern Dor :: Language
pattern Dor = $(bakeLanguage Nothing "dor")

-- | Dogosé.
pattern Dos :: Language
pattern Dos = $(bakeLanguage Nothing "dos")

-- | Dass.
pattern Dot :: Language
pattern Dot = $(bakeLanguage Nothing "dot")

-- | Dombe.
pattern Dov :: Language
pattern Dov = $(bakeLanguage Nothing "dov")

-- | Doyayo.
pattern Dow :: Language
pattern Dow = $(bakeLanguage Nothing "dow")

-- | Bussa.
pattern Dox :: Language
pattern Dox = $(bakeLanguage Nothing "dox")

-- | Dompo.
pattern Doy :: Language
pattern Doy = $(bakeLanguage Nothing "doy")

-- | Dorze.
pattern Doz :: Language
pattern Doz = $(bakeLanguage Nothing "doz")

-- | Papar.
pattern Dpp :: Language
pattern Dpp = $(bakeLanguage Nothing "dpp")

-- | Dair.
pattern Drb :: Language
pattern Drb = $(bakeLanguage Nothing "drb")

-- | Minderico.
pattern Drc :: Language
pattern Drc = $(bakeLanguage Nothing "drc")

-- | Darmiya.
pattern Drd :: Language
pattern Drd = $(bakeLanguage Nothing "drd")

-- | Dolpo.
pattern Dre :: Language
pattern Dre = $(bakeLanguage Nothing "dre")

-- | Rungus.
pattern Drg :: Language
pattern Drg = $(bakeLanguage Nothing "drg")

-- | C'Lela.
pattern Dri :: Language
pattern Dri = $(bakeLanguage Nothing "dri")

-- | Paakantyi.
pattern Drl :: Language
pattern Drl = $(bakeLanguage Nothing "drl")

-- | West Damar.
pattern Drn :: Language
pattern Drn = $(bakeLanguage Nothing "drn")

-- | Daro-Matu Melanau.
pattern Dro :: Language
pattern Dro = $(bakeLanguage Nothing "dro")

-- | Dura.
pattern Drq :: Language
pattern Drq = $(bakeLanguage Nothing "drq")

-- | Gedeo.
pattern Drs :: Language
pattern Drs = $(bakeLanguage Nothing "drs")

-- | Drents.
pattern Drt :: Language
pattern Drt = $(bakeLanguage Nothing "drt")

-- | Rukai.
pattern Dru :: Language
pattern Dru = $(bakeLanguage Nothing "dru")

-- | Darai.
pattern Dry :: Language
pattern Dry = $(bakeLanguage Nothing "dry")

-- | Lower Sorbian.
pattern Dsb :: Language
pattern Dsb = $(bakeLanguage Nothing "dsb")

-- | Dutch Sign Language.
pattern Dse :: Language
pattern Dse = $(bakeLanguage Nothing "dse")

-- | Daasanach.
pattern Dsh :: Language
pattern Dsh = $(bakeLanguage Nothing "dsh")

-- | Disa.
pattern Dsi :: Language
pattern Dsi = $(bakeLanguage Nothing "dsi")

-- | Dokshi.
pattern Dsk :: Language
pattern Dsk = $(bakeLanguage Nothing "dsk")

-- | Danish Sign Language.
pattern Dsl :: Language
pattern Dsl = $(bakeLanguage Nothing "dsl")

-- | Dusner.
pattern Dsn :: Language
pattern Dsn = $(bakeLanguage Nothing "dsn")

-- | Desiya.
pattern Dso :: Language
pattern Dso = $(bakeLanguage Nothing "dso")

-- | Tadaksahak.
pattern Dsq :: Language
pattern Dsq = $(bakeLanguage Nothing "dsq")

-- | Mardin Sign Language.
pattern Dsz :: Language
pattern Dsz = $(bakeLanguage Nothing "dsz")

-- | Daur.
pattern Dta :: Language
pattern Dta = $(bakeLanguage Nothing "dta")

-- | Labuk-Kinabatangan Kadazan.
pattern Dtb :: Language
pattern Dtb = $(bakeLanguage Nothing "dtb")

-- | Ditidaht.
pattern Dtd :: Language
pattern Dtd = $(bakeLanguage Nothing "dtd")

-- | Adithinngithigh.
pattern Dth :: Language
pattern Dth = $(bakeLanguage Nothing "dth")

-- | Ana Tinga Dogon.
pattern Dti :: Language
pattern Dti = $(bakeLanguage Nothing "dti")

-- | Tene Kan Dogon.
pattern Dtk :: Language
pattern Dtk = $(bakeLanguage Nothing "dtk")

-- | Tomo Kan Dogon.
pattern Dtm :: Language
pattern Dtm = $(bakeLanguage Nothing "dtm")

-- | Daatsʼíin.
pattern Dtn :: Language
pattern Dtn = $(bakeLanguage Nothing "dtn")

-- | Tommo So Dogon.
pattern Dto :: Language
pattern Dto = $(bakeLanguage Nothing "dto")

-- | Kadazan Dusun.
pattern Dtp :: Language
pattern Dtp = $(bakeLanguage Nothing "dtp")

-- | Lotud.
pattern Dtr :: Language
pattern Dtr = $(bakeLanguage Nothing "dtr")

-- | Toro So Dogon.
pattern Dts :: Language
pattern Dts = $(bakeLanguage Nothing "dts")

-- | Toro Tegu Dogon.
pattern Dtt :: Language
pattern Dtt = $(bakeLanguage Nothing "dtt")

-- | Tebul Ure Dogon.
pattern Dtu :: Language
pattern Dtu = $(bakeLanguage Nothing "dtu")

-- | Dotyali.
pattern Dty :: Language
pattern Dty = $(bakeLanguage Nothing "dty")

-- | Duala.
pattern Dua :: Language
pattern Dua = $(bakeLanguage Nothing "dua")

-- | Dubli.
pattern Dub :: Language
pattern Dub = $(bakeLanguage Nothing "dub")

-- | Duna.
pattern Duc :: Language
pattern Duc = $(bakeLanguage Nothing "duc")

-- | Umiray Dumaget Agta.
pattern Due :: Language
pattern Due = $(bakeLanguage Nothing "due")

-- | Dumbea.
pattern Duf :: Language
pattern Duf = $(bakeLanguage Nothing "duf")

-- | Duruma.
pattern Dug :: Language
pattern Dug = $(bakeLanguage Nothing "dug")

-- | Dungra Bhil.
pattern Duh :: Language
pattern Duh = $(bakeLanguage Nothing "duh")

-- | Dumun.
pattern Dui :: Language
pattern Dui = $(bakeLanguage Nothing "dui")

-- | Uyajitaya.
pattern Duk :: Language
pattern Duk = $(bakeLanguage Nothing "duk")

-- | Alabat Island Agta.
pattern Dul :: Language
pattern Dul = $(bakeLanguage Nothing "dul")

-- | Middle Dutch (ca. 1050-1350).
pattern Dum :: Language
pattern Dum = $(bakeLanguage Nothing "dum")

-- | Dusun Deyah.
pattern Dun :: Language
pattern Dun = $(bakeLanguage Nothing "dun")

-- | Dupaninan Agta.
pattern Duo :: Language
pattern Duo = $(bakeLanguage Nothing "duo")

-- | Duano.
pattern Dup :: Language
pattern Dup = $(bakeLanguage Nothing "dup")

-- | Dusun Malang.
pattern Duq :: Language
pattern Duq = $(bakeLanguage Nothing "duq")

-- | Dii.
pattern Dur :: Language
pattern Dur = $(bakeLanguage Nothing "dur")

-- | Dumi.
pattern Dus :: Language
pattern Dus = $(bakeLanguage Nothing "dus")

-- | Drung.
pattern Duu :: Language
pattern Duu = $(bakeLanguage Nothing "duu")

-- | Duvle.
pattern Duv :: Language
pattern Duv = $(bakeLanguage Nothing "duv")

-- | Dusun Witu.
pattern Duw :: Language
pattern Duw = $(bakeLanguage Nothing "duw")

-- | Duungooma.
pattern Dux :: Language
pattern Dux = $(bakeLanguage Nothing "dux")

-- | Dicamay Agta.
pattern Duy :: Language
pattern Duy = $(bakeLanguage Nothing "duy")

-- | Duli-Gey.
pattern Duz :: Language
pattern Duz = $(bakeLanguage Nothing "duz")

-- | Duau.
pattern Dva :: Language
pattern Dva = $(bakeLanguage Nothing "dva")

-- | Diri.
pattern Dwa :: Language
pattern Dwa = $(bakeLanguage Nothing "dwa")

-- | Dawik Kui.
pattern Dwk :: Language
pattern Dwk = $(bakeLanguage Nothing "dwk")

-- | Dawro.
pattern Dwr :: Language
pattern Dwr = $(bakeLanguage Nothing "dwr")

-- | Dutton World Speedwords.
pattern Dws :: Language
pattern Dws = $(bakeLanguage Nothing "dws")

-- | Dhuwal.
pattern Dwu :: Language
pattern Dwu = $(bakeLanguage Nothing "dwu")

-- | Dawawa.
pattern Dww :: Language
pattern Dww = $(bakeLanguage Nothing "dww")

-- | Dhuwaya.
pattern Dwy :: Language
pattern Dwy = $(bakeLanguage Nothing "dwy")

-- | Dewas Rai.
pattern Dwz :: Language
pattern Dwz = $(bakeLanguage Nothing "dwz")

-- | Dyan.
pattern Dya :: Language
pattern Dya = $(bakeLanguage Nothing "dya")

-- | Dyaberdyaber.
pattern Dyb :: Language
pattern Dyb = $(bakeLanguage Nothing "dyb")

-- | Dyugun.
pattern Dyd :: Language
pattern Dyd = $(bakeLanguage Nothing "dyd")

-- | Villa Viciosa Agta.
pattern Dyg :: Language
pattern Dyg = $(bakeLanguage Nothing "dyg")

-- | Djimini Senoufo.
pattern Dyi :: Language
pattern Dyi = $(bakeLanguage Nothing "dyi")

-- | Bhutanese Sign Language.
pattern Dyl :: Language
pattern Dyl = $(bakeLanguage Nothing "dyl")

-- | Yanda Dom Dogon.
pattern Dym :: Language
pattern Dym = $(bakeLanguage Nothing "dym")

-- | Dyangadi.
pattern Dyn :: Language
pattern Dyn = $(bakeLanguage Nothing "dyn")

-- | Jola-Fonyi.
pattern Dyo :: Language
pattern Dyo = $(bakeLanguage Nothing "dyo")

-- | Dyarim.
pattern Dyr :: Language
pattern Dyr = $(bakeLanguage Nothing "dyr")

-- | Dyula.
pattern Dyu :: Language
pattern Dyu = $(bakeLanguage Nothing "dyu")

-- | Djabugay.
pattern Dyy :: Language
pattern Dyy = $(bakeLanguage Nothing "dyy")

-- | Tunzu.
pattern Dza :: Language
pattern Dza = $(bakeLanguage Nothing "dza")

-- | Daza.
pattern Dzd :: Language
pattern Dzd = $(bakeLanguage Nothing "dzd")

-- | Djiwarli.
pattern Dze :: Language
pattern Dze = $(bakeLanguage Nothing "dze")

-- | Dazaga.
pattern Dzg :: Language
pattern Dzg = $(bakeLanguage Nothing "dzg")

-- | Dzalakha.
pattern Dzl :: Language
pattern Dzl = $(bakeLanguage Nothing "dzl")

-- | Dzando.
pattern Dzn :: Language
pattern Dzn = $(bakeLanguage Nothing "dzn")

-- | Karenggapa.
pattern Eaa :: Language
pattern Eaa = $(bakeLanguage Nothing "eaa")

-- | Beginci.
pattern Ebc :: Language
pattern Ebc = $(bakeLanguage Nothing "ebc")

-- | Ebughu.
pattern Ebg :: Language
pattern Ebg = $(bakeLanguage Nothing "ebg")

-- | Eastern Bontok.
pattern Ebk :: Language
pattern Ebk = $(bakeLanguage Nothing "ebk")

-- | Teke-Ebo.
pattern Ebo :: Language
pattern Ebo = $(bakeLanguage Nothing "ebo")

-- | Ebrié.
pattern Ebr :: Language
pattern Ebr = $(bakeLanguage Nothing "ebr")

-- | Embu.
pattern Ebu :: Language
pattern Ebu = $(bakeLanguage Nothing "ebu")

-- | Eteocretan.
pattern Ecr :: Language
pattern Ecr = $(bakeLanguage Nothing "ecr")

-- | Ecuadorian Sign Language.
pattern Ecs :: Language
pattern Ecs = $(bakeLanguage Nothing "ecs")

-- | Eteocypriot.
pattern Ecy :: Language
pattern Ecy = $(bakeLanguage Nothing "ecy")

-- | E.
pattern Eee :: Language
pattern Eee = $(bakeLanguage Nothing "eee")

-- | Efai.
pattern Efa :: Language
pattern Efa = $(bakeLanguage Nothing "efa")

-- | Efe.
pattern Efe :: Language
pattern Efe = $(bakeLanguage Nothing "efe")

-- | Efik.
pattern Efi :: Language
pattern Efi = $(bakeLanguage Nothing "efi")

-- | Ega.
pattern Ega :: Language
pattern Ega = $(bakeLanguage Nothing "ega")

-- | Emilian.
pattern Egl :: Language
pattern Egl = $(bakeLanguage Nothing "egl")

-- | Benamanga.
pattern Egm :: Language
pattern Egm = $(bakeLanguage Nothing "egm")

-- | Eggon.
pattern Ego :: Language
pattern Ego = $(bakeLanguage Nothing "ego")

-- | Egyptian (Ancient).
pattern Egy :: Language
pattern Egy = $(bakeLanguage Nothing "egy")

-- | Miyakubo Sign Language.
pattern Ehs :: Language
pattern Ehs = $(bakeLanguage Nothing "ehs")

-- | Ehueun.
pattern Ehu :: Language
pattern Ehu = $(bakeLanguage Nothing "ehu")

-- | Eipomek.
pattern Eip :: Language
pattern Eip = $(bakeLanguage Nothing "eip")

-- | Eitiep.
pattern Eit :: Language
pattern Eit = $(bakeLanguage Nothing "eit")

-- | Askopan.
pattern Eiv :: Language
pattern Eiv = $(bakeLanguage Nothing "eiv")

-- | Ejamat.
pattern Eja :: Language
pattern Eja = $(bakeLanguage Nothing "eja")

-- | Ekajuk.
pattern Eka :: Language
pattern Eka = $(bakeLanguage Nothing "eka")

-- | Ekit.
pattern Eke :: Language
pattern Eke = $(bakeLanguage Nothing "eke")

-- | Ekari.
pattern Ekg :: Language
pattern Ekg = $(bakeLanguage Nothing "ekg")

-- | Eki.
pattern Eki :: Language
pattern Eki = $(bakeLanguage Nothing "eki")

-- | Standard Estonian.
pattern Ekk :: Language
pattern Ekk = $(bakeLanguage Nothing "ekk")

-- | Kol (Bangladesh).
pattern Ekl :: Language
pattern Ekl = $(bakeLanguage Nothing "ekl")

-- | Elip.
pattern Ekm :: Language
pattern Ekm = $(bakeLanguage Nothing "ekm")

-- | Koti.
pattern Eko :: Language
pattern Eko = $(bakeLanguage Nothing "eko")

-- | Ekpeye.
pattern Ekp :: Language
pattern Ekp = $(bakeLanguage Nothing "ekp")

-- | Yace.
pattern Ekr :: Language
pattern Ekr = $(bakeLanguage Nothing "ekr")

-- | Eastern Kayah.
pattern Eky :: Language
pattern Eky = $(bakeLanguage Nothing "eky")

-- | Elepi.
pattern Ele :: Language
pattern Ele = $(bakeLanguage Nothing "ele")

-- | El Hugeirat.
pattern Elh :: Language
pattern Elh = $(bakeLanguage Nothing "elh")

-- | Nding.
pattern Eli :: Language
pattern Eli = $(bakeLanguage Nothing "eli")

-- | Elkei.
pattern Elk :: Language
pattern Elk = $(bakeLanguage Nothing "elk")

-- | Eleme.
pattern Elm :: Language
pattern Elm = $(bakeLanguage Nothing "elm")

-- | El Molo.
pattern Elo :: Language
pattern Elo = $(bakeLanguage Nothing "elo")

-- | Elu.
pattern Elu :: Language
pattern Elu = $(bakeLanguage Nothing "elu")

-- | Elamite.
pattern Elx :: Language
pattern Elx = $(bakeLanguage Nothing "elx")

-- | Emai-Iuleha-Ora.
pattern Ema :: Language
pattern Ema = $(bakeLanguage Nothing "ema")

-- | Embaloh.
pattern Emb :: Language
pattern Emb = $(bakeLanguage Nothing "emb")

-- | Emerillon.
pattern Eme :: Language
pattern Eme = $(bakeLanguage Nothing "eme")

-- | Eastern Meohang.
pattern Emg :: Language
pattern Emg = $(bakeLanguage Nothing "emg")

-- | Mussau-Emira.
pattern Emi :: Language
pattern Emi = $(bakeLanguage Nothing "emi")

-- | Eastern Maninkakan.
pattern Emk :: Language
pattern Emk = $(bakeLanguage Nothing "emk")

-- | Mamulique.
pattern Emm :: Language
pattern Emm = $(bakeLanguage Nothing "emm")

-- | Eman.
pattern Emn :: Language
pattern Emn = $(bakeLanguage Nothing "emn")

-- | Northern Emberá.
pattern Emp :: Language
pattern Emp = $(bakeLanguage Nothing "emp")

-- | Eastern Minyag.
pattern Emq :: Language
pattern Emq = $(bakeLanguage Nothing "emq")

-- | Pacific Gulf Yupik.
pattern Ems :: Language
pattern Ems = $(bakeLanguage Nothing "ems")

-- | Eastern Muria.
pattern Emu :: Language
pattern Emu = $(bakeLanguage Nothing "emu")

-- | Emplawas.
pattern Emw :: Language
pattern Emw = $(bakeLanguage Nothing "emw")

-- | Erromintxela.
pattern Emx :: Language
pattern Emx = $(bakeLanguage Nothing "emx")

-- | Epigraphic Mayan.
pattern Emy :: Language
pattern Emy = $(bakeLanguage Nothing "emy")

-- | Mbessa.
pattern Emz :: Language
pattern Emz = $(bakeLanguage Nothing "emz")

-- | Apali.
pattern Ena :: Language
pattern Ena = $(bakeLanguage Nothing "ena")

-- | Markweeta.
pattern Enb :: Language
pattern Enb = $(bakeLanguage Nothing "enb")

-- | En.
pattern Enc :: Language
pattern Enc = $(bakeLanguage Nothing "enc")

-- | Ende.
pattern End :: Language
pattern End = $(bakeLanguage Nothing "end")

-- | Forest Enets.
pattern Enf :: Language
pattern Enf = $(bakeLanguage Nothing "enf")

-- | Tundra Enets.
pattern Enh :: Language
pattern Enh = $(bakeLanguage Nothing "enh")

-- | Enlhet.
pattern Enl :: Language
pattern Enl = $(bakeLanguage Nothing "enl")

-- | Middle English (1100-1500).
pattern Enm :: Language
pattern Enm = $(bakeLanguage Nothing "enm")

-- | Engenni.
pattern Enn :: Language
pattern Enn = $(bakeLanguage Nothing "enn")

-- | Enggano.
pattern Eno :: Language
pattern Eno = $(bakeLanguage Nothing "eno")

-- | Enga.
pattern Enq :: Language
pattern Enq = $(bakeLanguage Nothing "enq")

-- | Emumu.
pattern Enr :: Language
pattern Enr = $(bakeLanguage Nothing "enr")

-- | Enu.
pattern Enu :: Language
pattern Enu = $(bakeLanguage Nothing "enu")

-- | Enwan (Edo State).
pattern Env :: Language
pattern Env = $(bakeLanguage Nothing "env")

-- | Enwan (Akwa Ibom State).
pattern Enw :: Language
pattern Enw = $(bakeLanguage Nothing "enw")

-- | Enxet.
pattern Enx :: Language
pattern Enx = $(bakeLanguage Nothing "enx")

-- | Beti (Côte d'Ivoire).
pattern Eot :: Language
pattern Eot = $(bakeLanguage Nothing "eot")

-- | Epie.
pattern Epi :: Language
pattern Epi = $(bakeLanguage Nothing "epi")

-- | Eravallan.
pattern Era :: Language
pattern Era = $(bakeLanguage Nothing "era")

-- | Sie.
pattern Erg :: Language
pattern Erg = $(bakeLanguage Nothing "erg")

-- | Eruwa.
pattern Erh :: Language
pattern Erh = $(bakeLanguage Nothing "erh")

-- | Ogea.
pattern Eri :: Language
pattern Eri = $(bakeLanguage Nothing "eri")

-- | South Efate.
pattern Erk :: Language
pattern Erk = $(bakeLanguage Nothing "erk")

-- | Horpa.
pattern Ero :: Language
pattern Ero = $(bakeLanguage Nothing "ero")

-- | Erre.
pattern Err :: Language
pattern Err = $(bakeLanguage Nothing "err")

-- | Ersu.
pattern Ers :: Language
pattern Ers = $(bakeLanguage Nothing "ers")

-- | Eritai.
pattern Ert :: Language
pattern Ert = $(bakeLanguage Nothing "ert")

-- | Erokwanas.
pattern Erw :: Language
pattern Erw = $(bakeLanguage Nothing "erw")

-- | Ese Ejja.
pattern Ese :: Language
pattern Ese = $(bakeLanguage Nothing "ese")

-- | Aheri Gondi.
pattern Esg :: Language
pattern Esg = $(bakeLanguage Nothing "esg")

-- | Eshtehardi.
pattern Esh :: Language
pattern Esh = $(bakeLanguage Nothing "esh")

-- | North Alaskan Inupiatun.
pattern Esi :: Language
pattern Esi = $(bakeLanguage Nothing "esi")

-- | Northwest Alaska Inupiatun.
pattern Esk :: Language
pattern Esk = $(bakeLanguage Nothing "esk")

-- | Egypt Sign Language.
pattern Esl :: Language
pattern Esl = $(bakeLanguage Nothing "esl")

-- | Esuma.
pattern Esm :: Language
pattern Esm = $(bakeLanguage Nothing "esm")

-- | Salvadoran Sign Language.
pattern Esn :: Language
pattern Esn = $(bakeLanguage Nothing "esn")

-- | Estonian Sign Language.
pattern Eso :: Language
pattern Eso = $(bakeLanguage Nothing "eso")

-- | Esselen.
pattern Esq :: Language
pattern Esq = $(bakeLanguage Nothing "esq")

-- | Central Siberian Yupik.
pattern Ess :: Language
pattern Ess = $(bakeLanguage Nothing "ess")

-- | Central Yupik.
pattern Esu :: Language
pattern Esu = $(bakeLanguage Nothing "esu")

-- | Eskayan.
pattern Esy :: Language
pattern Esy = $(bakeLanguage Nothing "esy")

-- | Etebi.
pattern Etb :: Language
pattern Etb = $(bakeLanguage Nothing "etb")

-- | Etchemin.
pattern Etc :: Language
pattern Etc = $(bakeLanguage Nothing "etc")

-- | Ethiopian Sign Language.
pattern Eth :: Language
pattern Eth = $(bakeLanguage Nothing "eth")

-- | Eton (Vanuatu).
pattern Etn :: Language
pattern Etn = $(bakeLanguage Nothing "etn")

-- | Eton (Cameroon).
pattern Eto :: Language
pattern Eto = $(bakeLanguage Nothing "eto")

-- | Edolo.
pattern Etr :: Language
pattern Etr = $(bakeLanguage Nothing "etr")

-- | Yekhee.
pattern Ets :: Language
pattern Ets = $(bakeLanguage Nothing "ets")

-- | Etruscan.
pattern Ett :: Language
pattern Ett = $(bakeLanguage Nothing "ett")

-- | Ejagham.
pattern Etu :: Language
pattern Etu = $(bakeLanguage Nothing "etu")

-- | Eten.
pattern Etx :: Language
pattern Etx = $(bakeLanguage Nothing "etx")

-- | Semimi.
pattern Etz :: Language
pattern Etz = $(bakeLanguage Nothing "etz")

-- | Eudeve.
pattern Eud :: Language
pattern Eud = $(bakeLanguage Nothing "eud")

-- | Even.
pattern Eve :: Language
pattern Eve = $(bakeLanguage Nothing "eve")

-- | Uvbie.
pattern Evh :: Language
pattern Evh = $(bakeLanguage Nothing "evh")

-- | Evenki.
pattern Evn :: Language
pattern Evn = $(bakeLanguage Nothing "evn")

-- | Ewondo.
pattern Ewo :: Language
pattern Ewo = $(bakeLanguage Nothing "ewo")

-- | Extremaduran.
pattern Ext :: Language
pattern Ext = $(bakeLanguage Nothing "ext")

-- | Eyak.
pattern Eya :: Language
pattern Eya = $(bakeLanguage Nothing "eya")

-- | Keiyo.
pattern Eyo :: Language
pattern Eyo = $(bakeLanguage Nothing "eyo")

-- | Ezaa.
pattern Eza :: Language
pattern Eza = $(bakeLanguage Nothing "eza")

-- | Uzekwe.
pattern Eze :: Language
pattern Eze = $(bakeLanguage Nothing "eze")

-- | Fasu.
pattern Faa :: Language
pattern Faa = $(bakeLanguage Nothing "faa")

-- | Fa d'Ambu.
pattern Fab :: Language
pattern Fab = $(bakeLanguage Nothing "fab")

-- | Wagi.
pattern Fad :: Language
pattern Fad = $(bakeLanguage Nothing "fad")

-- | Fagani.
pattern Faf :: Language
pattern Faf = $(bakeLanguage Nothing "faf")

-- | Finongan.
pattern Fag :: Language
pattern Fag = $(bakeLanguage Nothing "fag")

-- | Baissa Fali.
pattern Fah :: Language
pattern Fah = $(bakeLanguage Nothing "fah")

-- | Faiwol.
pattern Fai :: Language
pattern Fai = $(bakeLanguage Nothing "fai")

-- | Faita.
pattern Faj :: Language
pattern Faj = $(bakeLanguage Nothing "faj")

-- | Fang (Cameroon).
pattern Fak :: Language
pattern Fak = $(bakeLanguage Nothing "fak")

-- | South Fali.
pattern Fal :: Language
pattern Fal = $(bakeLanguage Nothing "fal")

-- | Fam.
pattern Fam :: Language
pattern Fam = $(bakeLanguage Nothing "fam")

-- | Fang (Equatorial Guinea).
pattern Fan :: Language
pattern Fan = $(bakeLanguage Nothing "fan")

-- | Paloor.
pattern Fap :: Language
pattern Fap = $(bakeLanguage Nothing "fap")

-- | Fataleka.
pattern Far :: Language
pattern Far = $(bakeLanguage Nothing "far")

-- | Fanti.
pattern Fat :: Language
pattern Fat = $(bakeLanguage Nothing "fat")

-- | Fayu.
pattern Fau :: Language
pattern Fau = $(bakeLanguage Nothing "fau")

-- | Fala.
pattern Fax :: Language
pattern Fax = $(bakeLanguage Nothing "fax")

-- | Southwestern Fars.
pattern Fay :: Language
pattern Fay = $(bakeLanguage Nothing "fay")

-- | Northwestern Fars.
pattern Faz :: Language
pattern Faz = $(bakeLanguage Nothing "faz")

-- | West Albay Bikol.
pattern Fbl :: Language
pattern Fbl = $(bakeLanguage Nothing "fbl")

-- | Quebec Sign Language.
pattern Fcs :: Language
pattern Fcs = $(bakeLanguage Nothing "fcs")

-- | Feroge.
pattern Fer :: Language
pattern Fer = $(bakeLanguage Nothing "fer")

-- | Foia Foia.
pattern Ffi :: Language
pattern Ffi = $(bakeLanguage Nothing "ffi")

-- | Maasina Fulfulde.
pattern Ffm :: Language
pattern Ffm = $(bakeLanguage Nothing "ffm")

-- | Fongoro.
pattern Fgr :: Language
pattern Fgr = $(bakeLanguage Nothing "fgr")

-- | Nobiin.
pattern Fia :: Language
pattern Fia = $(bakeLanguage Nothing "fia")

-- | Fyer.
pattern Fie :: Language
pattern Fie = $(bakeLanguage Nothing "fie")

-- | Faifi.
pattern Fif :: Language
pattern Fif = $(bakeLanguage Nothing "fif")

-- | Filipino.
pattern Fil :: Language
pattern Fil = $(bakeLanguage Nothing "fil")

-- | Fipa.
pattern Fip :: Language
pattern Fip = $(bakeLanguage Nothing "fip")

-- | Firan.
pattern Fir :: Language
pattern Fir = $(bakeLanguage Nothing "fir")

-- | Tornedalen Finnish.
pattern Fit :: Language
pattern Fit = $(bakeLanguage Nothing "fit")

-- | Fiwaga.
pattern Fiw :: Language
pattern Fiw = $(bakeLanguage Nothing "fiw")

-- | Kirya-Konzəl.
pattern Fkk :: Language
pattern Fkk = $(bakeLanguage Nothing "fkk")

-- | Kven Finnish.
pattern Fkv :: Language
pattern Fkv = $(bakeLanguage Nothing "fkv")

-- | Kalispel-Pend d'Oreille.
pattern Fla :: Language
pattern Fla = $(bakeLanguage Nothing "fla")

-- | Foau.
pattern Flh :: Language
pattern Flh = $(bakeLanguage Nothing "flh")

-- | Fali.
pattern Fli :: Language
pattern Fli = $(bakeLanguage Nothing "fli")

-- | North Fali.
pattern Fll :: Language
pattern Fll = $(bakeLanguage Nothing "fll")

-- | Flinders Island.
pattern Fln :: Language
pattern Fln = $(bakeLanguage Nothing "fln")

-- | Fuliiru.
pattern Flr :: Language
pattern Flr = $(bakeLanguage Nothing "flr")

-- | Flaaitaal.
pattern Fly :: Language
pattern Fly = $(bakeLanguage Nothing "fly")

-- | Fe\'fe'.
pattern Fmp :: Language
pattern Fmp = $(bakeLanguage Nothing "fmp")

-- | Far Western Muria.
pattern Fmu :: Language
pattern Fmu = $(bakeLanguage Nothing "fmu")

-- | Fanbak.
pattern Fnb :: Language
pattern Fnb = $(bakeLanguage Nothing "fnb")

-- | Fanagalo.
pattern Fng :: Language
pattern Fng = $(bakeLanguage Nothing "fng")

-- | Fania.
pattern Fni :: Language
pattern Fni = $(bakeLanguage Nothing "fni")

-- | Foodo.
pattern Fod :: Language
pattern Fod = $(bakeLanguage Nothing "fod")

-- | Foi.
pattern Foi :: Language
pattern Foi = $(bakeLanguage Nothing "foi")

-- | Foma.
pattern Fom :: Language
pattern Fom = $(bakeLanguage Nothing "fom")

-- | Fon.
pattern Fon :: Language
pattern Fon = $(bakeLanguage Nothing "fon")

-- | Fore.
pattern For :: Language
pattern For = $(bakeLanguage Nothing "for")

-- | Siraya.
pattern Fos :: Language
pattern Fos = $(bakeLanguage Nothing "fos")

-- | Fernando Po Creole English.
pattern Fpe :: Language
pattern Fpe = $(bakeLanguage Nothing "fpe")

-- | Fas.
pattern Fqs :: Language
pattern Fqs = $(bakeLanguage Nothing "fqs")

-- | Cajun French.
pattern Frc :: Language
pattern Frc = $(bakeLanguage Nothing "frc")

-- | Fordata.
pattern Frd :: Language
pattern Frd = $(bakeLanguage Nothing "frd")

-- | Frankish.
pattern Frk :: Language
pattern Frk = $(bakeLanguage Nothing "frk")

-- | Middle French (ca. 1400-1600).
pattern Frm :: Language
pattern Frm = $(bakeLanguage Nothing "frm")

-- | Old French (842-ca. 1400).
pattern Fro :: Language
pattern Fro = $(bakeLanguage Nothing "fro")

-- | Arpitan.
pattern Frp :: Language
pattern Frp = $(bakeLanguage Nothing "frp")

-- | Forak.
pattern Frq :: Language
pattern Frq = $(bakeLanguage Nothing "frq")

-- | Northern Frisian.
pattern Frr :: Language
pattern Frr = $(bakeLanguage Nothing "frr")

-- | Eastern Frisian.
pattern Frs :: Language
pattern Frs = $(bakeLanguage Nothing "frs")

-- | Fortsenal.
pattern Frt :: Language
pattern Frt = $(bakeLanguage Nothing "frt")

-- | Finnish Sign Language.
pattern Fse :: Language
pattern Fse = $(bakeLanguage Nothing "fse")

-- | French Sign Language.
pattern Fsl :: Language
pattern Fsl = $(bakeLanguage Nothing "fsl")

-- | Finland-Swedish Sign Language.
pattern Fss :: Language
pattern Fss = $(bakeLanguage Nothing "fss")

-- | Adamawa Fulfulde.
pattern Fub :: Language
pattern Fub = $(bakeLanguage Nothing "fub")

-- | Pulaar.
pattern Fuc :: Language
pattern Fuc = $(bakeLanguage Nothing "fuc")

-- | East Futuna.
pattern Fud :: Language
pattern Fud = $(bakeLanguage Nothing "fud")

-- | Borgu Fulfulde.
pattern Fue :: Language
pattern Fue = $(bakeLanguage Nothing "fue")

-- | Pular.
pattern Fuf :: Language
pattern Fuf = $(bakeLanguage Nothing "fuf")

-- | Western Niger Fulfulde.
pattern Fuh :: Language
pattern Fuh = $(bakeLanguage Nothing "fuh")

-- | Bagirmi Fulfulde.
pattern Fui :: Language
pattern Fui = $(bakeLanguage Nothing "fui")

-- | Ko.
pattern Fuj :: Language
pattern Fuj = $(bakeLanguage Nothing "fuj")

-- | Fum.
pattern Fum :: Language
pattern Fum = $(bakeLanguage Nothing "fum")

-- | Fulniô.
pattern Fun :: Language
pattern Fun = $(bakeLanguage Nothing "fun")

-- | Central-Eastern Niger Fulfulde.
pattern Fuq :: Language
pattern Fuq = $(bakeLanguage Nothing "fuq")

-- | Friulian.
pattern Fur :: Language
pattern Fur = $(bakeLanguage Nothing "fur")

-- | Futuna-Aniwa.
pattern Fut :: Language
pattern Fut = $(bakeLanguage Nothing "fut")

-- | Furu.
pattern Fuu :: Language
pattern Fuu = $(bakeLanguage Nothing "fuu")

-- | Nigerian Fulfulde.
pattern Fuv :: Language
pattern Fuv = $(bakeLanguage Nothing "fuv")

-- | Fuyug.
pattern Fuy :: Language
pattern Fuy = $(bakeLanguage Nothing "fuy")

-- | Fur.
pattern Fvr :: Language
pattern Fvr = $(bakeLanguage Nothing "fvr")

-- | Fwâi.
pattern Fwa :: Language
pattern Fwa = $(bakeLanguage Nothing "fwa")

-- | Fwe.
pattern Fwe :: Language
pattern Fwe = $(bakeLanguage Nothing "fwe")

-- | Ga.
pattern Gaa :: Language
pattern Gaa = $(bakeLanguage Nothing "gaa")

-- | Gabri.
pattern Gab :: Language
pattern Gab = $(bakeLanguage Nothing "gab")

-- | Mixed Great Andamanese.
pattern Gac :: Language
pattern Gac = $(bakeLanguage Nothing "gac")

-- | Gaddang.
pattern Gad :: Language
pattern Gad = $(bakeLanguage Nothing "gad")

-- | Guarequena.
pattern Gae :: Language
pattern Gae = $(bakeLanguage Nothing "gae")

-- | Gende.
pattern Gaf :: Language
pattern Gaf = $(bakeLanguage Nothing "gaf")

-- | Gagauz.
pattern Gag :: Language
pattern Gag = $(bakeLanguage Nothing "gag")

-- | Alekano.
pattern Gah :: Language
pattern Gah = $(bakeLanguage Nothing "gah")

-- | Borei.
pattern Gai :: Language
pattern Gai = $(bakeLanguage Nothing "gai")

-- | Gadsup.
pattern Gaj :: Language
pattern Gaj = $(bakeLanguage Nothing "gaj")

-- | Gamkonora.
pattern Gak :: Language
pattern Gak = $(bakeLanguage Nothing "gak")

-- | Galolen.
pattern Gal :: Language
pattern Gal = $(bakeLanguage Nothing "gal")

-- | Kandawo.
pattern Gam :: Language
pattern Gam = $(bakeLanguage Nothing "gam")

-- | Gan Chinese.
pattern Gan :: Language
pattern Gan = $(bakeLanguage Nothing "gan")

-- | Gants.
pattern Gao :: Language
pattern Gao = $(bakeLanguage Nothing "gao")

-- | Gal.
pattern Gap :: Language
pattern Gap = $(bakeLanguage Nothing "gap")

-- | Gata'.
pattern Gaq :: Language
pattern Gaq = $(bakeLanguage Nothing "gaq")

-- | Galeya.
pattern Gar :: Language
pattern Gar = $(bakeLanguage Nothing "gar")

-- | Adiwasi Garasia.
pattern Gas :: Language
pattern Gas = $(bakeLanguage Nothing "gas")

-- | Kenati.
pattern Gat :: Language
pattern Gat = $(bakeLanguage Nothing "gat")

-- | Mudhili Gadaba.
pattern Gau :: Language
pattern Gau = $(bakeLanguage Nothing "gau")

-- | Nobonob.
pattern Gaw :: Language
pattern Gaw = $(bakeLanguage Nothing "gaw")

-- | Borana-Arsi-Guji Oromo.
pattern Gax :: Language
pattern Gax = $(bakeLanguage Nothing "gax")

-- | Gayo.
pattern Gay :: Language
pattern Gay = $(bakeLanguage Nothing "gay")

-- | West Central Oromo.
pattern Gaz :: Language
pattern Gaz = $(bakeLanguage Nothing "gaz")

-- | Gbaya (Central African Republic).
pattern Gba :: Language
pattern Gba = $(bakeLanguage Nothing "gba")

-- | Kaytetye.
pattern Gbb :: Language
pattern Gbb = $(bakeLanguage Nothing "gbb")

-- | Karajarri.
pattern Gbd :: Language
pattern Gbd = $(bakeLanguage Nothing "gbd")

-- | Niksek.
pattern Gbe :: Language
pattern Gbe = $(bakeLanguage Nothing "gbe")

-- | Gaikundi.
pattern Gbf :: Language
pattern Gbf = $(bakeLanguage Nothing "gbf")

-- | Gbanziri.
pattern Gbg :: Language
pattern Gbg = $(bakeLanguage Nothing "gbg")

-- | Defi Gbe.
pattern Gbh :: Language
pattern Gbh = $(bakeLanguage Nothing "gbh")

-- | Galela.
pattern Gbi :: Language
pattern Gbi = $(bakeLanguage Nothing "gbi")

-- | Bodo Gadaba.
pattern Gbj :: Language
pattern Gbj = $(bakeLanguage Nothing "gbj")

-- | Gaddi.
pattern Gbk :: Language
pattern Gbk = $(bakeLanguage Nothing "gbk")

-- | Gamit.
pattern Gbl :: Language
pattern Gbl = $(bakeLanguage Nothing "gbl")

-- | Garhwali.
pattern Gbm :: Language
pattern Gbm = $(bakeLanguage Nothing "gbm")

-- | Mo'da.
pattern Gbn :: Language
pattern Gbn = $(bakeLanguage Nothing "gbn")

-- | Northern Grebo.
pattern Gbo :: Language
pattern Gbo = $(bakeLanguage Nothing "gbo")

-- | Gbaya-Bossangoa.
pattern Gbp :: Language
pattern Gbp = $(bakeLanguage Nothing "gbp")

-- | Gbaya-Bozoum.
pattern Gbq :: Language
pattern Gbq = $(bakeLanguage Nothing "gbq")

-- | Gbagyi.
pattern Gbr :: Language
pattern Gbr = $(bakeLanguage Nothing "gbr")

-- | Gbesi Gbe.
pattern Gbs :: Language
pattern Gbs = $(bakeLanguage Nothing "gbs")

-- | Gagadu.
pattern Gbu :: Language
pattern Gbu = $(bakeLanguage Nothing "gbu")

-- | Gbanu.
pattern Gbv :: Language
pattern Gbv = $(bakeLanguage Nothing "gbv")

-- | Gabi-Gabi.
pattern Gbw :: Language
pattern Gbw = $(bakeLanguage Nothing "gbw")

-- | Eastern Xwla Gbe.
pattern Gbx :: Language
pattern Gbx = $(bakeLanguage Nothing "gbx")

-- | Gbari.
pattern Gby :: Language
pattern Gby = $(bakeLanguage Nothing "gby")

-- | Zoroastrian Dari.
pattern Gbz :: Language
pattern Gbz = $(bakeLanguage Nothing "gbz")

-- | Mali.
pattern Gcc :: Language
pattern Gcc = $(bakeLanguage Nothing "gcc")

-- | Ganggalida.
pattern Gcd :: Language
pattern Gcd = $(bakeLanguage Nothing "gcd")

-- | Galice.
pattern Gce :: Language
pattern Gce = $(bakeLanguage Nothing "gce")

-- | Guadeloupean Creole French.
pattern Gcf :: Language
pattern Gcf = $(bakeLanguage Nothing "gcf")

-- | Grenadian Creole English.
pattern Gcl :: Language
pattern Gcl = $(bakeLanguage Nothing "gcl")

-- | Gaina.
pattern Gcn :: Language
pattern Gcn = $(bakeLanguage Nothing "gcn")

-- | Guianese Creole French.
pattern Gcr :: Language
pattern Gcr = $(bakeLanguage Nothing "gcr")

-- | Colonia Tovar German.
pattern Gct :: Language
pattern Gct = $(bakeLanguage Nothing "gct")

-- | Gade Lohar.
pattern Gda :: Language
pattern Gda = $(bakeLanguage Nothing "gda")

-- | Pottangi Ollar Gadaba.
pattern Gdb :: Language
pattern Gdb = $(bakeLanguage Nothing "gdb")

-- | Gugu Badhun.
pattern Gdc :: Language
pattern Gdc = $(bakeLanguage Nothing "gdc")

-- | Gedaged.
pattern Gdd :: Language
pattern Gdd = $(bakeLanguage Nothing "gdd")

-- | Gude.
pattern Gde :: Language
pattern Gde = $(bakeLanguage Nothing "gde")

-- | Guduf-Gava.
pattern Gdf :: Language
pattern Gdf = $(bakeLanguage Nothing "gdf")

-- | Ga'dang.
pattern Gdg :: Language
pattern Gdg = $(bakeLanguage Nothing "gdg")

-- | Gadjerawang.
pattern Gdh :: Language
pattern Gdh = $(bakeLanguage Nothing "gdh")

-- | Gundi.
pattern Gdi :: Language
pattern Gdi = $(bakeLanguage Nothing "gdi")

-- | Gurdjar.
pattern Gdj :: Language
pattern Gdj = $(bakeLanguage Nothing "gdj")

-- | Gadang.
pattern Gdk :: Language
pattern Gdk = $(bakeLanguage Nothing "gdk")

-- | Dirasha.
pattern Gdl :: Language
pattern Gdl = $(bakeLanguage Nothing "gdl")

-- | Laal.
pattern Gdm :: Language
pattern Gdm = $(bakeLanguage Nothing "gdm")

-- | Umanakaina.
pattern Gdn :: Language
pattern Gdn = $(bakeLanguage Nothing "gdn")

-- | Ghodoberi.
pattern Gdo :: Language
pattern Gdo = $(bakeLanguage Nothing "gdo")

-- | Mehri.
pattern Gdq :: Language
pattern Gdq = $(bakeLanguage Nothing "gdq")

-- | Wipi.
pattern Gdr :: Language
pattern Gdr = $(bakeLanguage Nothing "gdr")

-- | Ghandruk Sign Language.
pattern Gds :: Language
pattern Gds = $(bakeLanguage Nothing "gds")

-- | Kungardutyi.
pattern Gdt :: Language
pattern Gdt = $(bakeLanguage Nothing "gdt")

-- | Gudu.
pattern Gdu :: Language
pattern Gdu = $(bakeLanguage Nothing "gdu")

-- | Godwari.
pattern Gdx :: Language
pattern Gdx = $(bakeLanguage Nothing "gdx")

-- | Geruma.
pattern Gea :: Language
pattern Gea = $(bakeLanguage Nothing "gea")

-- | Kire.
pattern Geb :: Language
pattern Geb = $(bakeLanguage Nothing "geb")

-- | Gboloo Grebo.
pattern Gec :: Language
pattern Gec = $(bakeLanguage Nothing "gec")

-- | Gade.
pattern Ged :: Language
pattern Ged = $(bakeLanguage Nothing "ged")

-- | Gerai.
pattern Gef :: Language
pattern Gef = $(bakeLanguage Nothing "gef")

-- | Gengle.
pattern Geg :: Language
pattern Geg = $(bakeLanguage Nothing "geg")

-- | Hutterite German.
pattern Geh :: Language
pattern Geh = $(bakeLanguage Nothing "geh")

-- | Gebe.
pattern Gei :: Language
pattern Gei = $(bakeLanguage Nothing "gei")

-- | Gen.
pattern Gej :: Language
pattern Gej = $(bakeLanguage Nothing "gej")

-- | Ywom.
pattern Gek :: Language
pattern Gek = $(bakeLanguage Nothing "gek")

-- | ut-Ma'in.
pattern Gel :: Language
pattern Gel = $(bakeLanguage Nothing "gel")

-- | Geme.
pattern Geq :: Language
pattern Geq = $(bakeLanguage Nothing "geq")

-- | Geser-Gorom.
pattern Ges :: Language
pattern Ges = $(bakeLanguage Nothing "ges")

-- | Eviya.
pattern Gev :: Language
pattern Gev = $(bakeLanguage Nothing "gev")

-- | Gera.
pattern Gew :: Language
pattern Gew = $(bakeLanguage Nothing "gew")

-- | Garre.
pattern Gex :: Language
pattern Gex = $(bakeLanguage Nothing "gex")

-- | Enya.
pattern Gey :: Language
pattern Gey = $(bakeLanguage Nothing "gey")

-- | Geez.
pattern Gez :: Language
pattern Gez = $(bakeLanguage Nothing "gez")

-- | Patpatar.
pattern Gfk :: Language
pattern Gfk = $(bakeLanguage Nothing "gfk")

-- | Gafat.
pattern Gft :: Language
pattern Gft = $(bakeLanguage Nothing "gft")

-- | Gao.
pattern Gga :: Language
pattern Gga = $(bakeLanguage Nothing "gga")

-- | Gbii.
pattern Ggb :: Language
pattern Ggb = $(bakeLanguage Nothing "ggb")

-- | Gugadj.
pattern Ggd :: Language
pattern Ggd = $(bakeLanguage Nothing "ggd")

-- | Gurr-goni.
pattern Gge :: Language
pattern Gge = $(bakeLanguage Nothing "gge")

-- | Gurgula.
pattern Ggg :: Language
pattern Ggg = $(bakeLanguage Nothing "ggg")

-- | Kungarakany.
pattern Ggk :: Language
pattern Ggk = $(bakeLanguage Nothing "ggk")

-- | Ganglau.
pattern Ggl :: Language
pattern Ggl = $(bakeLanguage Nothing "ggl")

-- | Gitua.
pattern Ggt :: Language
pattern Ggt = $(bakeLanguage Nothing "ggt")

-- | Gagu.
pattern Ggu :: Language
pattern Ggu = $(bakeLanguage Nothing "ggu")

-- | Gogodala.
pattern Ggw :: Language
pattern Ggw = $(bakeLanguage Nothing "ggw")

-- | Ghadamès.
pattern Gha :: Language
pattern Gha = $(bakeLanguage Nothing "gha")

-- | Hiberno-Scottish Gaelic.
pattern Ghc :: Language
pattern Ghc = $(bakeLanguage Nothing "ghc")

-- | Southern Ghale.
pattern Ghe :: Language
pattern Ghe = $(bakeLanguage Nothing "ghe")

-- | Northern Ghale.
pattern Ghh :: Language
pattern Ghh = $(bakeLanguage Nothing "ghh")

-- | Geko Karen.
pattern Ghk :: Language
pattern Ghk = $(bakeLanguage Nothing "ghk")

-- | Ghulfan.
pattern Ghl :: Language
pattern Ghl = $(bakeLanguage Nothing "ghl")

-- | Ghanongga.
pattern Ghn :: Language
pattern Ghn = $(bakeLanguage Nothing "ghn")

-- | Ghomara.
pattern Gho :: Language
pattern Gho = $(bakeLanguage Nothing "gho")

-- | Ghera.
pattern Ghr :: Language
pattern Ghr = $(bakeLanguage Nothing "ghr")

-- | Guhu-Samane.
pattern Ghs :: Language
pattern Ghs = $(bakeLanguage Nothing "ghs")

-- | Kuke.
pattern Ght :: Language
pattern Ght = $(bakeLanguage Nothing "ght")

-- | Kija.
pattern Gia :: Language
pattern Gia = $(bakeLanguage Nothing "gia")

-- | Gibanawa.
pattern Gib :: Language
pattern Gib = $(bakeLanguage Nothing "gib")

-- | Gail.
pattern Gic :: Language
pattern Gic = $(bakeLanguage Nothing "gic")

-- | Gidar.
pattern Gid :: Language
pattern Gid = $(bakeLanguage Nothing "gid")

-- | Gaɓogbo.
pattern Gie :: Language
pattern Gie = $(bakeLanguage Nothing "gie")

-- | Goaria.
pattern Gig :: Language
pattern Gig = $(bakeLanguage Nothing "gig")

-- | Githabul.
pattern Gih :: Language
pattern Gih = $(bakeLanguage Nothing "gih")

-- | Girirra.
pattern Gii :: Language
pattern Gii = $(bakeLanguage Nothing "gii")

-- | Gilbertese.
pattern Gil :: Language
pattern Gil = $(bakeLanguage Nothing "gil")

-- | Gimi (Eastern Highlands).
pattern Gim :: Language
pattern Gim = $(bakeLanguage Nothing "gim")

-- | Hinukh.
pattern Gin :: Language
pattern Gin = $(bakeLanguage Nothing "gin")

-- | Gimi (West New Britain).
pattern Gip :: Language
pattern Gip = $(bakeLanguage Nothing "gip")

-- | Green Gelao.
pattern Giq :: Language
pattern Giq = $(bakeLanguage Nothing "giq")

-- | Red Gelao.
pattern Gir :: Language
pattern Gir = $(bakeLanguage Nothing "gir")

-- | North Giziga.
pattern Gis :: Language
pattern Gis = $(bakeLanguage Nothing "gis")

-- | Gitxsan.
pattern Git :: Language
pattern Git = $(bakeLanguage Nothing "git")

-- | Mulao.
pattern Giu :: Language
pattern Giu = $(bakeLanguage Nothing "giu")

-- | White Gelao.
pattern Giw :: Language
pattern Giw = $(bakeLanguage Nothing "giw")

-- | Gilima.
pattern Gix :: Language
pattern Gix = $(bakeLanguage Nothing "gix")

-- | Giyug.
pattern Giy :: Language
pattern Giy = $(bakeLanguage Nothing "giy")

-- | South Giziga.
pattern Giz :: Language
pattern Giz = $(bakeLanguage Nothing "giz")

-- | Kachi Koli.
pattern Gjk :: Language
pattern Gjk = $(bakeLanguage Nothing "gjk")

-- | Gunditjmara.
pattern Gjm :: Language
pattern Gjm = $(bakeLanguage Nothing "gjm")

-- | Gonja.
pattern Gjn :: Language
pattern Gjn = $(bakeLanguage Nothing "gjn")

-- | Gurindji Kriol.
pattern Gjr :: Language
pattern Gjr = $(bakeLanguage Nothing "gjr")

-- | Gujari.
pattern Gju :: Language
pattern Gju = $(bakeLanguage Nothing "gju")

-- | Guya.
pattern Gka :: Language
pattern Gka = $(bakeLanguage Nothing "gka")

-- | Magɨ (Madang Province).
pattern Gkd :: Language
pattern Gkd = $(bakeLanguage Nothing "gkd")

-- | Ndai.
pattern Gke :: Language
pattern Gke = $(bakeLanguage Nothing "gke")

-- | Gokana.
pattern Gkn :: Language
pattern Gkn = $(bakeLanguage Nothing "gkn")

-- | Kok-Nar.
pattern Gko :: Language
pattern Gko = $(bakeLanguage Nothing "gko")

-- | Guinea Kpelle.
pattern Gkp :: Language
pattern Gkp = $(bakeLanguage Nothing "gkp")

-- | ǂUngkue.
pattern Gku :: Language
pattern Gku = $(bakeLanguage Nothing "gku")

-- | Belning.
pattern Glb :: Language
pattern Glb = $(bakeLanguage Nothing "glb")

-- | Bon Gula.
pattern Glc :: Language
pattern Glc = $(bakeLanguage Nothing "glc")

-- | Nanai.
pattern Gld :: Language
pattern Gld = $(bakeLanguage Nothing "gld")

-- | Northwest Pashai.
pattern Glh :: Language
pattern Glh = $(bakeLanguage Nothing "glh")

-- | Gula Iro.
pattern Glj :: Language
pattern Glj = $(bakeLanguage Nothing "glj")

-- | Gilaki.
pattern Glk :: Language
pattern Glk = $(bakeLanguage Nothing "glk")

-- | Garlali.
pattern Gll :: Language
pattern Gll = $(bakeLanguage Nothing "gll")

-- | Galambu.
pattern Glo :: Language
pattern Glo = $(bakeLanguage Nothing "glo")

-- | Glaro-Twabo.
pattern Glr :: Language
pattern Glr = $(bakeLanguage Nothing "glr")

-- | Gula (Chad).
pattern Glu :: Language
pattern Glu = $(bakeLanguage Nothing "glu")

-- | Glavda.
pattern Glw :: Language
pattern Glw = $(bakeLanguage Nothing "glw")

-- | Gule.
pattern Gly :: Language
pattern Gly = $(bakeLanguage Nothing "gly")

-- | Gambera.
pattern Gma :: Language
pattern Gma = $(bakeLanguage Nothing "gma")

-- | Gula'alaa.
pattern Gmb :: Language
pattern Gmb = $(bakeLanguage Nothing "gmb")

-- | Mághdì.
pattern Gmd :: Language
pattern Gmd = $(bakeLanguage Nothing "gmd")

-- | Magɨyi.
pattern Gmg :: Language
pattern Gmg = $(bakeLanguage Nothing "gmg")

-- | Middle High German (ca. 1050-1500).
pattern Gmh :: Language
pattern Gmh = $(bakeLanguage Nothing "gmh")

-- | Middle Low German.
pattern Gml :: Language
pattern Gml = $(bakeLanguage Nothing "gml")

-- | Gbaya-Mbodomo.
pattern Gmm :: Language
pattern Gmm = $(bakeLanguage Nothing "gmm")

-- | Gimnime.
pattern Gmn :: Language
pattern Gmn = $(bakeLanguage Nothing "gmn")

-- | Mirning.
pattern Gmr :: Language
pattern Gmr = $(bakeLanguage Nothing "gmr")

-- | Gumalu.
pattern Gmu :: Language
pattern Gmu = $(bakeLanguage Nothing "gmu")

-- | Gamo.
pattern Gmv :: Language
pattern Gmv = $(bakeLanguage Nothing "gmv")

-- | Magoma.
pattern Gmx :: Language
pattern Gmx = $(bakeLanguage Nothing "gmx")

-- | Mycenaean Greek.
pattern Gmy :: Language
pattern Gmy = $(bakeLanguage Nothing "gmy")

-- | Mgbolizhia.
pattern Gmz :: Language
pattern Gmz = $(bakeLanguage Nothing "gmz")

-- | Kaansa.
pattern Gna :: Language
pattern Gna = $(bakeLanguage Nothing "gna")

-- | Gangte.
pattern Gnb :: Language
pattern Gnb = $(bakeLanguage Nothing "gnb")

-- | Guanche.
pattern Gnc :: Language
pattern Gnc = $(bakeLanguage Nothing "gnc")

-- | Zulgo-Gemzek.
pattern Gnd :: Language
pattern Gnd = $(bakeLanguage Nothing "gnd")

-- | Ganang.
pattern Gne :: Language
pattern Gne = $(bakeLanguage Nothing "gne")

-- | Ngangam.
pattern Gng :: Language
pattern Gng = $(bakeLanguage Nothing "gng")

-- | Lere.
pattern Gnh :: Language
pattern Gnh = $(bakeLanguage Nothing "gnh")

-- | Gooniyandi.
pattern Gni :: Language
pattern Gni = $(bakeLanguage Nothing "gni")

-- | Ngen.
pattern Gnj :: Language
pattern Gnj = $(bakeLanguage Nothing "gnj")

-- | ǁGana.
pattern Gnk :: Language
pattern Gnk = $(bakeLanguage Nothing "gnk")

-- | Gangulu.
pattern Gnl :: Language
pattern Gnl = $(bakeLanguage Nothing "gnl")

-- | Ginuman.
pattern Gnm :: Language
pattern Gnm = $(bakeLanguage Nothing "gnm")

-- | Gumatj.
pattern Gnn :: Language
pattern Gnn = $(bakeLanguage Nothing "gnn")

-- | Northern Gondi.
pattern Gno :: Language
pattern Gno = $(bakeLanguage Nothing "gno")

-- | Gana.
pattern Gnq :: Language
pattern Gnq = $(bakeLanguage Nothing "gnq")

-- | Gureng Gureng.
pattern Gnr :: Language
pattern Gnr = $(bakeLanguage Nothing "gnr")

-- | Guntai.
pattern Gnt :: Language
pattern Gnt = $(bakeLanguage Nothing "gnt")

-- | Gnau.
pattern Gnu :: Language
pattern Gnu = $(bakeLanguage Nothing "gnu")

-- | Western Bolivian Guaraní.
pattern Gnw :: Language
pattern Gnw = $(bakeLanguage Nothing "gnw")

-- | Ganzi.
pattern Gnz :: Language
pattern Gnz = $(bakeLanguage Nothing "gnz")

-- | Guro.
pattern Goa :: Language
pattern Goa = $(bakeLanguage Nothing "goa")

-- | Playero.
pattern Gob :: Language
pattern Gob = $(bakeLanguage Nothing "gob")

-- | Gorakor.
pattern Goc :: Language
pattern Goc = $(bakeLanguage Nothing "goc")

-- | Godié.
pattern God :: Language
pattern God = $(bakeLanguage Nothing "god")

-- | Gongduk.
pattern Goe :: Language
pattern Goe = $(bakeLanguage Nothing "goe")

-- | Gofa.
pattern Gof :: Language
pattern Gof = $(bakeLanguage Nothing "gof")

-- | Gogo.
pattern Gog :: Language
pattern Gog = $(bakeLanguage Nothing "gog")

-- | Old High German (ca. 750-1050).
pattern Goh :: Language
pattern Goh = $(bakeLanguage Nothing "goh")

-- | Gobasi.
pattern Goi :: Language
pattern Goi = $(bakeLanguage Nothing "goi")

-- | Gowlan.
pattern Goj :: Language
pattern Goj = $(bakeLanguage Nothing "goj")

-- | Gowli.
pattern Gok :: Language
pattern Gok = $(bakeLanguage Nothing "gok")

-- | Gola.
pattern Gol :: Language
pattern Gol = $(bakeLanguage Nothing "gol")

-- | Goan Konkani.
pattern Gom :: Language
pattern Gom = $(bakeLanguage Nothing "gom")

-- | Gondi.
pattern Gon :: Language
pattern Gon = $(bakeLanguage Nothing "gon")

-- | Gone Dau.
pattern Goo :: Language
pattern Goo = $(bakeLanguage Nothing "goo")

-- | Yeretuar.
pattern Gop :: Language
pattern Gop = $(bakeLanguage Nothing "gop")

-- | Gorap.
pattern Goq :: Language
pattern Goq = $(bakeLanguage Nothing "goq")

-- | Gorontalo.
pattern Gor :: Language
pattern Gor = $(bakeLanguage Nothing "gor")

-- | Gronings.
pattern Gos :: Language
pattern Gos = $(bakeLanguage Nothing "gos")

-- | Gothic.
pattern Got :: Language
pattern Got = $(bakeLanguage Nothing "got")

-- | Gavar.
pattern Gou :: Language
pattern Gou = $(bakeLanguage Nothing "gou")

-- | Goo.
pattern Gov :: Language
pattern Gov = $(bakeLanguage Nothing "gov")

-- | Gorowa.
pattern Gow :: Language
pattern Gow = $(bakeLanguage Nothing "gow")

-- | Gobu.
pattern Gox :: Language
pattern Gox = $(bakeLanguage Nothing "gox")

-- | Goundo.
pattern Goy :: Language
pattern Goy = $(bakeLanguage Nothing "goy")

-- | Gozarkhani.
pattern Goz :: Language
pattern Goz = $(bakeLanguage Nothing "goz")

-- | Gupa-Abawa.
pattern Gpa :: Language
pattern Gpa = $(bakeLanguage Nothing "gpa")

-- | Ghanaian Pidgin English.
pattern Gpe :: Language
pattern Gpe = $(bakeLanguage Nothing "gpe")

-- | Taiap.
pattern Gpn :: Language
pattern Gpn = $(bakeLanguage Nothing "gpn")

-- | Ga'anda.
pattern Gqa :: Language
pattern Gqa = $(bakeLanguage Nothing "gqa")

-- | Guiqiong.
pattern Gqi :: Language
pattern Gqi = $(bakeLanguage Nothing "gqi")

-- | Guana (Brazil).
pattern Gqn :: Language
pattern Gqn = $(bakeLanguage Nothing "gqn")

-- | Gor.
pattern Gqr :: Language
pattern Gqr = $(bakeLanguage Nothing "gqr")

-- | Qau.
pattern Gqu :: Language
pattern Gqu = $(bakeLanguage Nothing "gqu")

-- | Rajput Garasia.
pattern Gra :: Language
pattern Gra = $(bakeLanguage Nothing "gra")

-- | Grebo.
pattern Grb :: Language
pattern Grb = $(bakeLanguage Nothing "grb")

-- | Ancient Greek (to 1453).
pattern Grc :: Language
pattern Grc = $(bakeLanguage Nothing "grc")

-- | Guruntum-Mbaaru.
pattern Grd :: Language
pattern Grd = $(bakeLanguage Nothing "grd")

-- | Madi.
pattern Grg :: Language
pattern Grg = $(bakeLanguage Nothing "grg")

-- | Gbiri-Niragu.
pattern Grh :: Language
pattern Grh = $(bakeLanguage Nothing "grh")

-- | Ghari.
pattern Gri :: Language
pattern Gri = $(bakeLanguage Nothing "gri")

-- | Southern Grebo.
pattern Grj :: Language
pattern Grj = $(bakeLanguage Nothing "grj")

-- | Kota Marudu Talantang.
pattern Grm :: Language
pattern Grm = $(bakeLanguage Nothing "grm")

-- | Groma.
pattern Gro :: Language
pattern Gro = $(bakeLanguage Nothing "gro")

-- | Gorovu.
pattern Grq :: Language
pattern Grq = $(bakeLanguage Nothing "grq")

-- | Taznatit.
pattern Grr :: Language
pattern Grr = $(bakeLanguage Nothing "grr")

-- | Gresi.
pattern Grs :: Language
pattern Grs = $(bakeLanguage Nothing "grs")

-- | Garo.
pattern Grt :: Language
pattern Grt = $(bakeLanguage Nothing "grt")

-- | Kistane.
pattern Gru :: Language
pattern Gru = $(bakeLanguage Nothing "gru")

-- | Central Grebo.
pattern Grv :: Language
pattern Grv = $(bakeLanguage Nothing "grv")

-- | Gweda.
pattern Grw :: Language
pattern Grw = $(bakeLanguage Nothing "grw")

-- | Guriaso.
pattern Grx :: Language
pattern Grx = $(bakeLanguage Nothing "grx")

-- | Barclayville Grebo.
pattern Gry :: Language
pattern Gry = $(bakeLanguage Nothing "gry")

-- | Guramalum.
pattern Grz :: Language
pattern Grz = $(bakeLanguage Nothing "grz")

-- | Ghanaian Sign Language.
pattern Gse :: Language
pattern Gse = $(bakeLanguage Nothing "gse")

-- | German Sign Language.
pattern Gsg :: Language
pattern Gsg = $(bakeLanguage Nothing "gsg")

-- | Gusilay.
pattern Gsl :: Language
pattern Gsl = $(bakeLanguage Nothing "gsl")

-- | Guatemalan Sign Language.
pattern Gsm :: Language
pattern Gsm = $(bakeLanguage Nothing "gsm")

-- | Nema.
pattern Gsn :: Language
pattern Gsn = $(bakeLanguage Nothing "gsn")

-- | Southwest Gbaya.
pattern Gso :: Language
pattern Gso = $(bakeLanguage Nothing "gso")

-- | Wasembo.
pattern Gsp :: Language
pattern Gsp = $(bakeLanguage Nothing "gsp")

-- | Greek Sign Language.
pattern Gss :: Language
pattern Gss = $(bakeLanguage Nothing "gss")

-- | Swiss German.
pattern Gsw :: Language
pattern Gsw = $(bakeLanguage Nothing "gsw")

-- | Guató.
pattern Gta :: Language
pattern Gta = $(bakeLanguage Nothing "gta")

-- | Aghu-Tharnggala.
pattern Gtu :: Language
pattern Gtu = $(bakeLanguage Nothing "gtu")

-- | Shiki.
pattern Gua :: Language
pattern Gua = $(bakeLanguage Nothing "gua")

-- | Guajajára.
pattern Gub :: Language
pattern Gub = $(bakeLanguage Nothing "gub")

-- | Wayuu.
pattern Guc :: Language
pattern Guc = $(bakeLanguage Nothing "guc")

-- | Yocoboué Dida.
pattern Gud :: Language
pattern Gud = $(bakeLanguage Nothing "gud")

-- | Gurindji.
pattern Gue :: Language
pattern Gue = $(bakeLanguage Nothing "gue")

-- | Gupapuyngu.
pattern Guf :: Language
pattern Guf = $(bakeLanguage Nothing "guf")

-- | Paraguayan Guaraní.
pattern Gug :: Language
pattern Gug = $(bakeLanguage Nothing "gug")

-- | Guahibo.
pattern Guh :: Language
pattern Guh = $(bakeLanguage Nothing "guh")

-- | Eastern Bolivian Guaraní.
pattern Gui :: Language
pattern Gui = $(bakeLanguage Nothing "gui")

-- | Gumuz.
pattern Guk :: Language
pattern Guk = $(bakeLanguage Nothing "guk")

-- | Sea Island Creole English.
pattern Gul :: Language
pattern Gul = $(bakeLanguage Nothing "gul")

-- | Guambiano.
pattern Gum :: Language
pattern Gum = $(bakeLanguage Nothing "gum")

-- | Mbyá Guaraní.
pattern Gun :: Language
pattern Gun = $(bakeLanguage Nothing "gun")

-- | Guayabero.
pattern Guo :: Language
pattern Guo = $(bakeLanguage Nothing "guo")

-- | Gunwinggu.
pattern Gup :: Language
pattern Gup = $(bakeLanguage Nothing "gup")

-- | Aché.
pattern Guq :: Language
pattern Guq = $(bakeLanguage Nothing "guq")

-- | Farefare.
pattern Gur :: Language
pattern Gur = $(bakeLanguage Nothing "gur")

-- | Guinean Sign Language.
pattern Gus :: Language
pattern Gus = $(bakeLanguage Nothing "gus")

-- | Maléku Jaíka.
pattern Gut :: Language
pattern Gut = $(bakeLanguage Nothing "gut")

-- | Yanomamö.
pattern Guu :: Language
pattern Guu = $(bakeLanguage Nothing "guu")

-- | Gun.
pattern Guw :: Language
pattern Guw = $(bakeLanguage Nothing "guw")

-- | Gourmanchéma.
pattern Gux :: Language
pattern Gux = $(bakeLanguage Nothing "gux")

-- | Gusii.
pattern Guz :: Language
pattern Guz = $(bakeLanguage Nothing "guz")

-- | Guana (Paraguay).
pattern Gva :: Language
pattern Gva = $(bakeLanguage Nothing "gva")

-- | Guanano.
pattern Gvc :: Language
pattern Gvc = $(bakeLanguage Nothing "gvc")

-- | Duwet.
pattern Gve :: Language
pattern Gve = $(bakeLanguage Nothing "gve")

-- | Golin.
pattern Gvf :: Language
pattern Gvf = $(bakeLanguage Nothing "gvf")

-- | Guajá.
pattern Gvj :: Language
pattern Gvj = $(bakeLanguage Nothing "gvj")

-- | Gulay.
pattern Gvl :: Language
pattern Gvl = $(bakeLanguage Nothing "gvl")

-- | Gurmana.
pattern Gvm :: Language
pattern Gvm = $(bakeLanguage Nothing "gvm")

-- | Kuku-Yalanji.
pattern Gvn :: Language
pattern Gvn = $(bakeLanguage Nothing "gvn")

-- | Gavião Do Jiparaná.
pattern Gvo :: Language
pattern Gvo = $(bakeLanguage Nothing "gvo")

-- | Pará Gavião.
pattern Gvp :: Language
pattern Gvp = $(bakeLanguage Nothing "gvp")

-- | Gurung.
pattern Gvr :: Language
pattern Gvr = $(bakeLanguage Nothing "gvr")

-- | Gumawana.
pattern Gvs :: Language
pattern Gvs = $(bakeLanguage Nothing "gvs")

-- | Guyani.
pattern Gvy :: Language
pattern Gvy = $(bakeLanguage Nothing "gvy")

-- | Mbato.
pattern Gwa :: Language
pattern Gwa = $(bakeLanguage Nothing "gwa")

-- | Gwa.
pattern Gwb :: Language
pattern Gwb = $(bakeLanguage Nothing "gwb")

-- | Gawri.
pattern Gwc :: Language
pattern Gwc = $(bakeLanguage Nothing "gwc")

-- | Gawwada.
pattern Gwd :: Language
pattern Gwd = $(bakeLanguage Nothing "gwd")

-- | Gweno.
pattern Gwe :: Language
pattern Gwe = $(bakeLanguage Nothing "gwe")

-- | Gowro.
pattern Gwf :: Language
pattern Gwf = $(bakeLanguage Nothing "gwf")

-- | Moo.
pattern Gwg :: Language
pattern Gwg = $(bakeLanguage Nothing "gwg")

-- | Gwichʼin.
pattern Gwi :: Language
pattern Gwi = $(bakeLanguage Nothing "gwi")

-- | ǀGwi.
pattern Gwj :: Language
pattern Gwj = $(bakeLanguage Nothing "gwj")

-- | Awngthim.
pattern Gwm :: Language
pattern Gwm = $(bakeLanguage Nothing "gwm")

-- | Gwandara.
pattern Gwn :: Language
pattern Gwn = $(bakeLanguage Nothing "gwn")

-- | Gwere.
pattern Gwr :: Language
pattern Gwr = $(bakeLanguage Nothing "gwr")

-- | Gawar-Bati.
pattern Gwt :: Language
pattern Gwt = $(bakeLanguage Nothing "gwt")

-- | Guwamu.
pattern Gwu :: Language
pattern Gwu = $(bakeLanguage Nothing "gwu")

-- | Kwini.
pattern Gww :: Language
pattern Gww = $(bakeLanguage Nothing "gww")

-- | Gua.
pattern Gwx :: Language
pattern Gwx = $(bakeLanguage Nothing "gwx")

-- | Wè Southern.
pattern Gxx :: Language
pattern Gxx = $(bakeLanguage Nothing "gxx")

-- | Northwest Gbaya.
pattern Gya :: Language
pattern Gya = $(bakeLanguage Nothing "gya")

-- | Garus.
pattern Gyb :: Language
pattern Gyb = $(bakeLanguage Nothing "gyb")

-- | Kayardild.
pattern Gyd :: Language
pattern Gyd = $(bakeLanguage Nothing "gyd")

-- | Gyem.
pattern Gye :: Language
pattern Gye = $(bakeLanguage Nothing "gye")

-- | Gungabula.
pattern Gyf :: Language
pattern Gyf = $(bakeLanguage Nothing "gyf")

-- | Gbayi.
pattern Gyg :: Language
pattern Gyg = $(bakeLanguage Nothing "gyg")

-- | Gyele.
pattern Gyi :: Language
pattern Gyi = $(bakeLanguage Nothing "gyi")

-- | Gayil.
pattern Gyl :: Language
pattern Gyl = $(bakeLanguage Nothing "gyl")

-- | Ngäbere.
pattern Gym :: Language
pattern Gym = $(bakeLanguage Nothing "gym")

-- | Guyanese Creole English.
pattern Gyn :: Language
pattern Gyn = $(bakeLanguage Nothing "gyn")

-- | Gyalsumdo.
pattern Gyo :: Language
pattern Gyo = $(bakeLanguage Nothing "gyo")

-- | Guarayu.
pattern Gyr :: Language
pattern Gyr = $(bakeLanguage Nothing "gyr")

-- | Gunya.
pattern Gyy :: Language
pattern Gyy = $(bakeLanguage Nothing "gyy")

-- | Geji.
pattern Gyz :: Language
pattern Gyz = $(bakeLanguage Nothing "gyz")

-- | Ganza.
pattern Gza :: Language
pattern Gza = $(bakeLanguage Nothing "gza")

-- | Gazi.
pattern Gzi :: Language
pattern Gzi = $(bakeLanguage Nothing "gzi")

-- | Gane.
pattern Gzn :: Language
pattern Gzn = $(bakeLanguage Nothing "gzn")

-- | Hän.
pattern Haa :: Language
pattern Haa = $(bakeLanguage Nothing "haa")

-- | Hanoi Sign Language.
pattern Hab :: Language
pattern Hab = $(bakeLanguage Nothing "hab")

-- | Gurani.
pattern Hac :: Language
pattern Hac = $(bakeLanguage Nothing "hac")

-- | Hatam.
pattern Had :: Language
pattern Had = $(bakeLanguage Nothing "had")

-- | Eastern Oromo.
pattern Hae :: Language
pattern Hae = $(bakeLanguage Nothing "hae")

-- | Haiphong Sign Language.
pattern Haf :: Language
pattern Haf = $(bakeLanguage Nothing "haf")

-- | Hanga.
pattern Hag :: Language
pattern Hag = $(bakeLanguage Nothing "hag")

-- | Hahon.
pattern Hah :: Language
pattern Hah = $(bakeLanguage Nothing "hah")

-- | Haida.
pattern Hai :: Language
pattern Hai = $(bakeLanguage Nothing "hai")

-- | Hajong.
pattern Haj :: Language
pattern Haj = $(bakeLanguage Nothing "haj")

-- | Hakka Chinese.
pattern Hak :: Language
pattern Hak = $(bakeLanguage Nothing "hak")

-- | Halang.
pattern Hal :: Language
pattern Hal = $(bakeLanguage Nothing "hal")

-- | Hewa.
pattern Ham :: Language
pattern Ham = $(bakeLanguage Nothing "ham")

-- | Hangaza.
pattern Han :: Language
pattern Han = $(bakeLanguage Nothing "han")

-- | Hakö.
pattern Hao :: Language
pattern Hao = $(bakeLanguage Nothing "hao")

-- | Hupla.
pattern Hap :: Language
pattern Hap = $(bakeLanguage Nothing "hap")

-- | Ha.
pattern Haq :: Language
pattern Haq = $(bakeLanguage Nothing "haq")

-- | Harari.
pattern Har :: Language
pattern Har = $(bakeLanguage Nothing "har")

-- | Haisla.
pattern Has :: Language
pattern Has = $(bakeLanguage Nothing "has")

-- | Havu.
pattern Hav :: Language
pattern Hav = $(bakeLanguage Nothing "hav")

-- | Hawaiian.
pattern Haw :: Language
pattern Haw = $(bakeLanguage Nothing "haw")

-- | Southern Haida.
pattern Hax :: Language
pattern Hax = $(bakeLanguage Nothing "hax")

-- | Haya.
pattern Hay :: Language
pattern Hay = $(bakeLanguage Nothing "hay")

-- | Hazaragi.
pattern Haz :: Language
pattern Haz = $(bakeLanguage Nothing "haz")

-- | Hamba.
pattern Hba :: Language
pattern Hba = $(bakeLanguage Nothing "hba")

-- | Huba.
pattern Hbb :: Language
pattern Hbb = $(bakeLanguage Nothing "hbb")

-- | Heiban.
pattern Hbn :: Language
pattern Hbn = $(bakeLanguage Nothing "hbn")

-- | Ancient Hebrew.
pattern Hbo :: Language
pattern Hbo = $(bakeLanguage Nothing "hbo")

-- | Serbo-Croatian.
pattern Hbs :: Language
pattern Hbs = $(bakeLanguage Nothing "hbs")

-- | Habu.
pattern Hbu :: Language
pattern Hbu = $(bakeLanguage Nothing "hbu")

-- | Andaman Creole Hindi.
pattern Hca :: Language
pattern Hca = $(bakeLanguage Nothing "hca")

-- | Huichol.
pattern Hch :: Language
pattern Hch = $(bakeLanguage Nothing "hch")

-- | Northern Haida.
pattern Hdn :: Language
pattern Hdn = $(bakeLanguage Nothing "hdn")

-- | Honduras Sign Language.
pattern Hds :: Language
pattern Hds = $(bakeLanguage Nothing "hds")

-- | Hadiyya.
pattern Hdy :: Language
pattern Hdy = $(bakeLanguage Nothing "hdy")

-- | Northern Qiandong Miao.
pattern Hea :: Language
pattern Hea = $(bakeLanguage Nothing "hea")

-- | Herdé.
pattern Hed :: Language
pattern Hed = $(bakeLanguage Nothing "hed")

-- | Helong.
pattern Heg :: Language
pattern Heg = $(bakeLanguage Nothing "heg")

-- | Hehe.
pattern Heh :: Language
pattern Heh = $(bakeLanguage Nothing "heh")

-- | Heiltsuk.
pattern Hei :: Language
pattern Hei = $(bakeLanguage Nothing "hei")

-- | Hemba.
pattern Hem :: Language
pattern Hem = $(bakeLanguage Nothing "hem")

-- | Haiǁom.
pattern Hgm :: Language
pattern Hgm = $(bakeLanguage Nothing "hgm")

-- | Haigwai.
pattern Hgw :: Language
pattern Hgw = $(bakeLanguage Nothing "hgw")

-- | Hoia Hoia.
pattern Hhi :: Language
pattern Hhi = $(bakeLanguage Nothing "hhi")

-- | Kerak.
pattern Hhr :: Language
pattern Hhr = $(bakeLanguage Nothing "hhr")

-- | Hoyahoya.
pattern Hhy :: Language
pattern Hhy = $(bakeLanguage Nothing "hhy")

-- | Lamang.
pattern Hia :: Language
pattern Hia = $(bakeLanguage Nothing "hia")

-- | Hibito.
pattern Hib :: Language
pattern Hib = $(bakeLanguage Nothing "hib")

-- | Hidatsa.
pattern Hid :: Language
pattern Hid = $(bakeLanguage Nothing "hid")

-- | Fiji Hindi.
pattern Hif :: Language
pattern Hif = $(bakeLanguage Nothing "hif")

-- | Kamwe.
pattern Hig :: Language
pattern Hig = $(bakeLanguage Nothing "hig")

-- | Pamosu.
pattern Hih :: Language
pattern Hih = $(bakeLanguage Nothing "hih")

-- | Hinduri.
pattern Hii :: Language
pattern Hii = $(bakeLanguage Nothing "hii")

-- | Hijuk.
pattern Hij :: Language
pattern Hij = $(bakeLanguage Nothing "hij")

-- | Seit-Kaitetu.
pattern Hik :: Language
pattern Hik = $(bakeLanguage Nothing "hik")

-- | Hiligaynon.
pattern Hil :: Language
pattern Hil = $(bakeLanguage Nothing "hil")

-- | Tsoa.
pattern Hio :: Language
pattern Hio = $(bakeLanguage Nothing "hio")

-- | Himarimã.
pattern Hir :: Language
pattern Hir = $(bakeLanguage Nothing "hir")

-- | Hittite.
pattern Hit :: Language
pattern Hit = $(bakeLanguage Nothing "hit")

-- | Hiw.
pattern Hiw :: Language
pattern Hiw = $(bakeLanguage Nothing "hiw")

-- | Hixkaryána.
pattern Hix :: Language
pattern Hix = $(bakeLanguage Nothing "hix")

-- | Haji.
pattern Hji :: Language
pattern Hji = $(bakeLanguage Nothing "hji")

-- | Kahe.
pattern Hka :: Language
pattern Hka = $(bakeLanguage Nothing "hka")

-- | Hunde.
pattern Hke :: Language
pattern Hke = $(bakeLanguage Nothing "hke")

-- | Khah.
pattern Hkh :: Language
pattern Hkh = $(bakeLanguage Nothing "hkh")

-- | Hunjara-Kaina Ke.
pattern Hkk :: Language
pattern Hkk = $(bakeLanguage Nothing "hkk")

-- | Mel-Khaonh.
pattern Hkn :: Language
pattern Hkn = $(bakeLanguage Nothing "hkn")

-- | Hong Kong Sign Language.
pattern Hks :: Language
pattern Hks = $(bakeLanguage Nothing "hks")

-- | Halia.
pattern Hla :: Language
pattern Hla = $(bakeLanguage Nothing "hla")

-- | Halbi.
pattern Hlb :: Language
pattern Hlb = $(bakeLanguage Nothing "hlb")

-- | Halang Doan.
pattern Hld :: Language
pattern Hld = $(bakeLanguage Nothing "hld")

-- | Hlersu.
pattern Hle :: Language
pattern Hle = $(bakeLanguage Nothing "hle")

-- | Matu Chin.
pattern Hlt :: Language
pattern Hlt = $(bakeLanguage Nothing "hlt")

-- | Hieroglyphic Luwian.
pattern Hlu :: Language
pattern Hlu = $(bakeLanguage Nothing "hlu")

-- | Southern Mashan Hmong.
pattern Hma :: Language
pattern Hma = $(bakeLanguage Nothing "hma")

-- | Humburi Senni Songhay.
pattern Hmb :: Language
pattern Hmb = $(bakeLanguage Nothing "hmb")

-- | Central Huishui Hmong.
pattern Hmc :: Language
pattern Hmc = $(bakeLanguage Nothing "hmc")

-- | Large Flowery Miao.
pattern Hmd :: Language
pattern Hmd = $(bakeLanguage Nothing "hmd")

-- | Eastern Huishui Hmong.
pattern Hme :: Language
pattern Hme = $(bakeLanguage Nothing "hme")

-- | Hmong Don.
pattern Hmf :: Language
pattern Hmf = $(bakeLanguage Nothing "hmf")

-- | Southwestern Guiyang Hmong.
pattern Hmg :: Language
pattern Hmg = $(bakeLanguage Nothing "hmg")

-- | Southwestern Huishui Hmong.
pattern Hmh :: Language
pattern Hmh = $(bakeLanguage Nothing "hmh")

-- | Northern Huishui Hmong.
pattern Hmi :: Language
pattern Hmi = $(bakeLanguage Nothing "hmi")

-- | Ge.
pattern Hmj :: Language
pattern Hmj = $(bakeLanguage Nothing "hmj")

-- | Maek.
pattern Hmk :: Language
pattern Hmk = $(bakeLanguage Nothing "hmk")

-- | Luopohe Hmong.
pattern Hml :: Language
pattern Hml = $(bakeLanguage Nothing "hml")

-- | Central Mashan Hmong.
pattern Hmm :: Language
pattern Hmm = $(bakeLanguage Nothing "hmm")

-- | Hmong.
pattern Hmn :: Language
pattern Hmn = $(bakeLanguage Nothing "hmn")

-- | Northern Mashan Hmong.
pattern Hmp :: Language
pattern Hmp = $(bakeLanguage Nothing "hmp")

-- | Eastern Qiandong Miao.
pattern Hmq :: Language
pattern Hmq = $(bakeLanguage Nothing "hmq")

-- | Hmar.
pattern Hmr :: Language
pattern Hmr = $(bakeLanguage Nothing "hmr")

-- | Southern Qiandong Miao.
pattern Hms :: Language
pattern Hms = $(bakeLanguage Nothing "hms")

-- | Hamtai.
pattern Hmt :: Language
pattern Hmt = $(bakeLanguage Nothing "hmt")

-- | Hamap.
pattern Hmu :: Language
pattern Hmu = $(bakeLanguage Nothing "hmu")

-- | Hmong Dô.
pattern Hmv :: Language
pattern Hmv = $(bakeLanguage Nothing "hmv")

-- | Western Mashan Hmong.
pattern Hmw :: Language
pattern Hmw = $(bakeLanguage Nothing "hmw")

-- | Southern Guiyang Hmong.
pattern Hmy :: Language
pattern Hmy = $(bakeLanguage Nothing "hmy")

-- | Hmong Shua.
pattern Hmz :: Language
pattern Hmz = $(bakeLanguage Nothing "hmz")

-- | Mina (Cameroon).
pattern Hna :: Language
pattern Hna = $(bakeLanguage Nothing "hna")

-- | Southern Hindko.
pattern Hnd :: Language
pattern Hnd = $(bakeLanguage Nothing "hnd")

-- | Chhattisgarhi.
pattern Hne :: Language
pattern Hne = $(bakeLanguage Nothing "hne")

-- | Hungu.
pattern Hng :: Language
pattern Hng = $(bakeLanguage Nothing "hng")

-- | ǁAni.
pattern Hnh :: Language
pattern Hnh = $(bakeLanguage Nothing "hnh")

-- | Hani.
pattern Hni :: Language
pattern Hni = $(bakeLanguage Nothing "hni")

-- | Hmong Njua.
pattern Hnj :: Language
pattern Hnj = $(bakeLanguage Nothing "hnj")

-- | Hainanese.
pattern Hnm :: Language
pattern Hnm = $(bakeLanguage Nothing "hnm")

-- | Hanunoo.
pattern Hnn :: Language
pattern Hnn = $(bakeLanguage Nothing "hnn")

-- | Northern Hindko.
pattern Hno :: Language
pattern Hno = $(bakeLanguage Nothing "hno")

-- | Caribbean Hindustani.
pattern Hns :: Language
pattern Hns = $(bakeLanguage Nothing "hns")

-- | Hung.
pattern Hnu :: Language
pattern Hnu = $(bakeLanguage Nothing "hnu")

-- | Hoava.
pattern Hoa :: Language
pattern Hoa = $(bakeLanguage Nothing "hoa")

-- | Mari (Madang Province).
pattern Hob :: Language
pattern Hob = $(bakeLanguage Nothing "hob")

-- | Ho.
pattern Hoc :: Language
pattern Hoc = $(bakeLanguage Nothing "hoc")

-- | Holma.
pattern Hod :: Language
pattern Hod = $(bakeLanguage Nothing "hod")

-- | Horom.
pattern Hoe :: Language
pattern Hoe = $(bakeLanguage Nothing "hoe")

-- | Hobyót.
pattern Hoh :: Language
pattern Hoh = $(bakeLanguage Nothing "hoh")

-- | Holikachuk.
pattern Hoi :: Language
pattern Hoi = $(bakeLanguage Nothing "hoi")

-- | Hadothi.
pattern Hoj :: Language
pattern Hoj = $(bakeLanguage Nothing "hoj")

-- | Holu.
pattern Hol :: Language
pattern Hol = $(bakeLanguage Nothing "hol")

-- | Homa.
pattern Hom :: Language
pattern Hom = $(bakeLanguage Nothing "hom")

-- | Holoholo.
pattern Hoo :: Language
pattern Hoo = $(bakeLanguage Nothing "hoo")

-- | Hopi.
pattern Hop :: Language
pattern Hop = $(bakeLanguage Nothing "hop")

-- | Horo.
pattern Hor :: Language
pattern Hor = $(bakeLanguage Nothing "hor")

-- | Ho Chi Minh City Sign Language.
pattern Hos :: Language
pattern Hos = $(bakeLanguage Nothing "hos")

-- | Hote.
pattern Hot :: Language
pattern Hot = $(bakeLanguage Nothing "hot")

-- | Hovongan.
pattern Hov :: Language
pattern Hov = $(bakeLanguage Nothing "hov")

-- | Honi.
pattern How :: Language
pattern How = $(bakeLanguage Nothing "how")

-- | Holiya.
pattern Hoy :: Language
pattern Hoy = $(bakeLanguage Nothing "hoy")

-- | Hozo.
pattern Hoz :: Language
pattern Hoz = $(bakeLanguage Nothing "hoz")

-- | Hpon.
pattern Hpo :: Language
pattern Hpo = $(bakeLanguage Nothing "hpo")

-- | Hawai'i Sign Language (HSL).
pattern Hps :: Language
pattern Hps = $(bakeLanguage Nothing "hps")

-- | Hrangkhol.
pattern Hra :: Language
pattern Hra = $(bakeLanguage Nothing "hra")

-- | Niwer Mil.
pattern Hrc :: Language
pattern Hrc = $(bakeLanguage Nothing "hrc")

-- | Hre.
pattern Hre :: Language
pattern Hre = $(bakeLanguage Nothing "hre")

-- | Haruku.
pattern Hrk :: Language
pattern Hrk = $(bakeLanguage Nothing "hrk")

-- | Horned Miao.
pattern Hrm :: Language
pattern Hrm = $(bakeLanguage Nothing "hrm")

-- | Haroi.
pattern Hro :: Language
pattern Hro = $(bakeLanguage Nothing "hro")

-- | Nhirrpi.
pattern Hrp :: Language
pattern Hrp = $(bakeLanguage Nothing "hrp")

-- | Hértevin.
pattern Hrt :: Language
pattern Hrt = $(bakeLanguage Nothing "hrt")

-- | Hruso.
pattern Hru :: Language
pattern Hru = $(bakeLanguage Nothing "hru")

-- | Warwar Feni.
pattern Hrw :: Language
pattern Hrw = $(bakeLanguage Nothing "hrw")

-- | Hunsrik.
pattern Hrx :: Language
pattern Hrx = $(bakeLanguage Nothing "hrx")

-- | Harzani.
pattern Hrz :: Language
pattern Hrz = $(bakeLanguage Nothing "hrz")

-- | Upper Sorbian.
pattern Hsb :: Language
pattern Hsb = $(bakeLanguage Nothing "hsb")

-- | Hungarian Sign Language.
pattern Hsh :: Language
pattern Hsh = $(bakeLanguage Nothing "hsh")

-- | Hausa Sign Language.
pattern Hsl :: Language
pattern Hsl = $(bakeLanguage Nothing "hsl")

-- | Xiang Chinese.
pattern Hsn :: Language
pattern Hsn = $(bakeLanguage Nothing "hsn")

-- | Harsusi.
pattern Hss :: Language
pattern Hss = $(bakeLanguage Nothing "hss")

-- | Hoti.
pattern Hti :: Language
pattern Hti = $(bakeLanguage Nothing "hti")

-- | Minica Huitoto.
pattern Hto :: Language
pattern Hto = $(bakeLanguage Nothing "hto")

-- | Hadza.
pattern Hts :: Language
pattern Hts = $(bakeLanguage Nothing "hts")

-- | Hitu.
pattern Htu :: Language
pattern Htu = $(bakeLanguage Nothing "htu")

-- | Middle Hittite.
pattern Htx :: Language
pattern Htx = $(bakeLanguage Nothing "htx")

-- | Huambisa.
pattern Hub :: Language
pattern Hub = $(bakeLanguage Nothing "hub")

-- | ǂHua.
pattern Huc :: Language
pattern Huc = $(bakeLanguage Nothing "huc")

-- | Huaulu.
pattern Hud :: Language
pattern Hud = $(bakeLanguage Nothing "hud")

-- | San Francisco Del Mar Huave.
pattern Hue :: Language
pattern Hue = $(bakeLanguage Nothing "hue")

-- | Humene.
pattern Huf :: Language
pattern Huf = $(bakeLanguage Nothing "huf")

-- | Huachipaeri.
pattern Hug :: Language
pattern Hug = $(bakeLanguage Nothing "hug")

-- | Huilliche.
pattern Huh :: Language
pattern Huh = $(bakeLanguage Nothing "huh")

-- | Huli.
pattern Hui :: Language
pattern Hui = $(bakeLanguage Nothing "hui")

-- | Northern Guiyang Hmong.
pattern Huj :: Language
pattern Huj = $(bakeLanguage Nothing "huj")

-- | Hulung.
pattern Huk :: Language
pattern Huk = $(bakeLanguage Nothing "huk")

-- | Hula.
pattern Hul :: Language
pattern Hul = $(bakeLanguage Nothing "hul")

-- | Hungana.
pattern Hum :: Language
pattern Hum = $(bakeLanguage Nothing "hum")

-- | Hu.
pattern Huo :: Language
pattern Huo = $(bakeLanguage Nothing "huo")

-- | Hupa.
pattern Hup :: Language
pattern Hup = $(bakeLanguage Nothing "hup")

-- | Tsat.
pattern Huq :: Language
pattern Huq = $(bakeLanguage Nothing "huq")

-- | Halkomelem.
pattern Hur :: Language
pattern Hur = $(bakeLanguage Nothing "hur")

-- | Huastec.
pattern Hus :: Language
pattern Hus = $(bakeLanguage Nothing "hus")

-- | Humla.
pattern Hut :: Language
pattern Hut = $(bakeLanguage Nothing "hut")

-- | Murui Huitoto.
pattern Huu :: Language
pattern Huu = $(bakeLanguage Nothing "huu")

-- | San Mateo Del Mar Huave.
pattern Huv :: Language
pattern Huv = $(bakeLanguage Nothing "huv")

-- | Hukumina.
pattern Huw :: Language
pattern Huw = $(bakeLanguage Nothing "huw")

-- | Nüpode Huitoto.
pattern Hux :: Language
pattern Hux = $(bakeLanguage Nothing "hux")

-- | Hulaulá.
pattern Huy :: Language
pattern Huy = $(bakeLanguage Nothing "huy")

-- | Hunzib.
pattern Huz :: Language
pattern Huz = $(bakeLanguage Nothing "huz")

-- | Haitian Vodoun Culture Language.
pattern Hvc :: Language
pattern Hvc = $(bakeLanguage Nothing "hvc")

-- | San Dionisio Del Mar Huave.
pattern Hve :: Language
pattern Hve = $(bakeLanguage Nothing "hve")

-- | Haveke.
pattern Hvk :: Language
pattern Hvk = $(bakeLanguage Nothing "hvk")

-- | Sabu.
pattern Hvn :: Language
pattern Hvn = $(bakeLanguage Nothing "hvn")

-- | Santa María Del Mar Huave.
pattern Hvv :: Language
pattern Hvv = $(bakeLanguage Nothing "hvv")

-- | Wané.
pattern Hwa :: Language
pattern Hwa = $(bakeLanguage Nothing "hwa")

-- | Hawai'i Creole English.
pattern Hwc :: Language
pattern Hwc = $(bakeLanguage Nothing "hwc")

-- | Hwana.
pattern Hwo :: Language
pattern Hwo = $(bakeLanguage Nothing "hwo")

-- | Hya.
pattern Hya :: Language
pattern Hya = $(bakeLanguage Nothing "hya")

-- | Western Armenian.
pattern Hyw :: Language
pattern Hyw = $(bakeLanguage Nothing "hyw")

-- | Iaai.
pattern Iai :: Language
pattern Iai = $(bakeLanguage Nothing "iai")

-- | Iatmul.
pattern Ian :: Language
pattern Ian = $(bakeLanguage Nothing "ian")

-- | Purari.
pattern Iar :: Language
pattern Iar = $(bakeLanguage Nothing "iar")

-- | Iban.
pattern Iba :: Language
pattern Iba = $(bakeLanguage Nothing "iba")

-- | Ibibio.
pattern Ibb :: Language
pattern Ibb = $(bakeLanguage Nothing "ibb")

-- | Iwaidja.
pattern Ibd :: Language
pattern Ibd = $(bakeLanguage Nothing "ibd")

-- | Akpes.
pattern Ibe :: Language
pattern Ibe = $(bakeLanguage Nothing "ibe")

-- | Ibanag.
pattern Ibg :: Language
pattern Ibg = $(bakeLanguage Nothing "ibg")

-- | Bih.
pattern Ibh :: Language
pattern Ibh = $(bakeLanguage Nothing "ibh")

-- | Ibaloi.
pattern Ibl :: Language
pattern Ibl = $(bakeLanguage Nothing "ibl")

-- | Agoi.
pattern Ibm :: Language
pattern Ibm = $(bakeLanguage Nothing "ibm")

-- | Ibino.
pattern Ibn :: Language
pattern Ibn = $(bakeLanguage Nothing "ibn")

-- | Ibuoro.
pattern Ibr :: Language
pattern Ibr = $(bakeLanguage Nothing "ibr")

-- | Ibu.
pattern Ibu :: Language
pattern Ibu = $(bakeLanguage Nothing "ibu")

-- | Ibani.
pattern Iby :: Language
pattern Iby = $(bakeLanguage Nothing "iby")

-- | Ede Ica.
pattern Ica :: Language
pattern Ica = $(bakeLanguage Nothing "ica")

-- | Etkywan.
pattern Ich :: Language
pattern Ich = $(bakeLanguage Nothing "ich")

-- | Icelandic Sign Language.
pattern Icl :: Language
pattern Icl = $(bakeLanguage Nothing "icl")

-- | Islander Creole English.
pattern Icr :: Language
pattern Icr = $(bakeLanguage Nothing "icr")

-- | Idakho-Isukha-Tiriki.
pattern Ida :: Language
pattern Ida = $(bakeLanguage Nothing "ida")

-- | Indo-Portuguese.
pattern Idb :: Language
pattern Idb = $(bakeLanguage Nothing "idb")

-- | Idon.
pattern Idc :: Language
pattern Idc = $(bakeLanguage Nothing "idc")

-- | Ede Idaca.
pattern Idd :: Language
pattern Idd = $(bakeLanguage Nothing "idd")

-- | Idere.
pattern Ide :: Language
pattern Ide = $(bakeLanguage Nothing "ide")

-- | Idi.
pattern Idi :: Language
pattern Idi = $(bakeLanguage Nothing "idi")

-- | Indri.
pattern Idr :: Language
pattern Idr = $(bakeLanguage Nothing "idr")

-- | Idesa.
pattern Ids :: Language
pattern Ids = $(bakeLanguage Nothing "ids")

-- | Idaté.
pattern Idt :: Language
pattern Idt = $(bakeLanguage Nothing "idt")

-- | Idoma.
pattern Idu :: Language
pattern Idu = $(bakeLanguage Nothing "idu")

-- | Amganad Ifugao.
pattern Ifa :: Language
pattern Ifa = $(bakeLanguage Nothing "ifa")

-- | Batad Ifugao.
pattern Ifb :: Language
pattern Ifb = $(bakeLanguage Nothing "ifb")

-- | Ifè.
pattern Ife :: Language
pattern Ife = $(bakeLanguage Nothing "ife")

-- | Ifo.
pattern Iff :: Language
pattern Iff = $(bakeLanguage Nothing "iff")

-- | Tuwali Ifugao.
pattern Ifk :: Language
pattern Ifk = $(bakeLanguage Nothing "ifk")

-- | Teke-Fuumu.
pattern Ifm :: Language
pattern Ifm = $(bakeLanguage Nothing "ifm")

-- | Mayoyao Ifugao.
pattern Ifu :: Language
pattern Ifu = $(bakeLanguage Nothing "ifu")

-- | Keley-I Kallahan.
pattern Ify :: Language
pattern Ify = $(bakeLanguage Nothing "ify")

-- | Ebira.
pattern Igb :: Language
pattern Igb = $(bakeLanguage Nothing "igb")

-- | Igede.
pattern Ige :: Language
pattern Ige = $(bakeLanguage Nothing "ige")

-- | Igana.
pattern Igg :: Language
pattern Igg = $(bakeLanguage Nothing "igg")

-- | Igala.
pattern Igl :: Language
pattern Igl = $(bakeLanguage Nothing "igl")

-- | Kanggape.
pattern Igm :: Language
pattern Igm = $(bakeLanguage Nothing "igm")

-- | Ignaciano.
pattern Ign :: Language
pattern Ign = $(bakeLanguage Nothing "ign")

-- | Isebe.
pattern Igo :: Language
pattern Igo = $(bakeLanguage Nothing "igo")

-- | Interglossa.
pattern Igs :: Language
pattern Igs = $(bakeLanguage Nothing "igs")

-- | Igwe.
pattern Igw :: Language
pattern Igw = $(bakeLanguage Nothing "igw")

-- | Iha Based Pidgin.
pattern Ihb :: Language
pattern Ihb = $(bakeLanguage Nothing "ihb")

-- | Ihievbe.
pattern Ihi :: Language
pattern Ihi = $(bakeLanguage Nothing "ihi")

-- | Iha.
pattern Ihp :: Language
pattern Ihp = $(bakeLanguage Nothing "ihp")

-- | Bidhawal.
pattern Ihw :: Language
pattern Ihw = $(bakeLanguage Nothing "ihw")

-- | Thiin.
pattern Iin :: Language
pattern Iin = $(bakeLanguage Nothing "iin")

-- | Izon.
pattern Ijc :: Language
pattern Ijc = $(bakeLanguage Nothing "ijc")

-- | Biseni.
pattern Ije :: Language
pattern Ije = $(bakeLanguage Nothing "ije")

-- | Ede Ije.
pattern Ijj :: Language
pattern Ijj = $(bakeLanguage Nothing "ijj")

-- | Kalabari.
pattern Ijn :: Language
pattern Ijn = $(bakeLanguage Nothing "ijn")

-- | Southeast Ijo.
pattern Ijs :: Language
pattern Ijs = $(bakeLanguage Nothing "ijs")

-- | Eastern Canadian Inuktitut.
pattern Ike :: Language
pattern Ike = $(bakeLanguage Nothing "ike")

-- | Ikhin-Arokho.
pattern Ikh :: Language
pattern Ikh = $(bakeLanguage Nothing "ikh")

-- | Iko.
pattern Iki :: Language
pattern Iki = $(bakeLanguage Nothing "iki")

-- | Ika.
pattern Ikk :: Language
pattern Ikk = $(bakeLanguage Nothing "ikk")

-- | Ikulu.
pattern Ikl :: Language
pattern Ikl = $(bakeLanguage Nothing "ikl")

-- | Olulumo-Ikom.
pattern Iko :: Language
pattern Iko = $(bakeLanguage Nothing "iko")

-- | Ikpeshi.
pattern Ikp :: Language
pattern Ikp = $(bakeLanguage Nothing "ikp")

-- | Ikaranggal.
pattern Ikr :: Language
pattern Ikr = $(bakeLanguage Nothing "ikr")

-- | Inuit Sign Language.
pattern Iks :: Language
pattern Iks = $(bakeLanguage Nothing "iks")

-- | Inuinnaqtun.
pattern Ikt :: Language
pattern Ikt = $(bakeLanguage Nothing "ikt")

-- | Iku-Gora-Ankwa.
pattern Ikv :: Language
pattern Ikv = $(bakeLanguage Nothing "ikv")

-- | Ikwere.
pattern Ikw :: Language
pattern Ikw = $(bakeLanguage Nothing "ikw")

-- | Ik.
pattern Ikx :: Language
pattern Ikx = $(bakeLanguage Nothing "ikx")

-- | Ikizu.
pattern Ikz :: Language
pattern Ikz = $(bakeLanguage Nothing "ikz")

-- | Ile Ape.
pattern Ila :: Language
pattern Ila = $(bakeLanguage Nothing "ila")

-- | Ila.
pattern Ilb :: Language
pattern Ilb = $(bakeLanguage Nothing "ilb")

-- | Garig-Ilgar.
pattern Ilg :: Language
pattern Ilg = $(bakeLanguage Nothing "ilg")

-- | Ili Turki.
pattern Ili :: Language
pattern Ili = $(bakeLanguage Nothing "ili")

-- | Ilongot.
pattern Ilk :: Language
pattern Ilk = $(bakeLanguage Nothing "ilk")

-- | Iranun (Malaysia).
pattern Ilm :: Language
pattern Ilm = $(bakeLanguage Nothing "ilm")

-- | Iloko.
pattern Ilo :: Language
pattern Ilo = $(bakeLanguage Nothing "ilo")

-- | Iranun (Philippines).
pattern Ilp :: Language
pattern Ilp = $(bakeLanguage Nothing "ilp")

-- | International Sign.
pattern Ils :: Language
pattern Ils = $(bakeLanguage Nothing "ils")

-- | Ili'uun.
pattern Ilu :: Language
pattern Ilu = $(bakeLanguage Nothing "ilu")

-- | Ilue.
pattern Ilv :: Language
pattern Ilv = $(bakeLanguage Nothing "ilv")

-- | Mala Malasar.
pattern Ima :: Language
pattern Ima = $(bakeLanguage Nothing "ima")

-- | Anamgura.
pattern Imi :: Language
pattern Imi = $(bakeLanguage Nothing "imi")

-- | Miluk.
pattern Iml :: Language
pattern Iml = $(bakeLanguage Nothing "iml")

-- | Imonda.
pattern Imn :: Language
pattern Imn = $(bakeLanguage Nothing "imn")

-- | Imbongu.
pattern Imo :: Language
pattern Imo = $(bakeLanguage Nothing "imo")

-- | Imroing.
pattern Imr :: Language
pattern Imr = $(bakeLanguage Nothing "imr")

-- | Marsian.
pattern Ims :: Language
pattern Ims = $(bakeLanguage Nothing "ims")

-- | Imotong.
pattern Imt :: Language
pattern Imt = $(bakeLanguage Nothing "imt")

-- | Milyan.
pattern Imy :: Language
pattern Imy = $(bakeLanguage Nothing "imy")

-- | Inga.
pattern Inb :: Language
pattern Inb = $(bakeLanguage Nothing "inb")

-- | Degexit'an.
pattern Ing :: Language
pattern Ing = $(bakeLanguage Nothing "ing")

-- | Ingush.
pattern Inh :: Language
pattern Inh = $(bakeLanguage Nothing "inh")

-- | Jungle Inga.
pattern Inj :: Language
pattern Inj = $(bakeLanguage Nothing "inj")

-- | Indonesian Sign Language.
pattern Inl :: Language
pattern Inl = $(bakeLanguage Nothing "inl")

-- | Minaean.
pattern Inm :: Language
pattern Inm = $(bakeLanguage Nothing "inm")

-- | Isinai.
pattern Inn :: Language
pattern Inn = $(bakeLanguage Nothing "inn")

-- | Inoke-Yate.
pattern Ino :: Language
pattern Ino = $(bakeLanguage Nothing "ino")

-- | Iñapari.
pattern Inp :: Language
pattern Inp = $(bakeLanguage Nothing "inp")

-- | Indian Sign Language.
pattern Ins :: Language
pattern Ins = $(bakeLanguage Nothing "ins")

-- | Intha.
pattern Int :: Language
pattern Int = $(bakeLanguage Nothing "int")

-- | Ineseño.
pattern Inz :: Language
pattern Inz = $(bakeLanguage Nothing "inz")

-- | Inor.
pattern Ior :: Language
pattern Ior = $(bakeLanguage Nothing "ior")

-- | Tuma-Irumu.
pattern Iou :: Language
pattern Iou = $(bakeLanguage Nothing "iou")

-- | Iowa-Oto.
pattern Iow :: Language
pattern Iow = $(bakeLanguage Nothing "iow")

-- | Ipili.
pattern Ipi :: Language
pattern Ipi = $(bakeLanguage Nothing "ipi")

-- | Ipiko.
pattern Ipo :: Language
pattern Ipo = $(bakeLanguage Nothing "ipo")

-- | Iquito.
pattern Iqu :: Language
pattern Iqu = $(bakeLanguage Nothing "iqu")

-- | Ikwo.
pattern Iqw :: Language
pattern Iqw = $(bakeLanguage Nothing "iqw")

-- | Iresim.
pattern Ire :: Language
pattern Ire = $(bakeLanguage Nothing "ire")

-- | Irarutu.
pattern Irh :: Language
pattern Irh = $(bakeLanguage Nothing "irh")

-- | Rigwe.
pattern Iri :: Language
pattern Iri = $(bakeLanguage Nothing "iri")

-- | Iraqw.
pattern Irk :: Language
pattern Irk = $(bakeLanguage Nothing "irk")

-- | Irántxe.
pattern Irn :: Language
pattern Irn = $(bakeLanguage Nothing "irn")

-- | Ir.
pattern Irr :: Language
pattern Irr = $(bakeLanguage Nothing "irr")

-- | Irula.
pattern Iru :: Language
pattern Iru = $(bakeLanguage Nothing "iru")

-- | Kamberau.
pattern Irx :: Language
pattern Irx = $(bakeLanguage Nothing "irx")

-- | Iraya.
pattern Iry :: Language
pattern Iry = $(bakeLanguage Nothing "iry")

-- | Isabi.
pattern Isa :: Language
pattern Isa = $(bakeLanguage Nothing "isa")

-- | Isconahua.
pattern Isc :: Language
pattern Isc = $(bakeLanguage Nothing "isc")

-- | Isnag.
pattern Isd :: Language
pattern Isd = $(bakeLanguage Nothing "isd")

-- | Italian Sign Language.
pattern Ise :: Language
pattern Ise = $(bakeLanguage Nothing "ise")

-- | Irish Sign Language.
pattern Isg :: Language
pattern Isg = $(bakeLanguage Nothing "isg")

-- | Esan.
pattern Ish :: Language
pattern Ish = $(bakeLanguage Nothing "ish")

-- | Nkem-Nkum.
pattern Isi :: Language
pattern Isi = $(bakeLanguage Nothing "isi")

-- | Ishkashimi.
pattern Isk :: Language
pattern Isk = $(bakeLanguage Nothing "isk")

-- | Masimasi.
pattern Ism :: Language
pattern Ism = $(bakeLanguage Nothing "ism")

-- | Isanzu.
pattern Isn :: Language
pattern Isn = $(bakeLanguage Nothing "isn")

-- | Isoko.
pattern Iso :: Language
pattern Iso = $(bakeLanguage Nothing "iso")

-- | Israeli Sign Language.
pattern Isr :: Language
pattern Isr = $(bakeLanguage Nothing "isr")

-- | Istriot.
pattern Ist :: Language
pattern Ist = $(bakeLanguage Nothing "ist")

-- | Isu.
pattern Isu :: Language
pattern Isu = $(bakeLanguage Nothing "isu")

-- | Interslavic.
pattern Isv :: Language
pattern Isv = $(bakeLanguage Nothing "isv")

-- | Binongan Itneg.
pattern Itb :: Language
pattern Itb = $(bakeLanguage Nothing "itb")

-- | Southern Tidung.
pattern Itd :: Language
pattern Itd = $(bakeLanguage Nothing "itd")

-- | Itene.
pattern Ite :: Language
pattern Ite = $(bakeLanguage Nothing "ite")

-- | Inlaod Itneg.
pattern Iti :: Language
pattern Iti = $(bakeLanguage Nothing "iti")

-- | Judeo-Italian.
pattern Itk :: Language
pattern Itk = $(bakeLanguage Nothing "itk")

-- | Itelmen.
pattern Itl :: Language
pattern Itl = $(bakeLanguage Nothing "itl")

-- | Itu Mbon Uzo.
pattern Itm :: Language
pattern Itm = $(bakeLanguage Nothing "itm")

-- | Itonama.
pattern Ito :: Language
pattern Ito = $(bakeLanguage Nothing "ito")

-- | Iteri.
pattern Itr :: Language
pattern Itr = $(bakeLanguage Nothing "itr")

-- | Isekiri.
pattern Its :: Language
pattern Its = $(bakeLanguage Nothing "its")

-- | Maeng Itneg.
pattern Itt :: Language
pattern Itt = $(bakeLanguage Nothing "itt")

-- | Itawit.
pattern Itv :: Language
pattern Itv = $(bakeLanguage Nothing "itv")

-- | Ito.
pattern Itw :: Language
pattern Itw = $(bakeLanguage Nothing "itw")

-- | Itik.
pattern Itx :: Language
pattern Itx = $(bakeLanguage Nothing "itx")

-- | Moyadan Itneg.
pattern Ity :: Language
pattern Ity = $(bakeLanguage Nothing "ity")

-- | Itzá.
pattern Itz :: Language
pattern Itz = $(bakeLanguage Nothing "itz")

-- | Iu Mien.
pattern Ium :: Language
pattern Ium = $(bakeLanguage Nothing "ium")

-- | Ibatan.
pattern Ivb :: Language
pattern Ivb = $(bakeLanguage Nothing "ivb")

-- | Ivatan.
pattern Ivv :: Language
pattern Ivv = $(bakeLanguage Nothing "ivv")

-- | I-Wak.
pattern Iwk :: Language
pattern Iwk = $(bakeLanguage Nothing "iwk")

-- | Iwam.
pattern Iwm :: Language
pattern Iwm = $(bakeLanguage Nothing "iwm")

-- | Iwur.
pattern Iwo :: Language
pattern Iwo = $(bakeLanguage Nothing "iwo")

-- | Sepik Iwam.
pattern Iws :: Language
pattern Iws = $(bakeLanguage Nothing "iws")

-- | Ixcatec.
pattern Ixc :: Language
pattern Ixc = $(bakeLanguage Nothing "ixc")

-- | Ixil.
pattern Ixl :: Language
pattern Ixl = $(bakeLanguage Nothing "ixl")

-- | Iyayu.
pattern Iya :: Language
pattern Iya = $(bakeLanguage Nothing "iya")

-- | Mesaka.
pattern Iyo :: Language
pattern Iyo = $(bakeLanguage Nothing "iyo")

-- | Yaka (Congo).
pattern Iyx :: Language
pattern Iyx = $(bakeLanguage Nothing "iyx")

-- | Ingrian.
pattern Izh :: Language
pattern Izh = $(bakeLanguage Nothing "izh")

-- | Kizamani.
pattern Izm :: Language
pattern Izm = $(bakeLanguage Nothing "izm")

-- | Izere.
pattern Izr :: Language
pattern Izr = $(bakeLanguage Nothing "izr")

-- | Izii.
pattern Izz :: Language
pattern Izz = $(bakeLanguage Nothing "izz")

-- | Jamamadí.
pattern Jaa :: Language
pattern Jaa = $(bakeLanguage Nothing "jaa")

-- | Hyam.
pattern Jab :: Language
pattern Jab = $(bakeLanguage Nothing "jab")

-- | Popti'.
pattern Jac :: Language
pattern Jac = $(bakeLanguage Nothing "jac")

-- | Jahanka.
pattern Jad :: Language
pattern Jad = $(bakeLanguage Nothing "jad")

-- | Yabem.
pattern Jae :: Language
pattern Jae = $(bakeLanguage Nothing "jae")

-- | Jara.
pattern Jaf :: Language
pattern Jaf = $(bakeLanguage Nothing "jaf")

-- | Jah Hut.
pattern Jah :: Language
pattern Jah = $(bakeLanguage Nothing "jah")

-- | Zazao.
pattern Jaj :: Language
pattern Jaj = $(bakeLanguage Nothing "jaj")

-- | Jakun.
pattern Jak :: Language
pattern Jak = $(bakeLanguage Nothing "jak")

-- | Yalahatan.
pattern Jal :: Language
pattern Jal = $(bakeLanguage Nothing "jal")

-- | Jamaican Creole English.
pattern Jam :: Language
pattern Jam = $(bakeLanguage Nothing "jam")

-- | Jandai.
pattern Jan :: Language
pattern Jan = $(bakeLanguage Nothing "jan")

-- | Yanyuwa.
pattern Jao :: Language
pattern Jao = $(bakeLanguage Nothing "jao")

-- | Yaqay.
pattern Jaq :: Language
pattern Jaq = $(bakeLanguage Nothing "jaq")

-- | New Caledonian Javanese.
pattern Jas :: Language
pattern Jas = $(bakeLanguage Nothing "jas")

-- | Jakati.
pattern Jat :: Language
pattern Jat = $(bakeLanguage Nothing "jat")

-- | Yaur.
pattern Jau :: Language
pattern Jau = $(bakeLanguage Nothing "jau")

-- | Jambi Malay.
pattern Jax :: Language
pattern Jax = $(bakeLanguage Nothing "jax")

-- | Yan-nhangu.
pattern Jay :: Language
pattern Jay = $(bakeLanguage Nothing "jay")

-- | Jawe.
pattern Jaz :: Language
pattern Jaz = $(bakeLanguage Nothing "jaz")

-- | Judeo-Berber.
pattern Jbe :: Language
pattern Jbe = $(bakeLanguage Nothing "jbe")

-- | Badjiri.
pattern Jbi :: Language
pattern Jbi = $(bakeLanguage Nothing "jbi")

-- | Arandai.
pattern Jbj :: Language
pattern Jbj = $(bakeLanguage Nothing "jbj")

-- | Barikewa.
pattern Jbk :: Language
pattern Jbk = $(bakeLanguage Nothing "jbk")

-- | Bijim.
pattern Jbm :: Language
pattern Jbm = $(bakeLanguage Nothing "jbm")

-- | Nafusi.
pattern Jbn :: Language
pattern Jbn = $(bakeLanguage Nothing "jbn")

-- | Lojban.
pattern Jbo :: Language
pattern Jbo = $(bakeLanguage Nothing "jbo")

-- | Jofotek-Bromnya.
pattern Jbr :: Language
pattern Jbr = $(bakeLanguage Nothing "jbr")

-- | Jabutí.
pattern Jbt :: Language
pattern Jbt = $(bakeLanguage Nothing "jbt")

-- | Jukun Takum.
pattern Jbu :: Language
pattern Jbu = $(bakeLanguage Nothing "jbu")

-- | Yawijibaya.
pattern Jbw :: Language
pattern Jbw = $(bakeLanguage Nothing "jbw")

-- | Jamaican Language Sign Language.
pattern Jcs :: Language
pattern Jcs = $(bakeLanguage Nothing "jcs")

-- | Krymchak.
pattern Jct :: Language
pattern Jct = $(bakeLanguage Nothing "jct")

-- | Jad.
pattern Jda :: Language
pattern Jda = $(bakeLanguage Nothing "jda")

-- | Jadgali.
pattern Jdg :: Language
pattern Jdg = $(bakeLanguage Nothing "jdg")

-- | Judeo-Tat.
pattern Jdt :: Language
pattern Jdt = $(bakeLanguage Nothing "jdt")

-- | Jebero.
pattern Jeb :: Language
pattern Jeb = $(bakeLanguage Nothing "jeb")

-- | Jerung.
pattern Jee :: Language
pattern Jee = $(bakeLanguage Nothing "jee")

-- | Jeh.
pattern Jeh :: Language
pattern Jeh = $(bakeLanguage Nothing "jeh")

-- | Yei.
pattern Jei :: Language
pattern Jei = $(bakeLanguage Nothing "jei")

-- | Jeri Kuo.
pattern Jek :: Language
pattern Jek = $(bakeLanguage Nothing "jek")

-- | Yelmek.
pattern Jel :: Language
pattern Jel = $(bakeLanguage Nothing "jel")

-- | Dza.
pattern Jen :: Language
pattern Jen = $(bakeLanguage Nothing "jen")

-- | Jere.
pattern Jer :: Language
pattern Jer = $(bakeLanguage Nothing "jer")

-- | Manem.
pattern Jet :: Language
pattern Jet = $(bakeLanguage Nothing "jet")

-- | Jonkor Bourmataguil.
pattern Jeu :: Language
pattern Jeu = $(bakeLanguage Nothing "jeu")

-- | Ngbee.
pattern Jgb :: Language
pattern Jgb = $(bakeLanguage Nothing "jgb")

-- | Judeo-Georgian.
pattern Jge :: Language
pattern Jge = $(bakeLanguage Nothing "jge")

-- | Gwak.
pattern Jgk :: Language
pattern Jgk = $(bakeLanguage Nothing "jgk")

-- | Ngomba.
pattern Jgo :: Language
pattern Jgo = $(bakeLanguage Nothing "jgo")

-- | Jehai.
pattern Jhi :: Language
pattern Jhi = $(bakeLanguage Nothing "jhi")

-- | Jhankot Sign Language.
pattern Jhs :: Language
pattern Jhs = $(bakeLanguage Nothing "jhs")

-- | Jina.
pattern Jia :: Language
pattern Jia = $(bakeLanguage Nothing "jia")

-- | Jibu.
pattern Jib :: Language
pattern Jib = $(bakeLanguage Nothing "jib")

-- | Tol.
pattern Jic :: Language
pattern Jic = $(bakeLanguage Nothing "jic")

-- | Bu (Kaduna State).
pattern Jid :: Language
pattern Jid = $(bakeLanguage Nothing "jid")

-- | Jilbe.
pattern Jie :: Language
pattern Jie = $(bakeLanguage Nothing "jie")

-- | Jingulu.
pattern Jig :: Language
pattern Jig = $(bakeLanguage Nothing "jig")

-- | sTodsde.
pattern Jih :: Language
pattern Jih = $(bakeLanguage Nothing "jih")

-- | Jiiddu.
pattern Jii :: Language
pattern Jii = $(bakeLanguage Nothing "jii")

-- | Jilim.
pattern Jil :: Language
pattern Jil = $(bakeLanguage Nothing "jil")

-- | Jimi (Cameroon).
pattern Jim :: Language
pattern Jim = $(bakeLanguage Nothing "jim")

-- | Jiamao.
pattern Jio :: Language
pattern Jio = $(bakeLanguage Nothing "jio")

-- | Guanyinqiao.
pattern Jiq :: Language
pattern Jiq = $(bakeLanguage Nothing "jiq")

-- | Jita.
pattern Jit :: Language
pattern Jit = $(bakeLanguage Nothing "jit")

-- | Youle Jinuo.
pattern Jiu :: Language
pattern Jiu = $(bakeLanguage Nothing "jiu")

-- | Shuar.
pattern Jiv :: Language
pattern Jiv = $(bakeLanguage Nothing "jiv")

-- | Buyuan Jinuo.
pattern Jiy :: Language
pattern Jiy = $(bakeLanguage Nothing "jiy")

-- | Jejueo.
pattern Jje :: Language
pattern Jje = $(bakeLanguage Nothing "jje")

-- | Bankal.
pattern Jjr :: Language
pattern Jjr = $(bakeLanguage Nothing "jjr")

-- | Kaera.
pattern Jka :: Language
pattern Jka = $(bakeLanguage Nothing "jka")

-- | Mobwa Karen.
pattern Jkm :: Language
pattern Jkm = $(bakeLanguage Nothing "jkm")

-- | Kubo.
pattern Jko :: Language
pattern Jko = $(bakeLanguage Nothing "jko")

-- | Paku Karen.
pattern Jkp :: Language
pattern Jkp = $(bakeLanguage Nothing "jkp")

-- | Koro (India).
pattern Jkr :: Language
pattern Jkr = $(bakeLanguage Nothing "jkr")

-- | Amami Koniya Sign Language.
pattern Jks :: Language
pattern Jks = $(bakeLanguage Nothing "jks")

-- | Labir.
pattern Jku :: Language
pattern Jku = $(bakeLanguage Nothing "jku")

-- | Ngile.
pattern Jle :: Language
pattern Jle = $(bakeLanguage Nothing "jle")

-- | Jamaican Sign Language.
pattern Jls :: Language
pattern Jls = $(bakeLanguage Nothing "jls")

-- | Dima.
pattern Jma :: Language
pattern Jma = $(bakeLanguage Nothing "jma")

-- | Zumbun.
pattern Jmb :: Language
pattern Jmb = $(bakeLanguage Nothing "jmb")

-- | Machame.
pattern Jmc :: Language
pattern Jmc = $(bakeLanguage Nothing "jmc")

-- | Yamdena.
pattern Jmd :: Language
pattern Jmd = $(bakeLanguage Nothing "jmd")

-- | Jimi (Nigeria).
pattern Jmi :: Language
pattern Jmi = $(bakeLanguage Nothing "jmi")

-- | Jumli.
pattern Jml :: Language
pattern Jml = $(bakeLanguage Nothing "jml")

-- | Makuri Naga.
pattern Jmn :: Language
pattern Jmn = $(bakeLanguage Nothing "jmn")

-- | Kamara.
pattern Jmr :: Language
pattern Jmr = $(bakeLanguage Nothing "jmr")

-- | Mashi (Nigeria).
pattern Jms :: Language
pattern Jms = $(bakeLanguage Nothing "jms")

-- | Mouwase.
pattern Jmw :: Language
pattern Jmw = $(bakeLanguage Nothing "jmw")

-- | Western Juxtlahuaca Mixtec.
pattern Jmx :: Language
pattern Jmx = $(bakeLanguage Nothing "jmx")

-- | Jangshung.
pattern Jna :: Language
pattern Jna = $(bakeLanguage Nothing "jna")

-- | Jandavra.
pattern Jnd :: Language
pattern Jnd = $(bakeLanguage Nothing "jnd")

-- | Yangman.
pattern Jng :: Language
pattern Jng = $(bakeLanguage Nothing "jng")

-- | Janji.
pattern Jni :: Language
pattern Jni = $(bakeLanguage Nothing "jni")

-- | Yemsa.
pattern Jnj :: Language
pattern Jnj = $(bakeLanguage Nothing "jnj")

-- | Rawat.
pattern Jnl :: Language
pattern Jnl = $(bakeLanguage Nothing "jnl")

-- | Jaunsari.
pattern Jns :: Language
pattern Jns = $(bakeLanguage Nothing "jns")

-- | Joba.
pattern Job :: Language
pattern Job = $(bakeLanguage Nothing "job")

-- | Wojenaka.
pattern Jod :: Language
pattern Jod = $(bakeLanguage Nothing "jod")

-- | Jogi.
pattern Jog :: Language
pattern Jog = $(bakeLanguage Nothing "jog")

-- | Jorá.
pattern Jor :: Language
pattern Jor = $(bakeLanguage Nothing "jor")

-- | Jordanian Sign Language.
pattern Jos :: Language
pattern Jos = $(bakeLanguage Nothing "jos")

-- | Jowulu.
pattern Jow :: Language
pattern Jow = $(bakeLanguage Nothing "jow")

-- | Jewish Palestinian Aramaic.
pattern Jpa :: Language
pattern Jpa = $(bakeLanguage Nothing "jpa")

-- | Judeo-Persian.
pattern Jpr :: Language
pattern Jpr = $(bakeLanguage Nothing "jpr")

-- | Jaqaru.
pattern Jqr :: Language
pattern Jqr = $(bakeLanguage Nothing "jqr")

-- | Jarai.
pattern Jra :: Language
pattern Jra = $(bakeLanguage Nothing "jra")

-- | Judeo-Arabic.
pattern Jrb :: Language
pattern Jrb = $(bakeLanguage Nothing "jrb")

-- | Jiru.
pattern Jrr :: Language
pattern Jrr = $(bakeLanguage Nothing "jrr")

-- | Jakattoe.
pattern Jrt :: Language
pattern Jrt = $(bakeLanguage Nothing "jrt")

-- | Japrería.
pattern Jru :: Language
pattern Jru = $(bakeLanguage Nothing "jru")

-- | Japanese Sign Language.
pattern Jsl :: Language
pattern Jsl = $(bakeLanguage Nothing "jsl")

-- | Júma.
pattern Jua :: Language
pattern Jua = $(bakeLanguage Nothing "jua")

-- | Wannu.
pattern Jub :: Language
pattern Jub = $(bakeLanguage Nothing "jub")

-- | Jurchen.
pattern Juc :: Language
pattern Juc = $(bakeLanguage Nothing "juc")

-- | Worodougou.
pattern Jud :: Language
pattern Jud = $(bakeLanguage Nothing "jud")

-- | Hõne.
pattern Juh :: Language
pattern Juh = $(bakeLanguage Nothing "juh")

-- | Ngadjuri.
pattern Jui :: Language
pattern Jui = $(bakeLanguage Nothing "jui")

-- | Wapan.
pattern Juk :: Language
pattern Juk = $(bakeLanguage Nothing "juk")

-- | Jirel.
pattern Jul :: Language
pattern Jul = $(bakeLanguage Nothing "jul")

-- | Jumjum.
pattern Jum :: Language
pattern Jum = $(bakeLanguage Nothing "jum")

-- | Juang.
pattern Jun :: Language
pattern Jun = $(bakeLanguage Nothing "jun")

-- | Jiba.
pattern Juo :: Language
pattern Juo = $(bakeLanguage Nothing "juo")

-- | Hupdë.
pattern Jup :: Language
pattern Jup = $(bakeLanguage Nothing "jup")

-- | Jurúna.
pattern Jur :: Language
pattern Jur = $(bakeLanguage Nothing "jur")

-- | Jumla Sign Language.
pattern Jus :: Language
pattern Jus = $(bakeLanguage Nothing "jus")

-- | Jutish.
pattern Jut :: Language
pattern Jut = $(bakeLanguage Nothing "jut")

-- | Ju.
pattern Juu :: Language
pattern Juu = $(bakeLanguage Nothing "juu")

-- | Wãpha.
pattern Juw :: Language
pattern Juw = $(bakeLanguage Nothing "juw")

-- | Juray.
pattern Juy :: Language
pattern Juy = $(bakeLanguage Nothing "juy")

-- | Javindo.
pattern Jvd :: Language
pattern Jvd = $(bakeLanguage Nothing "jvd")

-- | Caribbean Javanese.
pattern Jvn :: Language
pattern Jvn = $(bakeLanguage Nothing "jvn")

-- | Jwira-Pepesa.
pattern Jwi :: Language
pattern Jwi = $(bakeLanguage Nothing "jwi")

-- | Jiarong.
pattern Jya :: Language
pattern Jya = $(bakeLanguage Nothing "jya")

-- | Judeo-Yemeni Arabic.
pattern Jye :: Language
pattern Jye = $(bakeLanguage Nothing "jye")

-- | Jaya.
pattern Jyy :: Language
pattern Jyy = $(bakeLanguage Nothing "jyy")

-- | Kara-Kalpak.
pattern Kaa :: Language
pattern Kaa = $(bakeLanguage Nothing "kaa")

-- | Kabyle.
pattern Kab :: Language
pattern Kab = $(bakeLanguage Nothing "kab")

-- | Kachin.
pattern Kac :: Language
pattern Kac = $(bakeLanguage Nothing "kac")

-- | Adara.
pattern Kad :: Language
pattern Kad = $(bakeLanguage Nothing "kad")

-- | Ketangalan.
pattern Kae :: Language
pattern Kae = $(bakeLanguage Nothing "kae")

-- | Katso.
pattern Kaf :: Language
pattern Kaf = $(bakeLanguage Nothing "kaf")

-- | Kajaman.
pattern Kag :: Language
pattern Kag = $(bakeLanguage Nothing "kag")

-- | Kara (Central African Republic).
pattern Kah :: Language
pattern Kah = $(bakeLanguage Nothing "kah")

-- | Karekare.
pattern Kai :: Language
pattern Kai = $(bakeLanguage Nothing "kai")

-- | Jju.
pattern Kaj :: Language
pattern Kaj = $(bakeLanguage Nothing "kaj")

-- | Kalanguya.
pattern Kak :: Language
pattern Kak = $(bakeLanguage Nothing "kak")

-- | Kamba (Kenya).
pattern Kam :: Language
pattern Kam = $(bakeLanguage Nothing "kam")

-- | Xaasongaxango.
pattern Kao :: Language
pattern Kao = $(bakeLanguage Nothing "kao")

-- | Bezhta.
pattern Kap :: Language
pattern Kap = $(bakeLanguage Nothing "kap")

-- | Capanahua.
pattern Kaq :: Language
pattern Kaq = $(bakeLanguage Nothing "kaq")

-- | Katukína.
pattern Kav :: Language
pattern Kav = $(bakeLanguage Nothing "kav")

-- | Kawi.
pattern Kaw :: Language
pattern Kaw = $(bakeLanguage Nothing "kaw")

-- | Kao.
pattern Kax :: Language
pattern Kax = $(bakeLanguage Nothing "kax")

-- | Kamayurá.
pattern Kay :: Language
pattern Kay = $(bakeLanguage Nothing "kay")

-- | Kalarko.
pattern Kba :: Language
pattern Kba = $(bakeLanguage Nothing "kba")

-- | Kaxuiâna.
pattern Kbb :: Language
pattern Kbb = $(bakeLanguage Nothing "kbb")

-- | Kadiwéu.
pattern Kbc :: Language
pattern Kbc = $(bakeLanguage Nothing "kbc")

-- | Kabardian.
pattern Kbd :: Language
pattern Kbd = $(bakeLanguage Nothing "kbd")

-- | Kanju.
pattern Kbe :: Language
pattern Kbe = $(bakeLanguage Nothing "kbe")

-- | Khamba.
pattern Kbg :: Language
pattern Kbg = $(bakeLanguage Nothing "kbg")

-- | Camsá.
pattern Kbh :: Language
pattern Kbh = $(bakeLanguage Nothing "kbh")

-- | Kaptiau.
pattern Kbi :: Language
pattern Kbi = $(bakeLanguage Nothing "kbi")

-- | Kari.
pattern Kbj :: Language
pattern Kbj = $(bakeLanguage Nothing "kbj")

-- | Grass Koiari.
pattern Kbk :: Language
pattern Kbk = $(bakeLanguage Nothing "kbk")

-- | Kanembu.
pattern Kbl :: Language
pattern Kbl = $(bakeLanguage Nothing "kbl")

-- | Iwal.
pattern Kbm :: Language
pattern Kbm = $(bakeLanguage Nothing "kbm")

-- | Kare (Central African Republic).
pattern Kbn :: Language
pattern Kbn = $(bakeLanguage Nothing "kbn")

-- | Keliko.
pattern Kbo :: Language
pattern Kbo = $(bakeLanguage Nothing "kbo")

-- | Kabiyè.
pattern Kbp :: Language
pattern Kbp = $(bakeLanguage Nothing "kbp")

-- | Kamano.
pattern Kbq :: Language
pattern Kbq = $(bakeLanguage Nothing "kbq")

-- | Kafa.
pattern Kbr :: Language
pattern Kbr = $(bakeLanguage Nothing "kbr")

-- | Kande.
pattern Kbs :: Language
pattern Kbs = $(bakeLanguage Nothing "kbs")

-- | Abadi.
pattern Kbt :: Language
pattern Kbt = $(bakeLanguage Nothing "kbt")

-- | Kabutra.
pattern Kbu :: Language
pattern Kbu = $(bakeLanguage Nothing "kbu")

-- | Dera (Indonesia).
pattern Kbv :: Language
pattern Kbv = $(bakeLanguage Nothing "kbv")

-- | Kaiep.
pattern Kbw :: Language
pattern Kbw = $(bakeLanguage Nothing "kbw")

-- | Ap Ma.
pattern Kbx :: Language
pattern Kbx = $(bakeLanguage Nothing "kbx")

-- | Manga Kanuri.
pattern Kby :: Language
pattern Kby = $(bakeLanguage Nothing "kby")

-- | Duhwa.
pattern Kbz :: Language
pattern Kbz = $(bakeLanguage Nothing "kbz")

-- | Khanty.
pattern Kca :: Language
pattern Kca = $(bakeLanguage Nothing "kca")

-- | Kawacha.
pattern Kcb :: Language
pattern Kcb = $(bakeLanguage Nothing "kcb")

-- | Lubila.
pattern Kcc :: Language
pattern Kcc = $(bakeLanguage Nothing "kcc")

-- | Ngkâlmpw Kanum.
pattern Kcd :: Language
pattern Kcd = $(bakeLanguage Nothing "kcd")

-- | Kaivi.
pattern Kce :: Language
pattern Kce = $(bakeLanguage Nothing "kce")

-- | Ukaan.
pattern Kcf :: Language
pattern Kcf = $(bakeLanguage Nothing "kcf")

-- | Tyap.
pattern Kcg :: Language
pattern Kcg = $(bakeLanguage Nothing "kcg")

-- | Vono.
pattern Kch :: Language
pattern Kch = $(bakeLanguage Nothing "kch")

-- | Ngyian.
pattern Kci :: Language
pattern Kci = $(bakeLanguage Nothing "kci")

-- | Kobiana.
pattern Kcj :: Language
pattern Kcj = $(bakeLanguage Nothing "kcj")

-- | Kalanga.
pattern Kck :: Language
pattern Kck = $(bakeLanguage Nothing "kck")

-- | Kela (Papua New Guinea).
pattern Kcl :: Language
pattern Kcl = $(bakeLanguage Nothing "kcl")

-- | Gula (Central African Republic).
pattern Kcm :: Language
pattern Kcm = $(bakeLanguage Nothing "kcm")

-- | Nubi.
pattern Kcn :: Language
pattern Kcn = $(bakeLanguage Nothing "kcn")

-- | Kinalakna.
pattern Kco :: Language
pattern Kco = $(bakeLanguage Nothing "kco")

-- | Kanga.
pattern Kcp :: Language
pattern Kcp = $(bakeLanguage Nothing "kcp")

-- | Kamo.
pattern Kcq :: Language
pattern Kcq = $(bakeLanguage Nothing "kcq")

-- | Katla.
pattern Kcr :: Language
pattern Kcr = $(bakeLanguage Nothing "kcr")

-- | Koenoem.
pattern Kcs :: Language
pattern Kcs = $(bakeLanguage Nothing "kcs")

-- | Kaian.
pattern Kct :: Language
pattern Kct = $(bakeLanguage Nothing "kct")

-- | Kami (Tanzania).
pattern Kcu :: Language
pattern Kcu = $(bakeLanguage Nothing "kcu")

-- | Kete.
pattern Kcv :: Language
pattern Kcv = $(bakeLanguage Nothing "kcv")

-- | Kabwari.
pattern Kcw :: Language
pattern Kcw = $(bakeLanguage Nothing "kcw")

-- | Kachama-Ganjule.
pattern Kcx :: Language
pattern Kcx = $(bakeLanguage Nothing "kcx")

-- | Korandje.
pattern Kcy :: Language
pattern Kcy = $(bakeLanguage Nothing "kcy")

-- | Konongo.
pattern Kcz :: Language
pattern Kcz = $(bakeLanguage Nothing "kcz")

-- | Worimi.
pattern Kda :: Language
pattern Kda = $(bakeLanguage Nothing "kda")

-- | Kutu.
pattern Kdc :: Language
pattern Kdc = $(bakeLanguage Nothing "kdc")

-- | Yankunytjatjara.
pattern Kdd :: Language
pattern Kdd = $(bakeLanguage Nothing "kdd")

-- | Makonde.
pattern Kde :: Language
pattern Kde = $(bakeLanguage Nothing "kde")

-- | Mamusi.
pattern Kdf :: Language
pattern Kdf = $(bakeLanguage Nothing "kdf")

-- | Seba.
pattern Kdg :: Language
pattern Kdg = $(bakeLanguage Nothing "kdg")

-- | Tem.
pattern Kdh :: Language
pattern Kdh = $(bakeLanguage Nothing "kdh")

-- | Kumam.
pattern Kdi :: Language
pattern Kdi = $(bakeLanguage Nothing "kdi")

-- | Karamojong.
pattern Kdj :: Language
pattern Kdj = $(bakeLanguage Nothing "kdj")

-- | Numèè.
pattern Kdk :: Language
pattern Kdk = $(bakeLanguage Nothing "kdk")

-- | Tsikimba.
pattern Kdl :: Language
pattern Kdl = $(bakeLanguage Nothing "kdl")

-- | Kagoma.
pattern Kdm :: Language
pattern Kdm = $(bakeLanguage Nothing "kdm")

-- | Kunda.
pattern Kdn :: Language
pattern Kdn = $(bakeLanguage Nothing "kdn")

-- | Kaningdon-Nindem.
pattern Kdp :: Language
pattern Kdp = $(bakeLanguage Nothing "kdp")

-- | Koch.
pattern Kdq :: Language
pattern Kdq = $(bakeLanguage Nothing "kdq")

-- | Karaim.
pattern Kdr :: Language
pattern Kdr = $(bakeLanguage Nothing "kdr")

-- | Kuy.
pattern Kdt :: Language
pattern Kdt = $(bakeLanguage Nothing "kdt")

-- | Kadaru.
pattern Kdu :: Language
pattern Kdu = $(bakeLanguage Nothing "kdu")

-- | Koneraw.
pattern Kdw :: Language
pattern Kdw = $(bakeLanguage Nothing "kdw")

-- | Kam.
pattern Kdx :: Language
pattern Kdx = $(bakeLanguage Nothing "kdx")

-- | Keder.
pattern Kdy :: Language
pattern Kdy = $(bakeLanguage Nothing "kdy")

-- | Kwaja.
pattern Kdz :: Language
pattern Kdz = $(bakeLanguage Nothing "kdz")

-- | Kabuverdianu.
pattern Kea :: Language
pattern Kea = $(bakeLanguage Nothing "kea")

-- | Kélé.
pattern Keb :: Language
pattern Keb = $(bakeLanguage Nothing "keb")

-- | Keiga.
pattern Kec :: Language
pattern Kec = $(bakeLanguage Nothing "kec")

-- | Kerewe.
pattern Ked :: Language
pattern Ked = $(bakeLanguage Nothing "ked")

-- | Eastern Keres.
pattern Kee :: Language
pattern Kee = $(bakeLanguage Nothing "kee")

-- | Kpessi.
pattern Kef :: Language
pattern Kef = $(bakeLanguage Nothing "kef")

-- | Tese.
pattern Keg :: Language
pattern Keg = $(bakeLanguage Nothing "keg")

-- | Keak.
pattern Keh :: Language
pattern Keh = $(bakeLanguage Nothing "keh")

-- | Kei.
pattern Kei :: Language
pattern Kei = $(bakeLanguage Nothing "kei")

-- | Kadar.
pattern Kej :: Language
pattern Kej = $(bakeLanguage Nothing "kej")

-- | Kekchí.
pattern Kek :: Language
pattern Kek = $(bakeLanguage Nothing "kek")

-- | Kela (Democratic Republic of Congo).
pattern Kel :: Language
pattern Kel = $(bakeLanguage Nothing "kel")

-- | Kemak.
pattern Kem :: Language
pattern Kem = $(bakeLanguage Nothing "kem")

-- | Kenyang.
pattern Ken :: Language
pattern Ken = $(bakeLanguage Nothing "ken")

-- | Kakwa.
pattern Keo :: Language
pattern Keo = $(bakeLanguage Nothing "keo")

-- | Kaikadi.
pattern Kep :: Language
pattern Kep = $(bakeLanguage Nothing "kep")

-- | Kamar.
pattern Keq :: Language
pattern Keq = $(bakeLanguage Nothing "keq")

-- | Kera.
pattern Ker :: Language
pattern Ker = $(bakeLanguage Nothing "ker")

-- | Kugbo.
pattern Kes :: Language
pattern Kes = $(bakeLanguage Nothing "kes")

-- | Ket.
pattern Ket :: Language
pattern Ket = $(bakeLanguage Nothing "ket")

-- | Akebu.
pattern Keu :: Language
pattern Keu = $(bakeLanguage Nothing "keu")

-- | Kanikkaran.
pattern Kev :: Language
pattern Kev = $(bakeLanguage Nothing "kev")

-- | West Kewa.
pattern Kew :: Language
pattern Kew = $(bakeLanguage Nothing "kew")

-- | Kukna.
pattern Kex :: Language
pattern Kex = $(bakeLanguage Nothing "kex")

-- | Kupia.
pattern Key :: Language
pattern Key = $(bakeLanguage Nothing "key")

-- | Kukele.
pattern Kez :: Language
pattern Kez = $(bakeLanguage Nothing "kez")

-- | Kodava.
pattern Kfa :: Language
pattern Kfa = $(bakeLanguage Nothing "kfa")

-- | Northwestern Kolami.
pattern Kfb :: Language
pattern Kfb = $(bakeLanguage Nothing "kfb")

-- | Konda-Dora.
pattern Kfc :: Language
pattern Kfc = $(bakeLanguage Nothing "kfc")

-- | Korra Koraga.
pattern Kfd :: Language
pattern Kfd = $(bakeLanguage Nothing "kfd")

-- | Kota (India).
pattern Kfe :: Language
pattern Kfe = $(bakeLanguage Nothing "kfe")

-- | Koya.
pattern Kff :: Language
pattern Kff = $(bakeLanguage Nothing "kff")

-- | Kudiya.
pattern Kfg :: Language
pattern Kfg = $(bakeLanguage Nothing "kfg")

-- | Kurichiya.
pattern Kfh :: Language
pattern Kfh = $(bakeLanguage Nothing "kfh")

-- | Kannada Kurumba.
pattern Kfi :: Language
pattern Kfi = $(bakeLanguage Nothing "kfi")

-- | Kemiehua.
pattern Kfj :: Language
pattern Kfj = $(bakeLanguage Nothing "kfj")

-- | Kinnauri.
pattern Kfk :: Language
pattern Kfk = $(bakeLanguage Nothing "kfk")

-- | Kung.
pattern Kfl :: Language
pattern Kfl = $(bakeLanguage Nothing "kfl")

-- | Khunsari.
pattern Kfm :: Language
pattern Kfm = $(bakeLanguage Nothing "kfm")

-- | Kuk.
pattern Kfn :: Language
pattern Kfn = $(bakeLanguage Nothing "kfn")

-- | Koro (Côte d'Ivoire).
pattern Kfo :: Language
pattern Kfo = $(bakeLanguage Nothing "kfo")

-- | Korwa.
pattern Kfp :: Language
pattern Kfp = $(bakeLanguage Nothing "kfp")

-- | Korku.
pattern Kfq :: Language
pattern Kfq = $(bakeLanguage Nothing "kfq")

-- | Kachhi.
pattern Kfr :: Language
pattern Kfr = $(bakeLanguage Nothing "kfr")

-- | Bilaspuri.
pattern Kfs :: Language
pattern Kfs = $(bakeLanguage Nothing "kfs")

-- | Kanjari.
pattern Kft :: Language
pattern Kft = $(bakeLanguage Nothing "kft")

-- | Katkari.
pattern Kfu :: Language
pattern Kfu = $(bakeLanguage Nothing "kfu")

-- | Kurmukar.
pattern Kfv :: Language
pattern Kfv = $(bakeLanguage Nothing "kfv")

-- | Kharam Naga.
pattern Kfw :: Language
pattern Kfw = $(bakeLanguage Nothing "kfw")

-- | Kullu Pahari.
pattern Kfx :: Language
pattern Kfx = $(bakeLanguage Nothing "kfx")

-- | Kumaoni.
pattern Kfy :: Language
pattern Kfy = $(bakeLanguage Nothing "kfy")

-- | Koromfé.
pattern Kfz :: Language
pattern Kfz = $(bakeLanguage Nothing "kfz")

-- | Koyaga.
pattern Kga :: Language
pattern Kga = $(bakeLanguage Nothing "kga")

-- | Kawe.
pattern Kgb :: Language
pattern Kgb = $(bakeLanguage Nothing "kgb")

-- | Komering.
pattern Kge :: Language
pattern Kge = $(bakeLanguage Nothing "kge")

-- | Kube.
pattern Kgf :: Language
pattern Kgf = $(bakeLanguage Nothing "kgf")

-- | Kusunda.
pattern Kgg :: Language
pattern Kgg = $(bakeLanguage Nothing "kgg")

-- | Selangor Sign Language.
pattern Kgi :: Language
pattern Kgi = $(bakeLanguage Nothing "kgi")

-- | Gamale Kham.
pattern Kgj :: Language
pattern Kgj = $(bakeLanguage Nothing "kgj")

-- | Kaiwá.
pattern Kgk :: Language
pattern Kgk = $(bakeLanguage Nothing "kgk")

-- | Kunggari.
pattern Kgl :: Language
pattern Kgl = $(bakeLanguage Nothing "kgl")

-- | Karingani.
pattern Kgn :: Language
pattern Kgn = $(bakeLanguage Nothing "kgn")

-- | Krongo.
pattern Kgo :: Language
pattern Kgo = $(bakeLanguage Nothing "kgo")

-- | Kaingang.
pattern Kgp :: Language
pattern Kgp = $(bakeLanguage Nothing "kgp")

-- | Kamoro.
pattern Kgq :: Language
pattern Kgq = $(bakeLanguage Nothing "kgq")

-- | Abun.
pattern Kgr :: Language
pattern Kgr = $(bakeLanguage Nothing "kgr")

-- | Kumbainggar.
pattern Kgs :: Language
pattern Kgs = $(bakeLanguage Nothing "kgs")

-- | Somyev.
pattern Kgt :: Language
pattern Kgt = $(bakeLanguage Nothing "kgt")

-- | Kobol.
pattern Kgu :: Language
pattern Kgu = $(bakeLanguage Nothing "kgu")

-- | Karas.
pattern Kgv :: Language
pattern Kgv = $(bakeLanguage Nothing "kgv")

-- | Karon Dori.
pattern Kgw :: Language
pattern Kgw = $(bakeLanguage Nothing "kgw")

-- | Kamaru.
pattern Kgx :: Language
pattern Kgx = $(bakeLanguage Nothing "kgx")

-- | Kyerung.
pattern Kgy :: Language
pattern Kgy = $(bakeLanguage Nothing "kgy")

-- | Khasi.
pattern Kha :: Language
pattern Kha = $(bakeLanguage Nothing "kha")

-- | Lü.
pattern Khb :: Language
pattern Khb = $(bakeLanguage Nothing "khb")

-- | Tukang Besi North.
pattern Khc :: Language
pattern Khc = $(bakeLanguage Nothing "khc")

-- | Bädi Kanum.
pattern Khd :: Language
pattern Khd = $(bakeLanguage Nothing "khd")

-- | Korowai.
pattern Khe :: Language
pattern Khe = $(bakeLanguage Nothing "khe")

-- | Khuen.
pattern Khf :: Language
pattern Khf = $(bakeLanguage Nothing "khf")

-- | Khams Tibetan.
pattern Khg :: Language
pattern Khg = $(bakeLanguage Nothing "khg")

-- | Kehu.
pattern Khh :: Language
pattern Khh = $(bakeLanguage Nothing "khh")

-- | Kuturmi.
pattern Khj :: Language
pattern Khj = $(bakeLanguage Nothing "khj")

-- | Halh Mongolian.
pattern Khk :: Language
pattern Khk = $(bakeLanguage Nothing "khk")

-- | Lusi.
pattern Khl :: Language
pattern Khl = $(bakeLanguage Nothing "khl")

-- | Khandesi.
pattern Khn :: Language
pattern Khn = $(bakeLanguage Nothing "khn")

-- | Khotanese.
pattern Kho :: Language
pattern Kho = $(bakeLanguage Nothing "kho")

-- | Kapori.
pattern Khp :: Language
pattern Khp = $(bakeLanguage Nothing "khp")

-- | Koyra Chiini Songhay.
pattern Khq :: Language
pattern Khq = $(bakeLanguage Nothing "khq")

-- | Kharia.
pattern Khr :: Language
pattern Khr = $(bakeLanguage Nothing "khr")

-- | Kasua.
pattern Khs :: Language
pattern Khs = $(bakeLanguage Nothing "khs")

-- | Khamti.
pattern Kht :: Language
pattern Kht = $(bakeLanguage Nothing "kht")

-- | Nkhumbi.
pattern Khu :: Language
pattern Khu = $(bakeLanguage Nothing "khu")

-- | Khvarshi.
pattern Khv :: Language
pattern Khv = $(bakeLanguage Nothing "khv")

-- | Khowar.
pattern Khw :: Language
pattern Khw = $(bakeLanguage Nothing "khw")

-- | Kanu.
pattern Khx :: Language
pattern Khx = $(bakeLanguage Nothing "khx")

-- | Kele (Democratic Republic of Congo).
pattern Khy :: Language
pattern Khy = $(bakeLanguage Nothing "khy")

-- | Keapara.
pattern Khz :: Language
pattern Khz = $(bakeLanguage Nothing "khz")

-- | Kim.
pattern Kia :: Language
pattern Kia = $(bakeLanguage Nothing "kia")

-- | Koalib.
pattern Kib :: Language
pattern Kib = $(bakeLanguage Nothing "kib")

-- | Kickapoo.
pattern Kic :: Language
pattern Kic = $(bakeLanguage Nothing "kic")

-- | Koshin.
pattern Kid :: Language
pattern Kid = $(bakeLanguage Nothing "kid")

-- | Kibet.
pattern Kie :: Language
pattern Kie = $(bakeLanguage Nothing "kie")

-- | Eastern Parbate Kham.
pattern Kif :: Language
pattern Kif = $(bakeLanguage Nothing "kif")

-- | Kimaama.
pattern Kig :: Language
pattern Kig = $(bakeLanguage Nothing "kig")

-- | Kilmeri.
pattern Kih :: Language
pattern Kih = $(bakeLanguage Nothing "kih")

-- | Kitsai.
pattern Kii :: Language
pattern Kii = $(bakeLanguage Nothing "kii")

-- | Kilivila.
pattern Kij :: Language
pattern Kij = $(bakeLanguage Nothing "kij")

-- | Kariya.
pattern Kil :: Language
pattern Kil = $(bakeLanguage Nothing "kil")

-- | Karagas.
pattern Kim :: Language
pattern Kim = $(bakeLanguage Nothing "kim")

-- | Kiowa.
pattern Kio :: Language
pattern Kio = $(bakeLanguage Nothing "kio")

-- | Sheshi Kham.
pattern Kip :: Language
pattern Kip = $(bakeLanguage Nothing "kip")

-- | Kosadle.
pattern Kiq :: Language
pattern Kiq = $(bakeLanguage Nothing "kiq")

-- | Kis.
pattern Kis :: Language
pattern Kis = $(bakeLanguage Nothing "kis")

-- | Agob.
pattern Kit :: Language
pattern Kit = $(bakeLanguage Nothing "kit")

-- | Kirmanjki (individual language).
pattern Kiu :: Language
pattern Kiu = $(bakeLanguage Nothing "kiu")

-- | Kimbu.
pattern Kiv :: Language
pattern Kiv = $(bakeLanguage Nothing "kiv")

-- | Northeast Kiwai.
pattern Kiw :: Language
pattern Kiw = $(bakeLanguage Nothing "kiw")

-- | Khiamniungan Naga.
pattern Kix :: Language
pattern Kix = $(bakeLanguage Nothing "kix")

-- | Kirikiri.
pattern Kiy :: Language
pattern Kiy = $(bakeLanguage Nothing "kiy")

-- | Kisi.
pattern Kiz :: Language
pattern Kiz = $(bakeLanguage Nothing "kiz")

-- | Mlap.
pattern Kja :: Language
pattern Kja = $(bakeLanguage Nothing "kja")

-- | Q\'anjob\'al.
pattern Kjb :: Language
pattern Kjb = $(bakeLanguage Nothing "kjb")

-- | Coastal Konjo.
pattern Kjc :: Language
pattern Kjc = $(bakeLanguage Nothing "kjc")

-- | Southern Kiwai.
pattern Kjd :: Language
pattern Kjd = $(bakeLanguage Nothing "kjd")

-- | Kisar.
pattern Kje :: Language
pattern Kje = $(bakeLanguage Nothing "kje")

-- | Khmu.
pattern Kjg :: Language
pattern Kjg = $(bakeLanguage Nothing "kjg")

-- | Khakas.
pattern Kjh :: Language
pattern Kjh = $(bakeLanguage Nothing "kjh")

-- | Zabana.
pattern Kji :: Language
pattern Kji = $(bakeLanguage Nothing "kji")

-- | Khinalugh.
pattern Kjj :: Language
pattern Kjj = $(bakeLanguage Nothing "kjj")

-- | Highland Konjo.
pattern Kjk :: Language
pattern Kjk = $(bakeLanguage Nothing "kjk")

-- | Western Parbate Kham.
pattern Kjl :: Language
pattern Kjl = $(bakeLanguage Nothing "kjl")

-- | Kháng.
pattern Kjm :: Language
pattern Kjm = $(bakeLanguage Nothing "kjm")

-- | Kunjen.
pattern Kjn :: Language
pattern Kjn = $(bakeLanguage Nothing "kjn")

-- | Kinnauri Pahari.
pattern Kjo :: Language
pattern Kjo = $(bakeLanguage Nothing "kjo")

-- | Pwo Eastern Karen.
pattern Kjp :: Language
pattern Kjp = $(bakeLanguage Nothing "kjp")

-- | Western Keres.
pattern Kjq :: Language
pattern Kjq = $(bakeLanguage Nothing "kjq")

-- | Kurudu.
pattern Kjr :: Language
pattern Kjr = $(bakeLanguage Nothing "kjr")

-- | East Kewa.
pattern Kjs :: Language
pattern Kjs = $(bakeLanguage Nothing "kjs")

-- | Phrae Pwo Karen.
pattern Kjt :: Language
pattern Kjt = $(bakeLanguage Nothing "kjt")

-- | Kashaya.
pattern Kju :: Language
pattern Kju = $(bakeLanguage Nothing "kju")

-- | Kaikavian Literary Language.
pattern Kjv :: Language
pattern Kjv = $(bakeLanguage Nothing "kjv")

-- | Ramopa.
pattern Kjx :: Language
pattern Kjx = $(bakeLanguage Nothing "kjx")

-- | Erave.
pattern Kjy :: Language
pattern Kjy = $(bakeLanguage Nothing "kjy")

-- | Bumthangkha.
pattern Kjz :: Language
pattern Kjz = $(bakeLanguage Nothing "kjz")

-- | Kakanda.
pattern Kka :: Language
pattern Kka = $(bakeLanguage Nothing "kka")

-- | Kwerisa.
pattern Kkb :: Language
pattern Kkb = $(bakeLanguage Nothing "kkb")

-- | Odoodee.
pattern Kkc :: Language
pattern Kkc = $(bakeLanguage Nothing "kkc")

-- | Kinuku.
pattern Kkd :: Language
pattern Kkd = $(bakeLanguage Nothing "kkd")

-- | Kakabe.
pattern Kke :: Language
pattern Kke = $(bakeLanguage Nothing "kke")

-- | Kalaktang Monpa.
pattern Kkf :: Language
pattern Kkf = $(bakeLanguage Nothing "kkf")

-- | Mabaka Valley Kalinga.
pattern Kkg :: Language
pattern Kkg = $(bakeLanguage Nothing "kkg")

-- | Khün.
pattern Kkh :: Language
pattern Kkh = $(bakeLanguage Nothing "kkh")

-- | Kagulu.
pattern Kki :: Language
pattern Kki = $(bakeLanguage Nothing "kki")

-- | Kako.
pattern Kkj :: Language
pattern Kkj = $(bakeLanguage Nothing "kkj")

-- | Kokota.
pattern Kkk :: Language
pattern Kkk = $(bakeLanguage Nothing "kkk")

-- | Kosarek Yale.
pattern Kkl :: Language
pattern Kkl = $(bakeLanguage Nothing "kkl")

-- | Kiong.
pattern Kkm :: Language
pattern Kkm = $(bakeLanguage Nothing "kkm")

-- | Kon Keu.
pattern Kkn :: Language
pattern Kkn = $(bakeLanguage Nothing "kkn")

-- | Karko.
pattern Kko :: Language
pattern Kko = $(bakeLanguage Nothing "kko")

-- | Gugubera.
pattern Kkp :: Language
pattern Kkp = $(bakeLanguage Nothing "kkp")

-- | Kaeku.
pattern Kkq :: Language
pattern Kkq = $(bakeLanguage Nothing "kkq")

-- | Kir-Balar.
pattern Kkr :: Language
pattern Kkr = $(bakeLanguage Nothing "kkr")

-- | Giiwo.
pattern Kks :: Language
pattern Kks = $(bakeLanguage Nothing "kks")

-- | Koi.
pattern Kkt :: Language
pattern Kkt = $(bakeLanguage Nothing "kkt")

-- | Tumi.
pattern Kku :: Language
pattern Kku = $(bakeLanguage Nothing "kku")

-- | Kangean.
pattern Kkv :: Language
pattern Kkv = $(bakeLanguage Nothing "kkv")

-- | Teke-Kukuya.
pattern Kkw :: Language
pattern Kkw = $(bakeLanguage Nothing "kkw")

-- | Kohin.
pattern Kkx :: Language
pattern Kkx = $(bakeLanguage Nothing "kkx")

-- | Guugu Yimidhirr.
pattern Kky :: Language
pattern Kky = $(bakeLanguage Nothing "kky")

-- | Kaska.
pattern Kkz :: Language
pattern Kkz = $(bakeLanguage Nothing "kkz")

-- | Klamath-Modoc.
pattern Kla :: Language
pattern Kla = $(bakeLanguage Nothing "kla")

-- | Kiliwa.
pattern Klb :: Language
pattern Klb = $(bakeLanguage Nothing "klb")

-- | Kolbila.
pattern Klc :: Language
pattern Klc = $(bakeLanguage Nothing "klc")

-- | Gamilaraay.
pattern Kld :: Language
pattern Kld = $(bakeLanguage Nothing "kld")

-- | Kulung (Nepal).
pattern Kle :: Language
pattern Kle = $(bakeLanguage Nothing "kle")

-- | Kendeje.
pattern Klf :: Language
pattern Klf = $(bakeLanguage Nothing "klf")

-- | Tagakaulo.
pattern Klg :: Language
pattern Klg = $(bakeLanguage Nothing "klg")

-- | Weliki.
pattern Klh :: Language
pattern Klh = $(bakeLanguage Nothing "klh")

-- | Kalumpang.
pattern Kli :: Language
pattern Kli = $(bakeLanguage Nothing "kli")

-- | Khalaj.
pattern Klj :: Language
pattern Klj = $(bakeLanguage Nothing "klj")

-- | Kono (Nigeria).
pattern Klk :: Language
pattern Klk = $(bakeLanguage Nothing "klk")

-- | Kagan Kalagan.
pattern Kll :: Language
pattern Kll = $(bakeLanguage Nothing "kll")

-- | Migum.
pattern Klm :: Language
pattern Klm = $(bakeLanguage Nothing "klm")

-- | Kalenjin.
pattern Kln :: Language
pattern Kln = $(bakeLanguage Nothing "kln")

-- | Kapya.
pattern Klo :: Language
pattern Klo = $(bakeLanguage Nothing "klo")

-- | Kamasa.
pattern Klp :: Language
pattern Klp = $(bakeLanguage Nothing "klp")

-- | Rumu.
pattern Klq :: Language
pattern Klq = $(bakeLanguage Nothing "klq")

-- | Khaling.
pattern Klr :: Language
pattern Klr = $(bakeLanguage Nothing "klr")

-- | Kalasha.
pattern Kls :: Language
pattern Kls = $(bakeLanguage Nothing "kls")

-- | Nukna.
pattern Klt :: Language
pattern Klt = $(bakeLanguage Nothing "klt")

-- | Klao.
pattern Klu :: Language
pattern Klu = $(bakeLanguage Nothing "klu")

-- | Maskelynes.
pattern Klv :: Language
pattern Klv = $(bakeLanguage Nothing "klv")

-- | Tado.
pattern Klw :: Language
pattern Klw = $(bakeLanguage Nothing "klw")

-- | Koluwawa.
pattern Klx :: Language
pattern Klx = $(bakeLanguage Nothing "klx")

-- | Kalao.
pattern Kly :: Language
pattern Kly = $(bakeLanguage Nothing "kly")

-- | Kabola.
pattern Klz :: Language
pattern Klz = $(bakeLanguage Nothing "klz")

-- | Konni.
pattern Kma :: Language
pattern Kma = $(bakeLanguage Nothing "kma")

-- | Kimbundu.
pattern Kmb :: Language
pattern Kmb = $(bakeLanguage Nothing "kmb")

-- | Southern Dong.
pattern Kmc :: Language
pattern Kmc = $(bakeLanguage Nothing "kmc")

-- | Majukayang Kalinga.
pattern Kmd :: Language
pattern Kmd = $(bakeLanguage Nothing "kmd")

-- | Bakole.
pattern Kme :: Language
pattern Kme = $(bakeLanguage Nothing "kme")

-- | Kare (Papua New Guinea).
pattern Kmf :: Language
pattern Kmf = $(bakeLanguage Nothing "kmf")

-- | Kâte.
pattern Kmg :: Language
pattern Kmg = $(bakeLanguage Nothing "kmg")

-- | Kalam.
pattern Kmh :: Language
pattern Kmh = $(bakeLanguage Nothing "kmh")

-- | Kami (Nigeria).
pattern Kmi :: Language
pattern Kmi = $(bakeLanguage Nothing "kmi")

-- | Kumarbhag Paharia.
pattern Kmj :: Language
pattern Kmj = $(bakeLanguage Nothing "kmj")

-- | Limos Kalinga.
pattern Kmk :: Language
pattern Kmk = $(bakeLanguage Nothing "kmk")

-- | Tanudan Kalinga.
pattern Kml :: Language
pattern Kml = $(bakeLanguage Nothing "kml")

-- | Kom (India).
pattern Kmm :: Language
pattern Kmm = $(bakeLanguage Nothing "kmm")

-- | Awtuw.
pattern Kmn :: Language
pattern Kmn = $(bakeLanguage Nothing "kmn")

-- | Kwoma.
pattern Kmo :: Language
pattern Kmo = $(bakeLanguage Nothing "kmo")

-- | Gimme.
pattern Kmp :: Language
pattern Kmp = $(bakeLanguage Nothing "kmp")

-- | Kwama.
pattern Kmq :: Language
pattern Kmq = $(bakeLanguage Nothing "kmq")

-- | Northern Kurdish.
pattern Kmr :: Language
pattern Kmr = $(bakeLanguage Nothing "kmr")

-- | Kamasau.
pattern Kms :: Language
pattern Kms = $(bakeLanguage Nothing "kms")

-- | Kemtuik.
pattern Kmt :: Language
pattern Kmt = $(bakeLanguage Nothing "kmt")

-- | Kanite.
pattern Kmu :: Language
pattern Kmu = $(bakeLanguage Nothing "kmu")

-- | Karipúna Creole French.
pattern Kmv :: Language
pattern Kmv = $(bakeLanguage Nothing "kmv")

-- | Komo (Democratic Republic of Congo).
pattern Kmw :: Language
pattern Kmw = $(bakeLanguage Nothing "kmw")

-- | Waboda.
pattern Kmx :: Language
pattern Kmx = $(bakeLanguage Nothing "kmx")

-- | Koma.
pattern Kmy :: Language
pattern Kmy = $(bakeLanguage Nothing "kmy")

-- | Khorasani Turkish.
pattern Kmz :: Language
pattern Kmz = $(bakeLanguage Nothing "kmz")

-- | Dera (Nigeria).
pattern Kna :: Language
pattern Kna = $(bakeLanguage Nothing "kna")

-- | Lubuagan Kalinga.
pattern Knb :: Language
pattern Knb = $(bakeLanguage Nothing "knb")

-- | Central Kanuri.
pattern Knc :: Language
pattern Knc = $(bakeLanguage Nothing "knc")

-- | Konda.
pattern Knd :: Language
pattern Knd = $(bakeLanguage Nothing "knd")

-- | Kankanaey.
pattern Kne :: Language
pattern Kne = $(bakeLanguage Nothing "kne")

-- | Mankanya.
pattern Knf :: Language
pattern Knf = $(bakeLanguage Nothing "knf")

-- | Koongo.
pattern Kng :: Language
pattern Kng = $(bakeLanguage Nothing "kng")

-- | Kanufi.
pattern Kni :: Language
pattern Kni = $(bakeLanguage Nothing "kni")

-- | Western Kanjobal.
pattern Knj :: Language
pattern Knj = $(bakeLanguage Nothing "knj")

-- | Kuranko.
pattern Knk :: Language
pattern Knk = $(bakeLanguage Nothing "knk")

-- | Keninjal.
pattern Knl :: Language
pattern Knl = $(bakeLanguage Nothing "knl")

-- | Kanamarí.
pattern Knm :: Language
pattern Knm = $(bakeLanguage Nothing "knm")

-- | Konkani (individual language).
pattern Knn :: Language
pattern Knn = $(bakeLanguage Nothing "knn")

-- | Kono (Sierra Leone).
pattern Kno :: Language
pattern Kno = $(bakeLanguage Nothing "kno")

-- | Kwanja.
pattern Knp :: Language
pattern Knp = $(bakeLanguage Nothing "knp")

-- | Kintaq.
pattern Knq :: Language
pattern Knq = $(bakeLanguage Nothing "knq")

-- | Kaningra.
pattern Knr :: Language
pattern Knr = $(bakeLanguage Nothing "knr")

-- | Kensiu.
pattern Kns :: Language
pattern Kns = $(bakeLanguage Nothing "kns")

-- | Panoan Katukína.
pattern Knt :: Language
pattern Knt = $(bakeLanguage Nothing "knt")

-- | Kono (Guinea).
pattern Knu :: Language
pattern Knu = $(bakeLanguage Nothing "knu")

-- | Tabo.
pattern Knv :: Language
pattern Knv = $(bakeLanguage Nothing "knv")

-- | Kung-Ekoka.
pattern Knw :: Language
pattern Knw = $(bakeLanguage Nothing "knw")

-- | Kendayan.
pattern Knx :: Language
pattern Knx = $(bakeLanguage Nothing "knx")

-- | Kanyok.
pattern Kny :: Language
pattern Kny = $(bakeLanguage Nothing "kny")

-- | Kalamsé.
pattern Knz :: Language
pattern Knz = $(bakeLanguage Nothing "knz")

-- | Konomala.
pattern Koa :: Language
pattern Koa = $(bakeLanguage Nothing "koa")

-- | Kpati.
pattern Koc :: Language
pattern Koc = $(bakeLanguage Nothing "koc")

-- | Kodi.
pattern Kod :: Language
pattern Kod = $(bakeLanguage Nothing "kod")

-- | Kacipo-Bale Suri.
pattern Koe :: Language
pattern Koe = $(bakeLanguage Nothing "koe")

-- | Kubi.
pattern Kof :: Language
pattern Kof = $(bakeLanguage Nothing "kof")

-- | Cogui.
pattern Kog :: Language
pattern Kog = $(bakeLanguage Nothing "kog")

-- | Koyo.
pattern Koh :: Language
pattern Koh = $(bakeLanguage Nothing "koh")

-- | Komi-Permyak.
pattern Koi :: Language
pattern Koi = $(bakeLanguage Nothing "koi")

-- | Konkani (macrolanguage).
pattern Kok :: Language
pattern Kok = $(bakeLanguage Nothing "kok")

-- | Kol (Papua New Guinea).
pattern Kol :: Language
pattern Kol = $(bakeLanguage Nothing "kol")

-- | Konzo.
pattern Koo :: Language
pattern Koo = $(bakeLanguage Nothing "koo")

-- | Waube.
pattern Kop :: Language
pattern Kop = $(bakeLanguage Nothing "kop")

-- | Kota (Gabon).
pattern Koq :: Language
pattern Koq = $(bakeLanguage Nothing "koq")

-- | Kosraean.
pattern Kos :: Language
pattern Kos = $(bakeLanguage Nothing "kos")

-- | Lagwan.
pattern Kot :: Language
pattern Kot = $(bakeLanguage Nothing "kot")

-- | Koke.
pattern Kou :: Language
pattern Kou = $(bakeLanguage Nothing "kou")

-- | Kudu-Camo.
pattern Kov :: Language
pattern Kov = $(bakeLanguage Nothing "kov")

-- | Kugama.
pattern Kow :: Language
pattern Kow = $(bakeLanguage Nothing "kow")

-- | Koyukon.
pattern Koy :: Language
pattern Koy = $(bakeLanguage Nothing "koy")

-- | Korak.
pattern Koz :: Language
pattern Koz = $(bakeLanguage Nothing "koz")

-- | Kutto.
pattern Kpa :: Language
pattern Kpa = $(bakeLanguage Nothing "kpa")

-- | Mullu Kurumba.
pattern Kpb :: Language
pattern Kpb = $(bakeLanguage Nothing "kpb")

-- | Curripaco.
pattern Kpc :: Language
pattern Kpc = $(bakeLanguage Nothing "kpc")

-- | Koba.
pattern Kpd :: Language
pattern Kpd = $(bakeLanguage Nothing "kpd")

-- | Kpelle.
pattern Kpe :: Language
pattern Kpe = $(bakeLanguage Nothing "kpe")

-- | Komba.
pattern Kpf :: Language
pattern Kpf = $(bakeLanguage Nothing "kpf")

-- | Kapingamarangi.
pattern Kpg :: Language
pattern Kpg = $(bakeLanguage Nothing "kpg")

-- | Kplang.
pattern Kph :: Language
pattern Kph = $(bakeLanguage Nothing "kph")

-- | Kofei.
pattern Kpi :: Language
pattern Kpi = $(bakeLanguage Nothing "kpi")

-- | Karajá.
pattern Kpj :: Language
pattern Kpj = $(bakeLanguage Nothing "kpj")

-- | Kpan.
pattern Kpk :: Language
pattern Kpk = $(bakeLanguage Nothing "kpk")

-- | Kpala.
pattern Kpl :: Language
pattern Kpl = $(bakeLanguage Nothing "kpl")

-- | Koho.
pattern Kpm :: Language
pattern Kpm = $(bakeLanguage Nothing "kpm")

-- | Kepkiriwát.
pattern Kpn :: Language
pattern Kpn = $(bakeLanguage Nothing "kpn")

-- | Ikposo.
pattern Kpo :: Language
pattern Kpo = $(bakeLanguage Nothing "kpo")

-- | Korupun-Sela.
pattern Kpq :: Language
pattern Kpq = $(bakeLanguage Nothing "kpq")

-- | Korafe-Yegha.
pattern Kpr :: Language
pattern Kpr = $(bakeLanguage Nothing "kpr")

-- | Tehit.
pattern Kps :: Language
pattern Kps = $(bakeLanguage Nothing "kps")

-- | Karata.
pattern Kpt :: Language
pattern Kpt = $(bakeLanguage Nothing "kpt")

-- | Kafoa.
pattern Kpu :: Language
pattern Kpu = $(bakeLanguage Nothing "kpu")

-- | Komi-Zyrian.
pattern Kpv :: Language
pattern Kpv = $(bakeLanguage Nothing "kpv")

-- | Kobon.
pattern Kpw :: Language
pattern Kpw = $(bakeLanguage Nothing "kpw")

-- | Mountain Koiali.
pattern Kpx :: Language
pattern Kpx = $(bakeLanguage Nothing "kpx")

-- | Koryak.
pattern Kpy :: Language
pattern Kpy = $(bakeLanguage Nothing "kpy")

-- | Kupsabiny.
pattern Kpz :: Language
pattern Kpz = $(bakeLanguage Nothing "kpz")

-- | Mum.
pattern Kqa :: Language
pattern Kqa = $(bakeLanguage Nothing "kqa")

-- | Kovai.
pattern Kqb :: Language
pattern Kqb = $(bakeLanguage Nothing "kqb")

-- | Doromu-Koki.
pattern Kqc :: Language
pattern Kqc = $(bakeLanguage Nothing "kqc")

-- | Koy Sanjaq Surat.
pattern Kqd :: Language
pattern Kqd = $(bakeLanguage Nothing "kqd")

-- | Kalagan.
pattern Kqe :: Language
pattern Kqe = $(bakeLanguage Nothing "kqe")

-- | Kakabai.
pattern Kqf :: Language
pattern Kqf = $(bakeLanguage Nothing "kqf")

-- | Khe.
pattern Kqg :: Language
pattern Kqg = $(bakeLanguage Nothing "kqg")

-- | Kisankasa.
pattern Kqh :: Language
pattern Kqh = $(bakeLanguage Nothing "kqh")

-- | Koitabu.
pattern Kqi :: Language
pattern Kqi = $(bakeLanguage Nothing "kqi")

-- | Koromira.
pattern Kqj :: Language
pattern Kqj = $(bakeLanguage Nothing "kqj")

-- | Kotafon Gbe.
pattern Kqk :: Language
pattern Kqk = $(bakeLanguage Nothing "kqk")

-- | Kyenele.
pattern Kql :: Language
pattern Kql = $(bakeLanguage Nothing "kql")

-- | Khisa.
pattern Kqm :: Language
pattern Kqm = $(bakeLanguage Nothing "kqm")

-- | Kaonde.
pattern Kqn :: Language
pattern Kqn = $(bakeLanguage Nothing "kqn")

-- | Eastern Krahn.
pattern Kqo :: Language
pattern Kqo = $(bakeLanguage Nothing "kqo")

-- | Kimré.
pattern Kqp :: Language
pattern Kqp = $(bakeLanguage Nothing "kqp")

-- | Krenak.
pattern Kqq :: Language
pattern Kqq = $(bakeLanguage Nothing "kqq")

-- | Kimaragang.
pattern Kqr :: Language
pattern Kqr = $(bakeLanguage Nothing "kqr")

-- | Northern Kissi.
pattern Kqs :: Language
pattern Kqs = $(bakeLanguage Nothing "kqs")

-- | Klias River Kadazan.
pattern Kqt :: Language
pattern Kqt = $(bakeLanguage Nothing "kqt")

-- | Seroa.
pattern Kqu :: Language
pattern Kqu = $(bakeLanguage Nothing "kqu")

-- | Okolod.
pattern Kqv :: Language
pattern Kqv = $(bakeLanguage Nothing "kqv")

-- | Kandas.
pattern Kqw :: Language
pattern Kqw = $(bakeLanguage Nothing "kqw")

-- | Mser.
pattern Kqx :: Language
pattern Kqx = $(bakeLanguage Nothing "kqx")

-- | Koorete.
pattern Kqy :: Language
pattern Kqy = $(bakeLanguage Nothing "kqy")

-- | Korana.
pattern Kqz :: Language
pattern Kqz = $(bakeLanguage Nothing "kqz")

-- | Kumhali.
pattern Kra :: Language
pattern Kra = $(bakeLanguage Nothing "kra")

-- | Karkin.
pattern Krb :: Language
pattern Krb = $(bakeLanguage Nothing "krb")

-- | Karachay-Balkar.
pattern Krc :: Language
pattern Krc = $(bakeLanguage Nothing "krc")

-- | Kairui-Midiki.
pattern Krd :: Language
pattern Krd = $(bakeLanguage Nothing "krd")

-- | Panará.
pattern Kre :: Language
pattern Kre = $(bakeLanguage Nothing "kre")

-- | Koro (Vanuatu).
pattern Krf :: Language
pattern Krf = $(bakeLanguage Nothing "krf")

-- | Kurama.
pattern Krh :: Language
pattern Krh = $(bakeLanguage Nothing "krh")

-- | Krio.
pattern Kri :: Language
pattern Kri = $(bakeLanguage Nothing "kri")

-- | Kinaray-A.
pattern Krj :: Language
pattern Krj = $(bakeLanguage Nothing "krj")

-- | Kerek.
pattern Krk :: Language
pattern Krk = $(bakeLanguage Nothing "krk")

-- | Karelian.
pattern Krl :: Language
pattern Krl = $(bakeLanguage Nothing "krl")

-- | Sapo.
pattern Krn :: Language
pattern Krn = $(bakeLanguage Nothing "krn")

-- | Durop.
pattern Krp :: Language
pattern Krp = $(bakeLanguage Nothing "krp")

-- | Krung.
pattern Krr :: Language
pattern Krr = $(bakeLanguage Nothing "krr")

-- | Gbaya (Sudan).
pattern Krs :: Language
pattern Krs = $(bakeLanguage Nothing "krs")

-- | Tumari Kanuri.
pattern Krt :: Language
pattern Krt = $(bakeLanguage Nothing "krt")

-- | Kurukh.
pattern Kru :: Language
pattern Kru = $(bakeLanguage Nothing "kru")

-- | Kavet.
pattern Krv :: Language
pattern Krv = $(bakeLanguage Nothing "krv")

-- | Western Krahn.
pattern Krw :: Language
pattern Krw = $(bakeLanguage Nothing "krw")

-- | Karon.
pattern Krx :: Language
pattern Krx = $(bakeLanguage Nothing "krx")

-- | Kryts.
pattern Kry :: Language
pattern Kry = $(bakeLanguage Nothing "kry")

-- | Sota Kanum.
pattern Krz :: Language
pattern Krz = $(bakeLanguage Nothing "krz")

-- | Shambala.
pattern Ksb :: Language
pattern Ksb = $(bakeLanguage Nothing "ksb")

-- | Southern Kalinga.
pattern Ksc :: Language
pattern Ksc = $(bakeLanguage Nothing "ksc")

-- | Kuanua.
pattern Ksd :: Language
pattern Ksd = $(bakeLanguage Nothing "ksd")

-- | Kuni.
pattern Kse :: Language
pattern Kse = $(bakeLanguage Nothing "kse")

-- | Bafia.
pattern Ksf :: Language
pattern Ksf = $(bakeLanguage Nothing "ksf")

-- | Kusaghe.
pattern Ksg :: Language
pattern Ksg = $(bakeLanguage Nothing "ksg")

-- | Kölsch.
pattern Ksh :: Language
pattern Ksh = $(bakeLanguage Nothing "ksh")

-- | Krisa.
pattern Ksi :: Language
pattern Ksi = $(bakeLanguage Nothing "ksi")

-- | Uare.
pattern Ksj :: Language
pattern Ksj = $(bakeLanguage Nothing "ksj")

-- | Kansa.
pattern Ksk :: Language
pattern Ksk = $(bakeLanguage Nothing "ksk")

-- | Kumalu.
pattern Ksl :: Language
pattern Ksl = $(bakeLanguage Nothing "ksl")

-- | Kumba.
pattern Ksm :: Language
pattern Ksm = $(bakeLanguage Nothing "ksm")

-- | Kasiguranin.
pattern Ksn :: Language
pattern Ksn = $(bakeLanguage Nothing "ksn")

-- | Kofa.
pattern Kso :: Language
pattern Kso = $(bakeLanguage Nothing "kso")

-- | Kaba.
pattern Ksp :: Language
pattern Ksp = $(bakeLanguage Nothing "ksp")

-- | Kwaami.
pattern Ksq :: Language
pattern Ksq = $(bakeLanguage Nothing "ksq")

-- | Borong.
pattern Ksr :: Language
pattern Ksr = $(bakeLanguage Nothing "ksr")

-- | Southern Kisi.
pattern Kss :: Language
pattern Kss = $(bakeLanguage Nothing "kss")

-- | Winyé.
pattern Kst :: Language
pattern Kst = $(bakeLanguage Nothing "kst")

-- | Khamyang.
pattern Ksu :: Language
pattern Ksu = $(bakeLanguage Nothing "ksu")

-- | Kusu.
pattern Ksv :: Language
pattern Ksv = $(bakeLanguage Nothing "ksv")

-- | S'gaw Karen.
pattern Ksw :: Language
pattern Ksw = $(bakeLanguage Nothing "ksw")

-- | Kedang.
pattern Ksx :: Language
pattern Ksx = $(bakeLanguage Nothing "ksx")

-- | Kharia Thar.
pattern Ksy :: Language
pattern Ksy = $(bakeLanguage Nothing "ksy")

-- | Kodaku.
pattern Ksz :: Language
pattern Ksz = $(bakeLanguage Nothing "ksz")

-- | Katua.
pattern Kta :: Language
pattern Kta = $(bakeLanguage Nothing "kta")

-- | Kambaata.
pattern Ktb :: Language
pattern Ktb = $(bakeLanguage Nothing "ktb")

-- | Kholok.
pattern Ktc :: Language
pattern Ktc = $(bakeLanguage Nothing "ktc")

-- | Kokata.
pattern Ktd :: Language
pattern Ktd = $(bakeLanguage Nothing "ktd")

-- | Nubri.
pattern Kte :: Language
pattern Kte = $(bakeLanguage Nothing "kte")

-- | Kwami.
pattern Ktf :: Language
pattern Ktf = $(bakeLanguage Nothing "ktf")

-- | Kalkutung.
pattern Ktg :: Language
pattern Ktg = $(bakeLanguage Nothing "ktg")

-- | Karanga.
pattern Kth :: Language
pattern Kth = $(bakeLanguage Nothing "kth")

-- | North Muyu.
pattern Kti :: Language
pattern Kti = $(bakeLanguage Nothing "kti")

-- | Plapo Krumen.
pattern Ktj :: Language
pattern Ktj = $(bakeLanguage Nothing "ktj")

-- | Kaniet.
pattern Ktk :: Language
pattern Ktk = $(bakeLanguage Nothing "ktk")

-- | Koroshi.
pattern Ktl :: Language
pattern Ktl = $(bakeLanguage Nothing "ktl")

-- | Kurti.
pattern Ktm :: Language
pattern Ktm = $(bakeLanguage Nothing "ktm")

-- | Karitiâna.
pattern Ktn :: Language
pattern Ktn = $(bakeLanguage Nothing "ktn")

-- | Kuot.
pattern Kto :: Language
pattern Kto = $(bakeLanguage Nothing "kto")

-- | Kaduo.
pattern Ktp :: Language
pattern Ktp = $(bakeLanguage Nothing "ktp")

-- | Katabaga.
pattern Ktq :: Language
pattern Ktq = $(bakeLanguage Nothing "ktq")

-- | South Muyu.
pattern Kts :: Language
pattern Kts = $(bakeLanguage Nothing "kts")

-- | Ketum.
pattern Ktt :: Language
pattern Ktt = $(bakeLanguage Nothing "ktt")

-- | Kituba (Democratic Republic of Congo).
pattern Ktu :: Language
pattern Ktu = $(bakeLanguage Nothing "ktu")

-- | Eastern Katu.
pattern Ktv :: Language
pattern Ktv = $(bakeLanguage Nothing "ktv")

-- | Kato.
pattern Ktw :: Language
pattern Ktw = $(bakeLanguage Nothing "ktw")

-- | Kaxararí.
pattern Ktx :: Language
pattern Ktx = $(bakeLanguage Nothing "ktx")

-- | Kango (Bas-Uélé District).
pattern Kty :: Language
pattern Kty = $(bakeLanguage Nothing "kty")

-- | Juǀʼhoan.
pattern Ktz :: Language
pattern Ktz = $(bakeLanguage Nothing "ktz")

-- | Kutep.
pattern Kub :: Language
pattern Kub = $(bakeLanguage Nothing "kub")

-- | Kwinsu.
pattern Kuc :: Language
pattern Kuc = $(bakeLanguage Nothing "kuc")

-- | 'Auhelawa.
pattern Kud :: Language
pattern Kud = $(bakeLanguage Nothing "kud")

-- | Kuman (Papua New Guinea).
pattern Kue :: Language
pattern Kue = $(bakeLanguage Nothing "kue")

-- | Western Katu.
pattern Kuf :: Language
pattern Kuf = $(bakeLanguage Nothing "kuf")

-- | Kupa.
pattern Kug :: Language
pattern Kug = $(bakeLanguage Nothing "kug")

-- | Kushi.
pattern Kuh :: Language
pattern Kuh = $(bakeLanguage Nothing "kuh")

-- | Kuikúro-Kalapálo.
pattern Kui :: Language
pattern Kui = $(bakeLanguage Nothing "kui")

-- | Kuria.
pattern Kuj :: Language
pattern Kuj = $(bakeLanguage Nothing "kuj")

-- | Kepo'.
pattern Kuk :: Language
pattern Kuk = $(bakeLanguage Nothing "kuk")

-- | Kulere.
pattern Kul :: Language
pattern Kul = $(bakeLanguage Nothing "kul")

-- | Kumyk.
pattern Kum :: Language
pattern Kum = $(bakeLanguage Nothing "kum")

-- | Kunama.
pattern Kun :: Language
pattern Kun = $(bakeLanguage Nothing "kun")

-- | Kumukio.
pattern Kuo :: Language
pattern Kuo = $(bakeLanguage Nothing "kuo")

-- | Kunimaipa.
pattern Kup :: Language
pattern Kup = $(bakeLanguage Nothing "kup")

-- | Karipuna.
pattern Kuq :: Language
pattern Kuq = $(bakeLanguage Nothing "kuq")

-- | Kusaal.
pattern Kus :: Language
pattern Kus = $(bakeLanguage Nothing "kus")

-- | Ktunaxa.
pattern Kut :: Language
pattern Kut = $(bakeLanguage Nothing "kut")

-- | Upper Kuskokwim.
pattern Kuu :: Language
pattern Kuu = $(bakeLanguage Nothing "kuu")

-- | Kur.
pattern Kuv :: Language
pattern Kuv = $(bakeLanguage Nothing "kuv")

-- | Kpagua.
pattern Kuw :: Language
pattern Kuw = $(bakeLanguage Nothing "kuw")

-- | Kukatja.
pattern Kux :: Language
pattern Kux = $(bakeLanguage Nothing "kux")

-- | Kuuku-Ya'u.
pattern Kuy :: Language
pattern Kuy = $(bakeLanguage Nothing "kuy")

-- | Kunza.
pattern Kuz :: Language
pattern Kuz = $(bakeLanguage Nothing "kuz")

-- | Bagvalal.
pattern Kva :: Language
pattern Kva = $(bakeLanguage Nothing "kva")

-- | Kubu.
pattern Kvb :: Language
pattern Kvb = $(bakeLanguage Nothing "kvb")

-- | Kove.
pattern Kvc :: Language
pattern Kvc = $(bakeLanguage Nothing "kvc")

-- | Kui (Indonesia).
pattern Kvd :: Language
pattern Kvd = $(bakeLanguage Nothing "kvd")

-- | Kalabakan.
pattern Kve :: Language
pattern Kve = $(bakeLanguage Nothing "kve")

-- | Kabalai.
pattern Kvf :: Language
pattern Kvf = $(bakeLanguage Nothing "kvf")

-- | Kuni-Boazi.
pattern Kvg :: Language
pattern Kvg = $(bakeLanguage Nothing "kvg")

-- | Komodo.
pattern Kvh :: Language
pattern Kvh = $(bakeLanguage Nothing "kvh")

-- | Kwang.
pattern Kvi :: Language
pattern Kvi = $(bakeLanguage Nothing "kvi")

-- | Psikye.
pattern Kvj :: Language
pattern Kvj = $(bakeLanguage Nothing "kvj")

-- | Korean Sign Language.
pattern Kvk :: Language
pattern Kvk = $(bakeLanguage Nothing "kvk")

-- | Kayaw.
pattern Kvl :: Language
pattern Kvl = $(bakeLanguage Nothing "kvl")

-- | Kendem.
pattern Kvm :: Language
pattern Kvm = $(bakeLanguage Nothing "kvm")

-- | Border Kuna.
pattern Kvn :: Language
pattern Kvn = $(bakeLanguage Nothing "kvn")

-- | Dobel.
pattern Kvo :: Language
pattern Kvo = $(bakeLanguage Nothing "kvo")

-- | Kompane.
pattern Kvp :: Language
pattern Kvp = $(bakeLanguage Nothing "kvp")

-- | Geba Karen.
pattern Kvq :: Language
pattern Kvq = $(bakeLanguage Nothing "kvq")

-- | Kerinci.
pattern Kvr :: Language
pattern Kvr = $(bakeLanguage Nothing "kvr")

-- | Lahta Karen.
pattern Kvt :: Language
pattern Kvt = $(bakeLanguage Nothing "kvt")

-- | Yinbaw Karen.
pattern Kvu :: Language
pattern Kvu = $(bakeLanguage Nothing "kvu")

-- | Kola.
pattern Kvv :: Language
pattern Kvv = $(bakeLanguage Nothing "kvv")

-- | Wersing.
pattern Kvw :: Language
pattern Kvw = $(bakeLanguage Nothing "kvw")

-- | Parkari Koli.
pattern Kvx :: Language
pattern Kvx = $(bakeLanguage Nothing "kvx")

-- | Yintale Karen.
pattern Kvy :: Language
pattern Kvy = $(bakeLanguage Nothing "kvy")

-- | Tsakwambo.
pattern Kvz :: Language
pattern Kvz = $(bakeLanguage Nothing "kvz")

-- | Dâw.
pattern Kwa :: Language
pattern Kwa = $(bakeLanguage Nothing "kwa")

-- | Kwa.
pattern Kwb :: Language
pattern Kwb = $(bakeLanguage Nothing "kwb")

-- | Likwala.
pattern Kwc :: Language
pattern Kwc = $(bakeLanguage Nothing "kwc")

-- | Kwaio.
pattern Kwd :: Language
pattern Kwd = $(bakeLanguage Nothing "kwd")

-- | Kwerba.
pattern Kwe :: Language
pattern Kwe = $(bakeLanguage Nothing "kwe")

-- | Kwara'ae.
pattern Kwf :: Language
pattern Kwf = $(bakeLanguage Nothing "kwf")

-- | Sara Kaba Deme.
pattern Kwg :: Language
pattern Kwg = $(bakeLanguage Nothing "kwg")

-- | Kowiai.
pattern Kwh :: Language
pattern Kwh = $(bakeLanguage Nothing "kwh")

-- | Awa-Cuaiquer.
pattern Kwi :: Language
pattern Kwi = $(bakeLanguage Nothing "kwi")

-- | Kwanga.
pattern Kwj :: Language
pattern Kwj = $(bakeLanguage Nothing "kwj")

-- | Kwak'wala.
pattern Kwk :: Language
pattern Kwk = $(bakeLanguage Nothing "kwk")

-- | Kofyar.
pattern Kwl :: Language
pattern Kwl = $(bakeLanguage Nothing "kwl")

-- | Kwambi.
pattern Kwm :: Language
pattern Kwm = $(bakeLanguage Nothing "kwm")

-- | Kwangali.
pattern Kwn :: Language
pattern Kwn = $(bakeLanguage Nothing "kwn")

-- | Kwomtari.
pattern Kwo :: Language
pattern Kwo = $(bakeLanguage Nothing "kwo")

-- | Kodia.
pattern Kwp :: Language
pattern Kwp = $(bakeLanguage Nothing "kwp")

-- | Kwer.
pattern Kwr :: Language
pattern Kwr = $(bakeLanguage Nothing "kwr")

-- | Kwese.
pattern Kws :: Language
pattern Kws = $(bakeLanguage Nothing "kws")

-- | Kwesten.
pattern Kwt :: Language
pattern Kwt = $(bakeLanguage Nothing "kwt")

-- | Kwakum.
pattern Kwu :: Language
pattern Kwu = $(bakeLanguage Nothing "kwu")

-- | Sara Kaba Náà.
pattern Kwv :: Language
pattern Kwv = $(bakeLanguage Nothing "kwv")

-- | Kwinti.
pattern Kww :: Language
pattern Kww = $(bakeLanguage Nothing "kww")

-- | Khirwar.
pattern Kwx :: Language
pattern Kwx = $(bakeLanguage Nothing "kwx")

-- | San Salvador Kongo.
pattern Kwy :: Language
pattern Kwy = $(bakeLanguage Nothing "kwy")

-- | Kwadi.
pattern Kwz :: Language
pattern Kwz = $(bakeLanguage Nothing "kwz")

-- | Kairiru.
pattern Kxa :: Language
pattern Kxa = $(bakeLanguage Nothing "kxa")

-- | Krobu.
pattern Kxb :: Language
pattern Kxb = $(bakeLanguage Nothing "kxb")

-- | Konso.
pattern Kxc :: Language
pattern Kxc = $(bakeLanguage Nothing "kxc")

-- | Brunei.
pattern Kxd :: Language
pattern Kxd = $(bakeLanguage Nothing "kxd")

-- | Manumanaw Karen.
pattern Kxf :: Language
pattern Kxf = $(bakeLanguage Nothing "kxf")

-- | Karo (Ethiopia).
pattern Kxh :: Language
pattern Kxh = $(bakeLanguage Nothing "kxh")

-- | Keningau Murut.
pattern Kxi :: Language
pattern Kxi = $(bakeLanguage Nothing "kxi")

-- | Kulfa.
pattern Kxj :: Language
pattern Kxj = $(bakeLanguage Nothing "kxj")

-- | Zayein Karen.
pattern Kxk :: Language
pattern Kxk = $(bakeLanguage Nothing "kxk")

-- | Northern Khmer.
pattern Kxm :: Language
pattern Kxm = $(bakeLanguage Nothing "kxm")

-- | Kanowit-Tanjong Melanau.
pattern Kxn :: Language
pattern Kxn = $(bakeLanguage Nothing "kxn")

-- | Kanoé.
pattern Kxo :: Language
pattern Kxo = $(bakeLanguage Nothing "kxo")

-- | Wadiyara Koli.
pattern Kxp :: Language
pattern Kxp = $(bakeLanguage Nothing "kxp")

-- | Smärky Kanum.
pattern Kxq :: Language
pattern Kxq = $(bakeLanguage Nothing "kxq")

-- | Koro (Papua New Guinea).
pattern Kxr :: Language
pattern Kxr = $(bakeLanguage Nothing "kxr")

-- | Kangjia.
pattern Kxs :: Language
pattern Kxs = $(bakeLanguage Nothing "kxs")

-- | Koiwat.
pattern Kxt :: Language
pattern Kxt = $(bakeLanguage Nothing "kxt")

-- | Kuvi.
pattern Kxv :: Language
pattern Kxv = $(bakeLanguage Nothing "kxv")

-- | Konai.
pattern Kxw :: Language
pattern Kxw = $(bakeLanguage Nothing "kxw")

-- | Likuba.
pattern Kxx :: Language
pattern Kxx = $(bakeLanguage Nothing "kxx")

-- | Kayong.
pattern Kxy :: Language
pattern Kxy = $(bakeLanguage Nothing "kxy")

-- | Kerewo.
pattern Kxz :: Language
pattern Kxz = $(bakeLanguage Nothing "kxz")

-- | Kwaya.
pattern Kya :: Language
pattern Kya = $(bakeLanguage Nothing "kya")

-- | Butbut Kalinga.
pattern Kyb :: Language
pattern Kyb = $(bakeLanguage Nothing "kyb")

-- | Kyaka.
pattern Kyc :: Language
pattern Kyc = $(bakeLanguage Nothing "kyc")

-- | Karey.
pattern Kyd :: Language
pattern Kyd = $(bakeLanguage Nothing "kyd")

-- | Krache.
pattern Kye :: Language
pattern Kye = $(bakeLanguage Nothing "kye")

-- | Kouya.
pattern Kyf :: Language
pattern Kyf = $(bakeLanguage Nothing "kyf")

-- | Keyagana.
pattern Kyg :: Language
pattern Kyg = $(bakeLanguage Nothing "kyg")

-- | Karok.
pattern Kyh :: Language
pattern Kyh = $(bakeLanguage Nothing "kyh")

-- | Kiput.
pattern Kyi :: Language
pattern Kyi = $(bakeLanguage Nothing "kyi")

-- | Karao.
pattern Kyj :: Language
pattern Kyj = $(bakeLanguage Nothing "kyj")

-- | Kamayo.
pattern Kyk :: Language
pattern Kyk = $(bakeLanguage Nothing "kyk")

-- | Kalapuya.
pattern Kyl :: Language
pattern Kyl = $(bakeLanguage Nothing "kyl")

-- | Kpatili.
pattern Kym :: Language
pattern Kym = $(bakeLanguage Nothing "kym")

-- | Northern Binukidnon.
pattern Kyn :: Language
pattern Kyn = $(bakeLanguage Nothing "kyn")

-- | Kelon.
pattern Kyo :: Language
pattern Kyo = $(bakeLanguage Nothing "kyo")

-- | Kang.
pattern Kyp :: Language
pattern Kyp = $(bakeLanguage Nothing "kyp")

-- | Kenga.
pattern Kyq :: Language
pattern Kyq = $(bakeLanguage Nothing "kyq")

-- | Kuruáya.
pattern Kyr :: Language
pattern Kyr = $(bakeLanguage Nothing "kyr")

-- | Baram Kayan.
pattern Kys :: Language
pattern Kys = $(bakeLanguage Nothing "kys")

-- | Kayagar.
pattern Kyt :: Language
pattern Kyt = $(bakeLanguage Nothing "kyt")

-- | Western Kayah.
pattern Kyu :: Language
pattern Kyu = $(bakeLanguage Nothing "kyu")

-- | Kayort.
pattern Kyv :: Language
pattern Kyv = $(bakeLanguage Nothing "kyv")

-- | Kudmali.
pattern Kyw :: Language
pattern Kyw = $(bakeLanguage Nothing "kyw")

-- | Rapoisi.
pattern Kyx :: Language
pattern Kyx = $(bakeLanguage Nothing "kyx")

-- | Kambaira.
pattern Kyy :: Language
pattern Kyy = $(bakeLanguage Nothing "kyy")

-- | Kayabí.
pattern Kyz :: Language
pattern Kyz = $(bakeLanguage Nothing "kyz")

-- | Western Karaboro.
pattern Kza :: Language
pattern Kza = $(bakeLanguage Nothing "kza")

-- | Kaibobo.
pattern Kzb :: Language
pattern Kzb = $(bakeLanguage Nothing "kzb")

-- | Bondoukou Kulango.
pattern Kzc :: Language
pattern Kzc = $(bakeLanguage Nothing "kzc")

-- | Kadai.
pattern Kzd :: Language
pattern Kzd = $(bakeLanguage Nothing "kzd")

-- | Kosena.
pattern Kze :: Language
pattern Kze = $(bakeLanguage Nothing "kze")

-- | Da'a Kaili.
pattern Kzf :: Language
pattern Kzf = $(bakeLanguage Nothing "kzf")

-- | Kikai.
pattern Kzg :: Language
pattern Kzg = $(bakeLanguage Nothing "kzg")

-- | Kelabit.
pattern Kzi :: Language
pattern Kzi = $(bakeLanguage Nothing "kzi")

-- | Kazukuru.
pattern Kzk :: Language
pattern Kzk = $(bakeLanguage Nothing "kzk")

-- | Kayeli.
pattern Kzl :: Language
pattern Kzl = $(bakeLanguage Nothing "kzl")

-- | Kais.
pattern Kzm :: Language
pattern Kzm = $(bakeLanguage Nothing "kzm")

-- | Kokola.
pattern Kzn :: Language
pattern Kzn = $(bakeLanguage Nothing "kzn")

-- | Kaningi.
pattern Kzo :: Language
pattern Kzo = $(bakeLanguage Nothing "kzo")

-- | Kaidipang.
pattern Kzp :: Language
pattern Kzp = $(bakeLanguage Nothing "kzp")

-- | Kaike.
pattern Kzq :: Language
pattern Kzq = $(bakeLanguage Nothing "kzq")

-- | Karang.
pattern Kzr :: Language
pattern Kzr = $(bakeLanguage Nothing "kzr")

-- | Sugut Dusun.
pattern Kzs :: Language
pattern Kzs = $(bakeLanguage Nothing "kzs")

-- | Kayupulau.
pattern Kzu :: Language
pattern Kzu = $(bakeLanguage Nothing "kzu")

-- | Komyandaret.
pattern Kzv :: Language
pattern Kzv = $(bakeLanguage Nothing "kzv")

-- | Karirí-Xocó.
pattern Kzw :: Language
pattern Kzw = $(bakeLanguage Nothing "kzw")

-- | Kamarian.
pattern Kzx :: Language
pattern Kzx = $(bakeLanguage Nothing "kzx")

-- | Kango (Tshopo District).
pattern Kzy :: Language
pattern Kzy = $(bakeLanguage Nothing "kzy")

-- | Kalabra.
pattern Kzz :: Language
pattern Kzz = $(bakeLanguage Nothing "kzz")

-- | Southern Subanen.
pattern Laa :: Language
pattern Laa = $(bakeLanguage Nothing "laa")

-- | Linear A.
pattern Lab :: Language
pattern Lab = $(bakeLanguage Nothing "lab")

-- | Lacandon.
pattern Lac :: Language
pattern Lac = $(bakeLanguage Nothing "lac")

-- | Ladino.
pattern Lad :: Language
pattern Lad = $(bakeLanguage Nothing "lad")

-- | Pattani.
pattern Lae :: Language
pattern Lae = $(bakeLanguage Nothing "lae")

-- | Lafofa.
pattern Laf :: Language
pattern Laf = $(bakeLanguage Nothing "laf")

-- | Rangi.
pattern Lag :: Language
pattern Lag = $(bakeLanguage Nothing "lag")

-- | Lahnda.
pattern Lah :: Language
pattern Lah = $(bakeLanguage Nothing "lah")

-- | Lambya.
pattern Lai :: Language
pattern Lai = $(bakeLanguage Nothing "lai")

-- | Lango (Uganda).
pattern Laj :: Language
pattern Laj = $(bakeLanguage Nothing "laj")

-- | Lalia.
pattern Lal :: Language
pattern Lal = $(bakeLanguage Nothing "lal")

-- | Lamba.
pattern Lam :: Language
pattern Lam = $(bakeLanguage Nothing "lam")

-- | Laru.
pattern Lan :: Language
pattern Lan = $(bakeLanguage Nothing "lan")

-- | Laka (Chad).
pattern Lap :: Language
pattern Lap = $(bakeLanguage Nothing "lap")

-- | Qabiao.
pattern Laq :: Language
pattern Laq = $(bakeLanguage Nothing "laq")

-- | Larteh.
pattern Lar :: Language
pattern Lar = $(bakeLanguage Nothing "lar")

-- | Lama (Togo).
pattern Las :: Language
pattern Las = $(bakeLanguage Nothing "las")

-- | Laba.
pattern Lau :: Language
pattern Lau = $(bakeLanguage Nothing "lau")

-- | Lauje.
pattern Law :: Language
pattern Law = $(bakeLanguage Nothing "law")

-- | Tiwa.
pattern Lax :: Language
pattern Lax = $(bakeLanguage Nothing "lax")

-- | Lama Bai.
pattern Lay :: Language
pattern Lay = $(bakeLanguage Nothing "lay")

-- | Aribwatsa.
pattern Laz :: Language
pattern Laz = $(bakeLanguage Nothing "laz")

-- | Label.
pattern Lbb :: Language
pattern Lbb = $(bakeLanguage Nothing "lbb")

-- | Lakkia.
pattern Lbc :: Language
pattern Lbc = $(bakeLanguage Nothing "lbc")

-- | Lak.
pattern Lbe :: Language
pattern Lbe = $(bakeLanguage Nothing "lbe")

-- | Tinani.
pattern Lbf :: Language
pattern Lbf = $(bakeLanguage Nothing "lbf")

-- | Laopang.
pattern Lbg :: Language
pattern Lbg = $(bakeLanguage Nothing "lbg")

-- | La'bi.
pattern Lbi :: Language
pattern Lbi = $(bakeLanguage Nothing "lbi")

-- | Ladakhi.
pattern Lbj :: Language
pattern Lbj = $(bakeLanguage Nothing "lbj")

-- | Central Bontok.
pattern Lbk :: Language
pattern Lbk = $(bakeLanguage Nothing "lbk")

-- | Libon Bikol.
pattern Lbl :: Language
pattern Lbl = $(bakeLanguage Nothing "lbl")

-- | Lodhi.
pattern Lbm :: Language
pattern Lbm = $(bakeLanguage Nothing "lbm")

-- | Rmeet.
pattern Lbn :: Language
pattern Lbn = $(bakeLanguage Nothing "lbn")

-- | Laven.
pattern Lbo :: Language
pattern Lbo = $(bakeLanguage Nothing "lbo")

-- | Wampar.
pattern Lbq :: Language
pattern Lbq = $(bakeLanguage Nothing "lbq")

-- | Lohorung.
pattern Lbr :: Language
pattern Lbr = $(bakeLanguage Nothing "lbr")

-- | Libyan Sign Language.
pattern Lbs :: Language
pattern Lbs = $(bakeLanguage Nothing "lbs")

-- | Lachi.
pattern Lbt :: Language
pattern Lbt = $(bakeLanguage Nothing "lbt")

-- | Labu.
pattern Lbu :: Language
pattern Lbu = $(bakeLanguage Nothing "lbu")

-- | Lavatbura-Lamusong.
pattern Lbv :: Language
pattern Lbv = $(bakeLanguage Nothing "lbv")

-- | Tolaki.
pattern Lbw :: Language
pattern Lbw = $(bakeLanguage Nothing "lbw")

-- | Lawangan.
pattern Lbx :: Language
pattern Lbx = $(bakeLanguage Nothing "lbx")

-- | Lamalama.
pattern Lby :: Language
pattern Lby = $(bakeLanguage Nothing "lby")

-- | Lardil.
pattern Lbz :: Language
pattern Lbz = $(bakeLanguage Nothing "lbz")

-- | Legenyem.
pattern Lcc :: Language
pattern Lcc = $(bakeLanguage Nothing "lcc")

-- | Lola.
pattern Lcd :: Language
pattern Lcd = $(bakeLanguage Nothing "lcd")

-- | Loncong.
pattern Lce :: Language
pattern Lce = $(bakeLanguage Nothing "lce")

-- | Lubu.
pattern Lcf :: Language
pattern Lcf = $(bakeLanguage Nothing "lcf")

-- | Luchazi.
pattern Lch :: Language
pattern Lch = $(bakeLanguage Nothing "lch")

-- | Lisela.
pattern Lcl :: Language
pattern Lcl = $(bakeLanguage Nothing "lcl")

-- | Tungag.
pattern Lcm :: Language
pattern Lcm = $(bakeLanguage Nothing "lcm")

-- | Western Lawa.
pattern Lcp :: Language
pattern Lcp = $(bakeLanguage Nothing "lcp")

-- | Luhu.
pattern Lcq :: Language
pattern Lcq = $(bakeLanguage Nothing "lcq")

-- | Lisabata-Nuniali.
pattern Lcs :: Language
pattern Lcs = $(bakeLanguage Nothing "lcs")

-- | Kla-Dan.
pattern Lda :: Language
pattern Lda = $(bakeLanguage Nothing "lda")

-- | Dũya.
pattern Ldb :: Language
pattern Ldb = $(bakeLanguage Nothing "ldb")

-- | Luri.
pattern Ldd :: Language
pattern Ldd = $(bakeLanguage Nothing "ldd")

-- | Lenyima.
pattern Ldg :: Language
pattern Ldg = $(bakeLanguage Nothing "ldg")

-- | Lamja-Dengsa-Tola.
pattern Ldh :: Language
pattern Ldh = $(bakeLanguage Nothing "ldh")

-- | Laari.
pattern Ldi :: Language
pattern Ldi = $(bakeLanguage Nothing "ldi")

-- | Lemoro.
pattern Ldj :: Language
pattern Ldj = $(bakeLanguage Nothing "ldj")

-- | Leelau.
pattern Ldk :: Language
pattern Ldk = $(bakeLanguage Nothing "ldk")

-- | Kaan.
pattern Ldl :: Language
pattern Ldl = $(bakeLanguage Nothing "ldl")

-- | Landoma.
pattern Ldm :: Language
pattern Ldm = $(bakeLanguage Nothing "ldm")

-- | Láadan.
pattern Ldn :: Language
pattern Ldn = $(bakeLanguage Nothing "ldn")

-- | Loo.
pattern Ldo :: Language
pattern Ldo = $(bakeLanguage Nothing "ldo")

-- | Tso.
pattern Ldp :: Language
pattern Ldp = $(bakeLanguage Nothing "ldp")

-- | Lufu.
pattern Ldq :: Language
pattern Ldq = $(bakeLanguage Nothing "ldq")

-- | Lega-Shabunda.
pattern Lea :: Language
pattern Lea = $(bakeLanguage Nothing "lea")

-- | Lala-Bisa.
pattern Leb :: Language
pattern Leb = $(bakeLanguage Nothing "leb")

-- | Leco.
pattern Lec :: Language
pattern Lec = $(bakeLanguage Nothing "lec")

-- | Lendu.
pattern Led :: Language
pattern Led = $(bakeLanguage Nothing "led")

-- | Lyélé.
pattern Lee :: Language
pattern Lee = $(bakeLanguage Nothing "lee")

-- | Lelemi.
pattern Lef :: Language
pattern Lef = $(bakeLanguage Nothing "lef")

-- | Lenje.
pattern Leh :: Language
pattern Leh = $(bakeLanguage Nothing "leh")

-- | Lemio.
pattern Lei :: Language
pattern Lei = $(bakeLanguage Nothing "lei")

-- | Lengola.
pattern Lej :: Language
pattern Lej = $(bakeLanguage Nothing "lej")

-- | Leipon.
pattern Lek :: Language
pattern Lek = $(bakeLanguage Nothing "lek")

-- | Lele (Democratic Republic of Congo).
pattern Lel :: Language
pattern Lel = $(bakeLanguage Nothing "lel")

-- | Nomaande.
pattern Lem :: Language
pattern Lem = $(bakeLanguage Nothing "lem")

-- | Lenca.
pattern Len :: Language
pattern Len = $(bakeLanguage Nothing "len")

-- | Leti (Cameroon).
pattern Leo :: Language
pattern Leo = $(bakeLanguage Nothing "leo")

-- | Lepcha.
pattern Lep :: Language
pattern Lep = $(bakeLanguage Nothing "lep")

-- | Lembena.
pattern Leq :: Language
pattern Leq = $(bakeLanguage Nothing "leq")

-- | Lenkau.
pattern Ler :: Language
pattern Ler = $(bakeLanguage Nothing "ler")

-- | Lese.
pattern Les :: Language
pattern Les = $(bakeLanguage Nothing "les")

-- | Lesing-Gelimi.
pattern Let :: Language
pattern Let = $(bakeLanguage Nothing "let")

-- | Kara (Papua New Guinea).
pattern Leu :: Language
pattern Leu = $(bakeLanguage Nothing "leu")

-- | Lamma.
pattern Lev :: Language
pattern Lev = $(bakeLanguage Nothing "lev")

-- | Ledo Kaili.
pattern Lew :: Language
pattern Lew = $(bakeLanguage Nothing "lew")

-- | Luang.
pattern Lex :: Language
pattern Lex = $(bakeLanguage Nothing "lex")

-- | Lemolang.
pattern Ley :: Language
pattern Ley = $(bakeLanguage Nothing "ley")

-- | Lezghian.
pattern Lez :: Language
pattern Lez = $(bakeLanguage Nothing "lez")

-- | Lefa.
pattern Lfa :: Language
pattern Lfa = $(bakeLanguage Nothing "lfa")

-- | Buu (Cameroon).
pattern Lfb :: Language
pattern Lfb = $(bakeLanguage Nothing "lfb")

-- | Lingua Franca Nova.
pattern Lfn :: Language
pattern Lfn = $(bakeLanguage Nothing "lfn")

-- | Lungga.
pattern Lga :: Language
pattern Lga = $(bakeLanguage Nothing "lga")

-- | Laghu.
pattern Lgb :: Language
pattern Lgb = $(bakeLanguage Nothing "lgb")

-- | Lugbara.
pattern Lgg :: Language
pattern Lgg = $(bakeLanguage Nothing "lgg")

-- | Laghuu.
pattern Lgh :: Language
pattern Lgh = $(bakeLanguage Nothing "lgh")

-- | Lengilu.
pattern Lgi :: Language
pattern Lgi = $(bakeLanguage Nothing "lgi")

-- | Lingarak.
pattern Lgk :: Language
pattern Lgk = $(bakeLanguage Nothing "lgk")

-- | Wala.
pattern Lgl :: Language
pattern Lgl = $(bakeLanguage Nothing "lgl")

-- | Lega-Mwenga.
pattern Lgm :: Language
pattern Lgm = $(bakeLanguage Nothing "lgm")

-- | T'apo.
pattern Lgn :: Language
pattern Lgn = $(bakeLanguage Nothing "lgn")

-- | Lango (South Sudan).
pattern Lgo :: Language
pattern Lgo = $(bakeLanguage Nothing "lgo")

-- | Logba.
pattern Lgq :: Language
pattern Lgq = $(bakeLanguage Nothing "lgq")

-- | Lengo.
pattern Lgr :: Language
pattern Lgr = $(bakeLanguage Nothing "lgr")

-- | Guinea-Bissau Sign Language.
pattern Lgs :: Language
pattern Lgs = $(bakeLanguage Nothing "lgs")

-- | Pahi.
pattern Lgt :: Language
pattern Lgt = $(bakeLanguage Nothing "lgt")

-- | Longgu.
pattern Lgu :: Language
pattern Lgu = $(bakeLanguage Nothing "lgu")

-- | Ligenza.
pattern Lgz :: Language
pattern Lgz = $(bakeLanguage Nothing "lgz")

-- | Laha (Viet Nam).
pattern Lha :: Language
pattern Lha = $(bakeLanguage Nothing "lha")

-- | Laha (Indonesia).
pattern Lhh :: Language
pattern Lhh = $(bakeLanguage Nothing "lhh")

-- | Lahu Shi.
pattern Lhi :: Language
pattern Lhi = $(bakeLanguage Nothing "lhi")

-- | Lahul Lohar.
pattern Lhl :: Language
pattern Lhl = $(bakeLanguage Nothing "lhl")

-- | Lhomi.
pattern Lhm :: Language
pattern Lhm = $(bakeLanguage Nothing "lhm")

-- | Lahanan.
pattern Lhn :: Language
pattern Lhn = $(bakeLanguage Nothing "lhn")

-- | Lhokpu.
pattern Lhp :: Language
pattern Lhp = $(bakeLanguage Nothing "lhp")

-- | Mlahsö.
pattern Lhs :: Language
pattern Lhs = $(bakeLanguage Nothing "lhs")

-- | Lo-Toga.
pattern Lht :: Language
pattern Lht = $(bakeLanguage Nothing "lht")

-- | Lahu.
pattern Lhu :: Language
pattern Lhu = $(bakeLanguage Nothing "lhu")

-- | West-Central Limba.
pattern Lia :: Language
pattern Lia = $(bakeLanguage Nothing "lia")

-- | Likum.
pattern Lib :: Language
pattern Lib = $(bakeLanguage Nothing "lib")

-- | Hlai.
pattern Lic :: Language
pattern Lic = $(bakeLanguage Nothing "lic")

-- | Nyindrou.
pattern Lid :: Language
pattern Lid = $(bakeLanguage Nothing "lid")

-- | Likila.
pattern Lie :: Language
pattern Lie = $(bakeLanguage Nothing "lie")

-- | Limbu.
pattern Lif :: Language
pattern Lif = $(bakeLanguage Nothing "lif")

-- | Ligbi.
pattern Lig :: Language
pattern Lig = $(bakeLanguage Nothing "lig")

-- | Lihir.
pattern Lih :: Language
pattern Lih = $(bakeLanguage Nothing "lih")

-- | Ligurian.
pattern Lij :: Language
pattern Lij = $(bakeLanguage Nothing "lij")

-- | Lika.
pattern Lik :: Language
pattern Lik = $(bakeLanguage Nothing "lik")

-- | Lillooet.
pattern Lil :: Language
pattern Lil = $(bakeLanguage Nothing "lil")

-- | Liki.
pattern Lio :: Language
pattern Lio = $(bakeLanguage Nothing "lio")

-- | Sekpele.
pattern Lip :: Language
pattern Lip = $(bakeLanguage Nothing "lip")

-- | Libido.
pattern Liq :: Language
pattern Liq = $(bakeLanguage Nothing "liq")

-- | Liberian English.
pattern Lir :: Language
pattern Lir = $(bakeLanguage Nothing "lir")

-- | Lisu.
pattern Lis :: Language
pattern Lis = $(bakeLanguage Nothing "lis")

-- | Logorik.
pattern Liu :: Language
pattern Liu = $(bakeLanguage Nothing "liu")

-- | Liv.
pattern Liv :: Language
pattern Liv = $(bakeLanguage Nothing "liv")

-- | Col.
pattern Liw :: Language
pattern Liw = $(bakeLanguage Nothing "liw")

-- | Liabuku.
pattern Lix :: Language
pattern Lix = $(bakeLanguage Nothing "lix")

-- | Banda-Bambari.
pattern Liy :: Language
pattern Liy = $(bakeLanguage Nothing "liy")

-- | Libinza.
pattern Liz :: Language
pattern Liz = $(bakeLanguage Nothing "liz")

-- | Golpa.
pattern Lja :: Language
pattern Lja = $(bakeLanguage Nothing "lja")

-- | Rampi.
pattern Lje :: Language
pattern Lje = $(bakeLanguage Nothing "lje")

-- | Laiyolo.
pattern Lji :: Language
pattern Lji = $(bakeLanguage Nothing "lji")

-- | Li'o.
pattern Ljl :: Language
pattern Ljl = $(bakeLanguage Nothing "ljl")

-- | Lampung Api.
pattern Ljp :: Language
pattern Ljp = $(bakeLanguage Nothing "ljp")

-- | Yirandali.
pattern Ljw :: Language
pattern Ljw = $(bakeLanguage Nothing "ljw")

-- | Yuru.
pattern Ljx :: Language
pattern Ljx = $(bakeLanguage Nothing "ljx")

-- | Lakalei.
pattern Lka :: Language
pattern Lka = $(bakeLanguage Nothing "lka")

-- | Kabras.
pattern Lkb :: Language
pattern Lkb = $(bakeLanguage Nothing "lkb")

-- | Kucong.
pattern Lkc :: Language
pattern Lkc = $(bakeLanguage Nothing "lkc")

-- | Lakondê.
pattern Lkd :: Language
pattern Lkd = $(bakeLanguage Nothing "lkd")

-- | Kenyi.
pattern Lke :: Language
pattern Lke = $(bakeLanguage Nothing "lke")

-- | Lakha.
pattern Lkh :: Language
pattern Lkh = $(bakeLanguage Nothing "lkh")

-- | Laki.
pattern Lki :: Language
pattern Lki = $(bakeLanguage Nothing "lki")

-- | Remun.
pattern Lkj :: Language
pattern Lkj = $(bakeLanguage Nothing "lkj")

-- | Laeko-Libuat.
pattern Lkl :: Language
pattern Lkl = $(bakeLanguage Nothing "lkl")

-- | Kalaamaya.
pattern Lkm :: Language
pattern Lkm = $(bakeLanguage Nothing "lkm")

-- | Lakon.
pattern Lkn :: Language
pattern Lkn = $(bakeLanguage Nothing "lkn")

-- | Khayo.
pattern Lko :: Language
pattern Lko = $(bakeLanguage Nothing "lko")

-- | Päri.
pattern Lkr :: Language
pattern Lkr = $(bakeLanguage Nothing "lkr")

-- | Kisa.
pattern Lks :: Language
pattern Lks = $(bakeLanguage Nothing "lks")

-- | Lakota.
pattern Lkt :: Language
pattern Lkt = $(bakeLanguage Nothing "lkt")

-- | Kungkari.
pattern Lku :: Language
pattern Lku = $(bakeLanguage Nothing "lku")

-- | Lokoya.
pattern Lky :: Language
pattern Lky = $(bakeLanguage Nothing "lky")

-- | Lala-Roba.
pattern Lla :: Language
pattern Lla = $(bakeLanguage Nothing "lla")

-- | Lolo.
pattern Llb :: Language
pattern Llb = $(bakeLanguage Nothing "llb")

-- | Lele (Guinea).
pattern Llc :: Language
pattern Llc = $(bakeLanguage Nothing "llc")

-- | Ladin.
pattern Lld :: Language
pattern Lld = $(bakeLanguage Nothing "lld")

-- | Lele (Papua New Guinea).
pattern Lle :: Language
pattern Lle = $(bakeLanguage Nothing "lle")

-- | Hermit.
pattern Llf :: Language
pattern Llf = $(bakeLanguage Nothing "llf")

-- | Lole.
pattern Llg :: Language
pattern Llg = $(bakeLanguage Nothing "llg")

-- | Lamu.
pattern Llh :: Language
pattern Llh = $(bakeLanguage Nothing "llh")

-- | Teke-Laali.
pattern Lli :: Language
pattern Lli = $(bakeLanguage Nothing "lli")

-- | Ladji Ladji.
pattern Llj :: Language
pattern Llj = $(bakeLanguage Nothing "llj")

-- | Lelak.
pattern Llk :: Language
pattern Llk = $(bakeLanguage Nothing "llk")

-- | Lilau.
pattern Lll :: Language
pattern Lll = $(bakeLanguage Nothing "lll")

-- | Lasalimu.
pattern Llm :: Language
pattern Llm = $(bakeLanguage Nothing "llm")

-- | Lele (Chad).
pattern Lln :: Language
pattern Lln = $(bakeLanguage Nothing "lln")

-- | North Efate.
pattern Llp :: Language
pattern Llp = $(bakeLanguage Nothing "llp")

-- | Lolak.
pattern Llq :: Language
pattern Llq = $(bakeLanguage Nothing "llq")

-- | Lithuanian Sign Language.
pattern Lls :: Language
pattern Lls = $(bakeLanguage Nothing "lls")

-- | Lau.
pattern Llu :: Language
pattern Llu = $(bakeLanguage Nothing "llu")

-- | Lauan.
pattern Llx :: Language
pattern Llx = $(bakeLanguage Nothing "llx")

-- | East Limba.
pattern Lma :: Language
pattern Lma = $(bakeLanguage Nothing "lma")

-- | Merei.
pattern Lmb :: Language
pattern Lmb = $(bakeLanguage Nothing "lmb")

-- | Limilngan.
pattern Lmc :: Language
pattern Lmc = $(bakeLanguage Nothing "lmc")

-- | Lumun.
pattern Lmd :: Language
pattern Lmd = $(bakeLanguage Nothing "lmd")

-- | Pévé.
pattern Lme :: Language
pattern Lme = $(bakeLanguage Nothing "lme")

-- | South Lembata.
pattern Lmf :: Language
pattern Lmf = $(bakeLanguage Nothing "lmf")

-- | Lamogai.
pattern Lmg :: Language
pattern Lmg = $(bakeLanguage Nothing "lmg")

-- | Lambichhong.
pattern Lmh :: Language
pattern Lmh = $(bakeLanguage Nothing "lmh")

-- | Lombi.
pattern Lmi :: Language
pattern Lmi = $(bakeLanguage Nothing "lmi")

-- | West Lembata.
pattern Lmj :: Language
pattern Lmj = $(bakeLanguage Nothing "lmj")

-- | Lamkang.
pattern Lmk :: Language
pattern Lmk = $(bakeLanguage Nothing "lmk")

-- | Hano.
pattern Lml :: Language
pattern Lml = $(bakeLanguage Nothing "lml")

-- | Lambadi.
pattern Lmn :: Language
pattern Lmn = $(bakeLanguage Nothing "lmn")

-- | Lombard.
pattern Lmo :: Language
pattern Lmo = $(bakeLanguage Nothing "lmo")

-- | Limbum.
pattern Lmp :: Language
pattern Lmp = $(bakeLanguage Nothing "lmp")

-- | Lamatuka.
pattern Lmq :: Language
pattern Lmq = $(bakeLanguage Nothing "lmq")

-- | Lamalera.
pattern Lmr :: Language
pattern Lmr = $(bakeLanguage Nothing "lmr")

-- | Lamenu.
pattern Lmu :: Language
pattern Lmu = $(bakeLanguage Nothing "lmu")

-- | Lomaiviti.
pattern Lmv :: Language
pattern Lmv = $(bakeLanguage Nothing "lmv")

-- | Lake Miwok.
pattern Lmw :: Language
pattern Lmw = $(bakeLanguage Nothing "lmw")

-- | Laimbue.
pattern Lmx :: Language
pattern Lmx = $(bakeLanguage Nothing "lmx")

-- | Lamboya.
pattern Lmy :: Language
pattern Lmy = $(bakeLanguage Nothing "lmy")

-- | Langbashe.
pattern Lna :: Language
pattern Lna = $(bakeLanguage Nothing "lna")

-- | Mbalanhu.
pattern Lnb :: Language
pattern Lnb = $(bakeLanguage Nothing "lnb")

-- | Lundayeh.
pattern Lnd :: Language
pattern Lnd = $(bakeLanguage Nothing "lnd")

-- | Langobardic.
pattern Lng :: Language
pattern Lng = $(bakeLanguage Nothing "lng")

-- | Lanoh.
pattern Lnh :: Language
pattern Lnh = $(bakeLanguage Nothing "lnh")

-- | Daantanai'.
pattern Lni :: Language
pattern Lni = $(bakeLanguage Nothing "lni")

-- | Leningitij.
pattern Lnj :: Language
pattern Lnj = $(bakeLanguage Nothing "lnj")

-- | South Central Banda.
pattern Lnl :: Language
pattern Lnl = $(bakeLanguage Nothing "lnl")

-- | Langam.
pattern Lnm :: Language
pattern Lnm = $(bakeLanguage Nothing "lnm")

-- | Lorediakarkar.
pattern Lnn :: Language
pattern Lnn = $(bakeLanguage Nothing "lnn")

-- | Lamnso'.
pattern Lns :: Language
pattern Lns = $(bakeLanguage Nothing "lns")

-- | Longuda.
pattern Lnu :: Language
pattern Lnu = $(bakeLanguage Nothing "lnu")

-- | Lanima.
pattern Lnw :: Language
pattern Lnw = $(bakeLanguage Nothing "lnw")

-- | Lonzo.
pattern Lnz :: Language
pattern Lnz = $(bakeLanguage Nothing "lnz")

-- | Loloda.
pattern Loa :: Language
pattern Loa = $(bakeLanguage Nothing "loa")

-- | Lobi.
pattern Lob :: Language
pattern Lob = $(bakeLanguage Nothing "lob")

-- | Inonhan.
pattern Loc :: Language
pattern Loc = $(bakeLanguage Nothing "loc")

-- | Saluan.
pattern Loe :: Language
pattern Loe = $(bakeLanguage Nothing "loe")

-- | Logol.
pattern Lof :: Language
pattern Lof = $(bakeLanguage Nothing "lof")

-- | Logo.
pattern Log :: Language
pattern Log = $(bakeLanguage Nothing "log")

-- | Laarim.
pattern Loh :: Language
pattern Loh = $(bakeLanguage Nothing "loh")

-- | Loma (Côte d'Ivoire).
pattern Loi :: Language
pattern Loi = $(bakeLanguage Nothing "loi")

-- | Lou.
pattern Loj :: Language
pattern Loj = $(bakeLanguage Nothing "loj")

-- | Loko.
pattern Lok :: Language
pattern Lok = $(bakeLanguage Nothing "lok")

-- | Mongo.
pattern Lol :: Language
pattern Lol = $(bakeLanguage Nothing "lol")

-- | Loma (Liberia).
pattern Lom :: Language
pattern Lom = $(bakeLanguage Nothing "lom")

-- | Malawi Lomwe.
pattern Lon :: Language
pattern Lon = $(bakeLanguage Nothing "lon")

-- | Lombo.
pattern Loo :: Language
pattern Loo = $(bakeLanguage Nothing "loo")

-- | Lopa.
pattern Lop :: Language
pattern Lop = $(bakeLanguage Nothing "lop")

-- | Lobala.
pattern Loq :: Language
pattern Loq = $(bakeLanguage Nothing "loq")

-- | Téén.
pattern Lor :: Language
pattern Lor = $(bakeLanguage Nothing "lor")

-- | Loniu.
pattern Los :: Language
pattern Los = $(bakeLanguage Nothing "los")

-- | Otuho.
pattern Lot :: Language
pattern Lot = $(bakeLanguage Nothing "lot")

-- | Louisiana Creole.
pattern Lou :: Language
pattern Lou = $(bakeLanguage Nothing "lou")

-- | Lopi.
pattern Lov :: Language
pattern Lov = $(bakeLanguage Nothing "lov")

-- | Tampias Lobu.
pattern Low :: Language
pattern Low = $(bakeLanguage Nothing "low")

-- | Loun.
pattern Lox :: Language
pattern Lox = $(bakeLanguage Nothing "lox")

-- | Loke.
pattern Loy :: Language
pattern Loy = $(bakeLanguage Nothing "loy")

-- | Lozi.
pattern Loz :: Language
pattern Loz = $(bakeLanguage Nothing "loz")

-- | Lelepa.
pattern Lpa :: Language
pattern Lpa = $(bakeLanguage Nothing "lpa")

-- | Lepki.
pattern Lpe :: Language
pattern Lpe = $(bakeLanguage Nothing "lpe")

-- | Long Phuri Naga.
pattern Lpn :: Language
pattern Lpn = $(bakeLanguage Nothing "lpn")

-- | Lipo.
pattern Lpo :: Language
pattern Lpo = $(bakeLanguage Nothing "lpo")

-- | Lopit.
pattern Lpx :: Language
pattern Lpx = $(bakeLanguage Nothing "lpx")

-- | Logir.
pattern Lqr :: Language
pattern Lqr = $(bakeLanguage Nothing "lqr")

-- | Rara Bakati'.
pattern Lra :: Language
pattern Lra = $(bakeLanguage Nothing "lra")

-- | Northern Luri.
pattern Lrc :: Language
pattern Lrc = $(bakeLanguage Nothing "lrc")

-- | Laurentian.
pattern Lre :: Language
pattern Lre = $(bakeLanguage Nothing "lre")

-- | Laragia.
pattern Lrg :: Language
pattern Lrg = $(bakeLanguage Nothing "lrg")

-- | Marachi.
pattern Lri :: Language
pattern Lri = $(bakeLanguage Nothing "lri")

-- | Loarki.
pattern Lrk :: Language
pattern Lrk = $(bakeLanguage Nothing "lrk")

-- | Lari.
pattern Lrl :: Language
pattern Lrl = $(bakeLanguage Nothing "lrl")

-- | Marama.
pattern Lrm :: Language
pattern Lrm = $(bakeLanguage Nothing "lrm")

-- | Lorang.
pattern Lrn :: Language
pattern Lrn = $(bakeLanguage Nothing "lrn")

-- | Laro.
pattern Lro :: Language
pattern Lro = $(bakeLanguage Nothing "lro")

-- | Southern Yamphu.
pattern Lrr :: Language
pattern Lrr = $(bakeLanguage Nothing "lrr")

-- | Larantuka Malay.
pattern Lrt :: Language
pattern Lrt = $(bakeLanguage Nothing "lrt")

-- | Larevat.
pattern Lrv :: Language
pattern Lrv = $(bakeLanguage Nothing "lrv")

-- | Lemerig.
pattern Lrz :: Language
pattern Lrz = $(bakeLanguage Nothing "lrz")

-- | Lasgerdi.
pattern Lsa :: Language
pattern Lsa = $(bakeLanguage Nothing "lsa")

-- | Burundian Sign Language.
pattern Lsb :: Language
pattern Lsb = $(bakeLanguage Nothing "lsb")

-- | Albarradas Sign Language.
pattern Lsc :: Language
pattern Lsc = $(bakeLanguage Nothing "lsc")

-- | Lishana Deni.
pattern Lsd :: Language
pattern Lsd = $(bakeLanguage Nothing "lsd")

-- | Lusengo.
pattern Lse :: Language
pattern Lse = $(bakeLanguage Nothing "lse")

-- | Lish.
pattern Lsh :: Language
pattern Lsh = $(bakeLanguage Nothing "lsh")

-- | Lashi.
pattern Lsi :: Language
pattern Lsi = $(bakeLanguage Nothing "lsi")

-- | Latvian Sign Language.
pattern Lsl :: Language
pattern Lsl = $(bakeLanguage Nothing "lsl")

-- | Saamia.
pattern Lsm :: Language
pattern Lsm = $(bakeLanguage Nothing "lsm")

-- | Tibetan Sign Language.
pattern Lsn :: Language
pattern Lsn = $(bakeLanguage Nothing "lsn")

-- | Laos Sign Language.
pattern Lso :: Language
pattern Lso = $(bakeLanguage Nothing "lso")

-- | Panamanian Sign Language.
pattern Lsp :: Language
pattern Lsp = $(bakeLanguage Nothing "lsp")

-- | Aruop.
pattern Lsr :: Language
pattern Lsr = $(bakeLanguage Nothing "lsr")

-- | Lasi.
pattern Lss :: Language
pattern Lss = $(bakeLanguage Nothing "lss")

-- | Trinidad and Tobago Sign Language.
pattern Lst :: Language
pattern Lst = $(bakeLanguage Nothing "lst")

-- | Sivia Sign Language.
pattern Lsv :: Language
pattern Lsv = $(bakeLanguage Nothing "lsv")

-- | Seychelles Sign Language.
pattern Lsw :: Language
pattern Lsw = $(bakeLanguage Nothing "lsw")

-- | Mauritian Sign Language.
pattern Lsy :: Language
pattern Lsy = $(bakeLanguage Nothing "lsy")

-- | Late Middle Chinese.
pattern Ltc :: Language
pattern Ltc = $(bakeLanguage Nothing "ltc")

-- | Latgalian.
pattern Ltg :: Language
pattern Ltg = $(bakeLanguage Nothing "ltg")

-- | Thur.
pattern Lth :: Language
pattern Lth = $(bakeLanguage Nothing "lth")

-- | Leti (Indonesia).
pattern Lti :: Language
pattern Lti = $(bakeLanguage Nothing "lti")

-- | Latundê.
pattern Ltn :: Language
pattern Ltn = $(bakeLanguage Nothing "ltn")

-- | Tsotso.
pattern Lto :: Language
pattern Lto = $(bakeLanguage Nothing "lto")

-- | Tachoni.
pattern Lts :: Language
pattern Lts = $(bakeLanguage Nothing "lts")

-- | Latu.
pattern Ltu :: Language
pattern Ltu = $(bakeLanguage Nothing "ltu")

-- | Luba-Lulua.
pattern Lua :: Language
pattern Lua = $(bakeLanguage Nothing "lua")

-- | Aringa.
pattern Luc :: Language
pattern Luc = $(bakeLanguage Nothing "luc")

-- | Ludian.
pattern Lud :: Language
pattern Lud = $(bakeLanguage Nothing "lud")

-- | Luvale.
pattern Lue :: Language
pattern Lue = $(bakeLanguage Nothing "lue")

-- | Laua.
pattern Luf :: Language
pattern Luf = $(bakeLanguage Nothing "luf")

-- | Leizhou Chinese.
pattern Luh :: Language
pattern Luh = $(bakeLanguage Nothing "luh")

-- | Luiseño.
pattern Lui :: Language
pattern Lui = $(bakeLanguage Nothing "lui")

-- | Luna.
pattern Luj :: Language
pattern Luj = $(bakeLanguage Nothing "luj")

-- | Lunanakha.
pattern Luk :: Language
pattern Luk = $(bakeLanguage Nothing "luk")

-- | Olu'bo.
pattern Lul :: Language
pattern Lul = $(bakeLanguage Nothing "lul")

-- | Luimbi.
pattern Lum :: Language
pattern Lum = $(bakeLanguage Nothing "lum")

-- | Lunda.
pattern Lun :: Language
pattern Lun = $(bakeLanguage Nothing "lun")

-- | Luo (Kenya and Tanzania).
pattern Luo :: Language
pattern Luo = $(bakeLanguage Nothing "luo")

-- | Lumbu.
pattern Lup :: Language
pattern Lup = $(bakeLanguage Nothing "lup")

-- | Lucumi.
pattern Luq :: Language
pattern Luq = $(bakeLanguage Nothing "luq")

-- | Laura.
pattern Lur :: Language
pattern Lur = $(bakeLanguage Nothing "lur")

-- | Lushai.
pattern Lus :: Language
pattern Lus = $(bakeLanguage Nothing "lus")

-- | Lushootseed.
pattern Lut :: Language
pattern Lut = $(bakeLanguage Nothing "lut")

-- | Lumba-Yakkha.
pattern Luu :: Language
pattern Luu = $(bakeLanguage Nothing "luu")

-- | Luwati.
pattern Luv :: Language
pattern Luv = $(bakeLanguage Nothing "luv")

-- | Luo (Cameroon).
pattern Luw :: Language
pattern Luw = $(bakeLanguage Nothing "luw")

-- | Luyia.
pattern Luy :: Language
pattern Luy = $(bakeLanguage Nothing "luy")

-- | Southern Luri.
pattern Luz :: Language
pattern Luz = $(bakeLanguage Nothing "luz")

-- | Maku'a.
pattern Lva :: Language
pattern Lva = $(bakeLanguage Nothing "lva")

-- | Lavi.
pattern Lvi :: Language
pattern Lvi = $(bakeLanguage Nothing "lvi")

-- | Lavukaleve.
pattern Lvk :: Language
pattern Lvk = $(bakeLanguage Nothing "lvk")

-- | Lwel.
pattern Lvl :: Language
pattern Lvl = $(bakeLanguage Nothing "lvl")

-- | Standard Latvian.
pattern Lvs :: Language
pattern Lvs = $(bakeLanguage Nothing "lvs")

-- | Levuka.
pattern Lvu :: Language
pattern Lvu = $(bakeLanguage Nothing "lvu")

-- | Lwalu.
pattern Lwa :: Language
pattern Lwa = $(bakeLanguage Nothing "lwa")

-- | Lewo Eleng.
pattern Lwe :: Language
pattern Lwe = $(bakeLanguage Nothing "lwe")

-- | Wanga.
pattern Lwg :: Language
pattern Lwg = $(bakeLanguage Nothing "lwg")

-- | White Lachi.
pattern Lwh :: Language
pattern Lwh = $(bakeLanguage Nothing "lwh")

-- | Eastern Lawa.
pattern Lwl :: Language
pattern Lwl = $(bakeLanguage Nothing "lwl")

-- | Laomian.
pattern Lwm :: Language
pattern Lwm = $(bakeLanguage Nothing "lwm")

-- | Luwo.
pattern Lwo :: Language
pattern Lwo = $(bakeLanguage Nothing "lwo")

-- | Malawian Sign Language.
pattern Lws :: Language
pattern Lws = $(bakeLanguage Nothing "lws")

-- | Lewotobi.
pattern Lwt :: Language
pattern Lwt = $(bakeLanguage Nothing "lwt")

-- | Lawu.
pattern Lwu :: Language
pattern Lwu = $(bakeLanguage Nothing "lwu")

-- | Lewo.
pattern Lww :: Language
pattern Lww = $(bakeLanguage Nothing "lww")

-- | Lakurumau.
pattern Lxm :: Language
pattern Lxm = $(bakeLanguage Nothing "lxm")

-- | Layakha.
pattern Lya :: Language
pattern Lya = $(bakeLanguage Nothing "lya")

-- | Lyngngam.
pattern Lyg :: Language
pattern Lyg = $(bakeLanguage Nothing "lyg")

-- | Luyana.
pattern Lyn :: Language
pattern Lyn = $(bakeLanguage Nothing "lyn")

-- | Literary Chinese.
pattern Lzh :: Language
pattern Lzh = $(bakeLanguage Nothing "lzh")

-- | Litzlitz.
pattern Lzl :: Language
pattern Lzl = $(bakeLanguage Nothing "lzl")

-- | Leinong Naga.
pattern Lzn :: Language
pattern Lzn = $(bakeLanguage Nothing "lzn")

-- | Laz.
pattern Lzz :: Language
pattern Lzz = $(bakeLanguage Nothing "lzz")

-- | San Jerónimo Tecóatl Mazatec.
pattern Maa :: Language
pattern Maa = $(bakeLanguage Nothing "maa")

-- | Yutanduchi Mixtec.
pattern Mab :: Language
pattern Mab = $(bakeLanguage Nothing "mab")

-- | Madurese.
pattern Mad :: Language
pattern Mad = $(bakeLanguage Nothing "mad")

-- | Bo-Rukul.
pattern Mae :: Language
pattern Mae = $(bakeLanguage Nothing "mae")

-- | Mafa.
pattern Maf :: Language
pattern Maf = $(bakeLanguage Nothing "maf")

-- | Magahi.
pattern Mag :: Language
pattern Mag = $(bakeLanguage Nothing "mag")

-- | Maithili.
pattern Mai :: Language
pattern Mai = $(bakeLanguage Nothing "mai")

-- | Jalapa De Díaz Mazatec.
pattern Maj :: Language
pattern Maj = $(bakeLanguage Nothing "maj")

-- | Makasar.
pattern Mak :: Language
pattern Mak = $(bakeLanguage Nothing "mak")

-- | Mam.
pattern Mam :: Language
pattern Mam = $(bakeLanguage Nothing "mam")

-- | Mandingo.
pattern Man :: Language
pattern Man = $(bakeLanguage Nothing "man")

-- | Chiquihuitlán Mazatec.
pattern Maq :: Language
pattern Maq = $(bakeLanguage Nothing "maq")

-- | Masai.
pattern Mas :: Language
pattern Mas = $(bakeLanguage Nothing "mas")

-- | San Francisco Matlatzinca.
pattern Mat :: Language
pattern Mat = $(bakeLanguage Nothing "mat")

-- | Huautla Mazatec.
pattern Mau :: Language
pattern Mau = $(bakeLanguage Nothing "mau")

-- | Sateré-Mawé.
pattern Mav :: Language
pattern Mav = $(bakeLanguage Nothing "mav")

-- | Mampruli.
pattern Maw :: Language
pattern Maw = $(bakeLanguage Nothing "maw")

-- | North Moluccan Malay.
pattern Max :: Language
pattern Max = $(bakeLanguage Nothing "max")

-- | Central Mazahua.
pattern Maz :: Language
pattern Maz = $(bakeLanguage Nothing "maz")

-- | Higaonon.
pattern Mba :: Language
pattern Mba = $(bakeLanguage Nothing "mba")

-- | Western Bukidnon Manobo.
pattern Mbb :: Language
pattern Mbb = $(bakeLanguage Nothing "mbb")

-- | Macushi.
pattern Mbc :: Language
pattern Mbc = $(bakeLanguage Nothing "mbc")

-- | Dibabawon Manobo.
pattern Mbd :: Language
pattern Mbd = $(bakeLanguage Nothing "mbd")

-- | Molale.
pattern Mbe :: Language
pattern Mbe = $(bakeLanguage Nothing "mbe")

-- | Baba Malay.
pattern Mbf :: Language
pattern Mbf = $(bakeLanguage Nothing "mbf")

-- | Mangseng.
pattern Mbh :: Language
pattern Mbh = $(bakeLanguage Nothing "mbh")

-- | Ilianen Manobo.
pattern Mbi :: Language
pattern Mbi = $(bakeLanguage Nothing "mbi")

-- | Nadëb.
pattern Mbj :: Language
pattern Mbj = $(bakeLanguage Nothing "mbj")

-- | Malol.
pattern Mbk :: Language
pattern Mbk = $(bakeLanguage Nothing "mbk")

-- | Maxakalí.
pattern Mbl :: Language
pattern Mbl = $(bakeLanguage Nothing "mbl")

-- | Ombamba.
pattern Mbm :: Language
pattern Mbm = $(bakeLanguage Nothing "mbm")

-- | Macaguán.
pattern Mbn :: Language
pattern Mbn = $(bakeLanguage Nothing "mbn")

-- | Mbo (Cameroon).
pattern Mbo :: Language
pattern Mbo = $(bakeLanguage Nothing "mbo")

-- | Malayo.
pattern Mbp :: Language
pattern Mbp = $(bakeLanguage Nothing "mbp")

-- | Maisin.
pattern Mbq :: Language
pattern Mbq = $(bakeLanguage Nothing "mbq")

-- | Nukak Makú.
pattern Mbr :: Language
pattern Mbr = $(bakeLanguage Nothing "mbr")

-- | Sarangani Manobo.
pattern Mbs :: Language
pattern Mbs = $(bakeLanguage Nothing "mbs")

-- | Matigsalug Manobo.
pattern Mbt :: Language
pattern Mbt = $(bakeLanguage Nothing "mbt")

-- | Mbula-Bwazza.
pattern Mbu :: Language
pattern Mbu = $(bakeLanguage Nothing "mbu")

-- | Mbulungish.
pattern Mbv :: Language
pattern Mbv = $(bakeLanguage Nothing "mbv")

-- | Maring.
pattern Mbw :: Language
pattern Mbw = $(bakeLanguage Nothing "mbw")

-- | Mari (East Sepik Province).
pattern Mbx :: Language
pattern Mbx = $(bakeLanguage Nothing "mbx")

-- | Memoni.
pattern Mby :: Language
pattern Mby = $(bakeLanguage Nothing "mby")

-- | Amoltepec Mixtec.
pattern Mbz :: Language
pattern Mbz = $(bakeLanguage Nothing "mbz")

-- | Maca.
pattern Mca :: Language
pattern Mca = $(bakeLanguage Nothing "mca")

-- | Machiguenga.
pattern Mcb :: Language
pattern Mcb = $(bakeLanguage Nothing "mcb")

-- | Bitur.
pattern Mcc :: Language
pattern Mcc = $(bakeLanguage Nothing "mcc")

-- | Sharanahua.
pattern Mcd :: Language
pattern Mcd = $(bakeLanguage Nothing "mcd")

-- | Itundujia Mixtec.
pattern Mce :: Language
pattern Mce = $(bakeLanguage Nothing "mce")

-- | Matsés.
pattern Mcf :: Language
pattern Mcf = $(bakeLanguage Nothing "mcf")

-- | Mapoyo.
pattern Mcg :: Language
pattern Mcg = $(bakeLanguage Nothing "mcg")

-- | Maquiritari.
pattern Mch :: Language
pattern Mch = $(bakeLanguage Nothing "mch")

-- | Mese.
pattern Mci :: Language
pattern Mci = $(bakeLanguage Nothing "mci")

-- | Mvanip.
pattern Mcj :: Language
pattern Mcj = $(bakeLanguage Nothing "mcj")

-- | Mbunda.
pattern Mck :: Language
pattern Mck = $(bakeLanguage Nothing "mck")

-- | Macaguaje.
pattern Mcl :: Language
pattern Mcl = $(bakeLanguage Nothing "mcl")

-- | Malaccan Creole Portuguese.
pattern Mcm :: Language
pattern Mcm = $(bakeLanguage Nothing "mcm")

-- | Masana.
pattern Mcn :: Language
pattern Mcn = $(bakeLanguage Nothing "mcn")

-- | Coatlán Mixe.
pattern Mco :: Language
pattern Mco = $(bakeLanguage Nothing "mco")

-- | Makaa.
pattern Mcp :: Language
pattern Mcp = $(bakeLanguage Nothing "mcp")

-- | Ese.
pattern Mcq :: Language
pattern Mcq = $(bakeLanguage Nothing "mcq")

-- | Menya.
pattern Mcr :: Language
pattern Mcr = $(bakeLanguage Nothing "mcr")

-- | Mambai.
pattern Mcs :: Language
pattern Mcs = $(bakeLanguage Nothing "mcs")

-- | Mengisa.
pattern Mct :: Language
pattern Mct = $(bakeLanguage Nothing "mct")

-- | Cameroon Mambila.
pattern Mcu :: Language
pattern Mcu = $(bakeLanguage Nothing "mcu")

-- | Minanibai.
pattern Mcv :: Language
pattern Mcv = $(bakeLanguage Nothing "mcv")

-- | Mawa (Chad).
pattern Mcw :: Language
pattern Mcw = $(bakeLanguage Nothing "mcw")

-- | Mpiemo.
pattern Mcx :: Language
pattern Mcx = $(bakeLanguage Nothing "mcx")

-- | South Watut.
pattern Mcy :: Language
pattern Mcy = $(bakeLanguage Nothing "mcy")

-- | Mawan.
pattern Mcz :: Language
pattern Mcz = $(bakeLanguage Nothing "mcz")

-- | Mada (Nigeria).
pattern Mda :: Language
pattern Mda = $(bakeLanguage Nothing "mda")

-- | Morigi.
pattern Mdb :: Language
pattern Mdb = $(bakeLanguage Nothing "mdb")

-- | Soq.
pattern Mdc :: Language
pattern Mdc = $(bakeLanguage Nothing "mdc")

-- | Mbum.
pattern Mdd :: Language
pattern Mdd = $(bakeLanguage Nothing "mdd")

-- | Maba (Chad).
pattern Mde :: Language
pattern Mde = $(bakeLanguage Nothing "mde")

-- | Moksha.
pattern Mdf :: Language
pattern Mdf = $(bakeLanguage Nothing "mdf")

-- | Massalat.
pattern Mdg :: Language
pattern Mdg = $(bakeLanguage Nothing "mdg")

-- | Maguindanaon.
pattern Mdh :: Language
pattern Mdh = $(bakeLanguage Nothing "mdh")

-- | Mamvu.
pattern Mdi :: Language
pattern Mdi = $(bakeLanguage Nothing "mdi")

-- | Mangbetu.
pattern Mdj :: Language
pattern Mdj = $(bakeLanguage Nothing "mdj")

-- | Mangbutu.
pattern Mdk :: Language
pattern Mdk = $(bakeLanguage Nothing "mdk")

-- | Maltese Sign Language.
pattern Mdl :: Language
pattern Mdl = $(bakeLanguage Nothing "mdl")

-- | Mayogo.
pattern Mdm :: Language
pattern Mdm = $(bakeLanguage Nothing "mdm")

-- | Mbati.
pattern Mdn :: Language
pattern Mdn = $(bakeLanguage Nothing "mdn")

-- | Mbala.
pattern Mdp :: Language
pattern Mdp = $(bakeLanguage Nothing "mdp")

-- | Mbole.
pattern Mdq :: Language
pattern Mdq = $(bakeLanguage Nothing "mdq")

-- | Mandar.
pattern Mdr :: Language
pattern Mdr = $(bakeLanguage Nothing "mdr")

-- | Maria (Papua New Guinea).
pattern Mds :: Language
pattern Mds = $(bakeLanguage Nothing "mds")

-- | Mbere.
pattern Mdt :: Language
pattern Mdt = $(bakeLanguage Nothing "mdt")

-- | Mboko.
pattern Mdu :: Language
pattern Mdu = $(bakeLanguage Nothing "mdu")

-- | Santa Lucía Monteverde Mixtec.
pattern Mdv :: Language
pattern Mdv = $(bakeLanguage Nothing "mdv")

-- | Mbosi.
pattern Mdw :: Language
pattern Mdw = $(bakeLanguage Nothing "mdw")

-- | Dizin.
pattern Mdx :: Language
pattern Mdx = $(bakeLanguage Nothing "mdx")

-- | Male.
pattern Mdy :: Language
pattern Mdy = $(bakeLanguage Nothing "mdy")

-- | Suruí Do Pará.
pattern Mdz :: Language
pattern Mdz = $(bakeLanguage Nothing "mdz")

-- | Menka.
pattern Mea :: Language
pattern Mea = $(bakeLanguage Nothing "mea")

-- | Ikobi.
pattern Meb :: Language
pattern Meb = $(bakeLanguage Nothing "meb")

-- | Marra.
pattern Mec :: Language
pattern Mec = $(bakeLanguage Nothing "mec")

-- | Melpa.
pattern Med :: Language
pattern Med = $(bakeLanguage Nothing "med")

-- | Mengen.
pattern Mee :: Language
pattern Mee = $(bakeLanguage Nothing "mee")

-- | Megam.
pattern Mef :: Language
pattern Mef = $(bakeLanguage Nothing "mef")

-- | Southwestern Tlaxiaco Mixtec.
pattern Meh :: Language
pattern Meh = $(bakeLanguage Nothing "meh")

-- | Midob.
pattern Mei :: Language
pattern Mei = $(bakeLanguage Nothing "mei")

-- | Meyah.
pattern Mej :: Language
pattern Mej = $(bakeLanguage Nothing "mej")

-- | Mekeo.
pattern Mek :: Language
pattern Mek = $(bakeLanguage Nothing "mek")

-- | Central Melanau.
pattern Mel :: Language
pattern Mel = $(bakeLanguage Nothing "mel")

-- | Mangala.
pattern Mem :: Language
pattern Mem = $(bakeLanguage Nothing "mem")

-- | Mende (Sierra Leone).
pattern Men :: Language
pattern Men = $(bakeLanguage Nothing "men")

-- | Kedah Malay.
pattern Meo :: Language
pattern Meo = $(bakeLanguage Nothing "meo")

-- | Miriwoong.
pattern Mep :: Language
pattern Mep = $(bakeLanguage Nothing "mep")

-- | Merey.
pattern Meq :: Language
pattern Meq = $(bakeLanguage Nothing "meq")

-- | Meru.
pattern Mer :: Language
pattern Mer = $(bakeLanguage Nothing "mer")

-- | Masmaje.
pattern Mes :: Language
pattern Mes = $(bakeLanguage Nothing "mes")

-- | Mato.
pattern Met :: Language
pattern Met = $(bakeLanguage Nothing "met")

-- | Motu.
pattern Meu :: Language
pattern Meu = $(bakeLanguage Nothing "meu")

-- | Mano.
pattern Mev :: Language
pattern Mev = $(bakeLanguage Nothing "mev")

-- | Maaka.
pattern Mew :: Language
pattern Mew = $(bakeLanguage Nothing "mew")

-- | Hassaniyya.
pattern Mey :: Language
pattern Mey = $(bakeLanguage Nothing "mey")

-- | Menominee.
pattern Mez :: Language
pattern Mez = $(bakeLanguage Nothing "mez")

-- | Pattani Malay.
pattern Mfa :: Language
pattern Mfa = $(bakeLanguage Nothing "mfa")

-- | Bangka.
pattern Mfb :: Language
pattern Mfb = $(bakeLanguage Nothing "mfb")

-- | Mba.
pattern Mfc :: Language
pattern Mfc = $(bakeLanguage Nothing "mfc")

-- | Mendankwe-Nkwen.
pattern Mfd :: Language
pattern Mfd = $(bakeLanguage Nothing "mfd")

-- | Morisyen.
pattern Mfe :: Language
pattern Mfe = $(bakeLanguage Nothing "mfe")

-- | Naki.
pattern Mff :: Language
pattern Mff = $(bakeLanguage Nothing "mff")

-- | Mogofin.
pattern Mfg :: Language
pattern Mfg = $(bakeLanguage Nothing "mfg")

-- | Matal.
pattern Mfh :: Language
pattern Mfh = $(bakeLanguage Nothing "mfh")

-- | Wandala.
pattern Mfi :: Language
pattern Mfi = $(bakeLanguage Nothing "mfi")

-- | Mefele.
pattern Mfj :: Language
pattern Mfj = $(bakeLanguage Nothing "mfj")

-- | North Mofu.
pattern Mfk :: Language
pattern Mfk = $(bakeLanguage Nothing "mfk")

-- | Putai.
pattern Mfl :: Language
pattern Mfl = $(bakeLanguage Nothing "mfl")

-- | Marghi South.
pattern Mfm :: Language
pattern Mfm = $(bakeLanguage Nothing "mfm")

-- | Cross River Mbembe.
pattern Mfn :: Language
pattern Mfn = $(bakeLanguage Nothing "mfn")

-- | Mbe.
pattern Mfo :: Language
pattern Mfo = $(bakeLanguage Nothing "mfo")

-- | Makassar Malay.
pattern Mfp :: Language
pattern Mfp = $(bakeLanguage Nothing "mfp")

-- | Moba.
pattern Mfq :: Language
pattern Mfq = $(bakeLanguage Nothing "mfq")

-- | Marrithiyel.
pattern Mfr :: Language
pattern Mfr = $(bakeLanguage Nothing "mfr")

-- | Mexican Sign Language.
pattern Mfs :: Language
pattern Mfs = $(bakeLanguage Nothing "mfs")

-- | Mokerang.
pattern Mft :: Language
pattern Mft = $(bakeLanguage Nothing "mft")

-- | Mbwela.
pattern Mfu :: Language
pattern Mfu = $(bakeLanguage Nothing "mfu")

-- | Mandjak.
pattern Mfv :: Language
pattern Mfv = $(bakeLanguage Nothing "mfv")

-- | Mulaha.
pattern Mfw :: Language
pattern Mfw = $(bakeLanguage Nothing "mfw")

-- | Melo.
pattern Mfx :: Language
pattern Mfx = $(bakeLanguage Nothing "mfx")

-- | Mayo.
pattern Mfy :: Language
pattern Mfy = $(bakeLanguage Nothing "mfy")

-- | Mabaan.
pattern Mfz :: Language
pattern Mfz = $(bakeLanguage Nothing "mfz")

-- | Middle Irish (900-1200).
pattern Mga :: Language
pattern Mga = $(bakeLanguage Nothing "mga")

-- | Mararit.
pattern Mgb :: Language
pattern Mgb = $(bakeLanguage Nothing "mgb")

-- | Morokodo.
pattern Mgc :: Language
pattern Mgc = $(bakeLanguage Nothing "mgc")

-- | Moru.
pattern Mgd :: Language
pattern Mgd = $(bakeLanguage Nothing "mgd")

-- | Mango.
pattern Mge :: Language
pattern Mge = $(bakeLanguage Nothing "mge")

-- | Maklew.
pattern Mgf :: Language
pattern Mgf = $(bakeLanguage Nothing "mgf")

-- | Mpumpong.
pattern Mgg :: Language
pattern Mgg = $(bakeLanguage Nothing "mgg")

-- | Makhuwa-Meetto.
pattern Mgh :: Language
pattern Mgh = $(bakeLanguage Nothing "mgh")

-- | Lijili.
pattern Mgi :: Language
pattern Mgi = $(bakeLanguage Nothing "mgi")

-- | Abureni.
pattern Mgj :: Language
pattern Mgj = $(bakeLanguage Nothing "mgj")

-- | Mawes.
pattern Mgk :: Language
pattern Mgk = $(bakeLanguage Nothing "mgk")

-- | Maleu-Kilenge.
pattern Mgl :: Language
pattern Mgl = $(bakeLanguage Nothing "mgl")

-- | Mambae.
pattern Mgm :: Language
pattern Mgm = $(bakeLanguage Nothing "mgm")

-- | Mbangi.
pattern Mgn :: Language
pattern Mgn = $(bakeLanguage Nothing "mgn")

-- | Meta'.
pattern Mgo :: Language
pattern Mgo = $(bakeLanguage Nothing "mgo")

-- | Eastern Magar.
pattern Mgp :: Language
pattern Mgp = $(bakeLanguage Nothing "mgp")

-- | Malila.
pattern Mgq :: Language
pattern Mgq = $(bakeLanguage Nothing "mgq")

-- | Mambwe-Lungu.
pattern Mgr :: Language
pattern Mgr = $(bakeLanguage Nothing "mgr")

-- | Manda (Tanzania).
pattern Mgs :: Language
pattern Mgs = $(bakeLanguage Nothing "mgs")

-- | Mongol.
pattern Mgt :: Language
pattern Mgt = $(bakeLanguage Nothing "mgt")

-- | Mailu.
pattern Mgu :: Language
pattern Mgu = $(bakeLanguage Nothing "mgu")

-- | Matengo.
pattern Mgv :: Language
pattern Mgv = $(bakeLanguage Nothing "mgv")

-- | Matumbi.
pattern Mgw :: Language
pattern Mgw = $(bakeLanguage Nothing "mgw")

-- | Mbunga.
pattern Mgy :: Language
pattern Mgy = $(bakeLanguage Nothing "mgy")

-- | Mbugwe.
pattern Mgz :: Language
pattern Mgz = $(bakeLanguage Nothing "mgz")

-- | Manda (India).
pattern Mha :: Language
pattern Mha = $(bakeLanguage Nothing "mha")

-- | Mahongwe.
pattern Mhb :: Language
pattern Mhb = $(bakeLanguage Nothing "mhb")

-- | Mocho.
pattern Mhc :: Language
pattern Mhc = $(bakeLanguage Nothing "mhc")

-- | Mbugu.
pattern Mhd :: Language
pattern Mhd = $(bakeLanguage Nothing "mhd")

-- | Besisi.
pattern Mhe :: Language
pattern Mhe = $(bakeLanguage Nothing "mhe")

-- | Mamaa.
pattern Mhf :: Language
pattern Mhf = $(bakeLanguage Nothing "mhf")

-- | Margu.
pattern Mhg :: Language
pattern Mhg = $(bakeLanguage Nothing "mhg")

-- | Ma'di.
pattern Mhi :: Language
pattern Mhi = $(bakeLanguage Nothing "mhi")

-- | Mogholi.
pattern Mhj :: Language
pattern Mhj = $(bakeLanguage Nothing "mhj")

-- | Mungaka.
pattern Mhk :: Language
pattern Mhk = $(bakeLanguage Nothing "mhk")

-- | Mauwake.
pattern Mhl :: Language
pattern Mhl = $(bakeLanguage Nothing "mhl")

-- | Makhuwa-Moniga.
pattern Mhm :: Language
pattern Mhm = $(bakeLanguage Nothing "mhm")

-- | Mòcheno.
pattern Mhn :: Language
pattern Mhn = $(bakeLanguage Nothing "mhn")

-- | Mashi (Zambia).
pattern Mho :: Language
pattern Mho = $(bakeLanguage Nothing "mho")

-- | Balinese Malay.
pattern Mhp :: Language
pattern Mhp = $(bakeLanguage Nothing "mhp")

-- | Mandan.
pattern Mhq :: Language
pattern Mhq = $(bakeLanguage Nothing "mhq")

-- | Eastern Mari.
pattern Mhr :: Language
pattern Mhr = $(bakeLanguage Nothing "mhr")

-- | Buru (Indonesia).
pattern Mhs :: Language
pattern Mhs = $(bakeLanguage Nothing "mhs")

-- | Mandahuaca.
pattern Mht :: Language
pattern Mht = $(bakeLanguage Nothing "mht")

-- | Digaro-Mishmi.
pattern Mhu :: Language
pattern Mhu = $(bakeLanguage Nothing "mhu")

-- | Mbukushu.
pattern Mhw :: Language
pattern Mhw = $(bakeLanguage Nothing "mhw")

-- | Maru.
pattern Mhx :: Language
pattern Mhx = $(bakeLanguage Nothing "mhx")

-- | Ma'anyan.
pattern Mhy :: Language
pattern Mhy = $(bakeLanguage Nothing "mhy")

-- | Mor (Mor Islands).
pattern Mhz :: Language
pattern Mhz = $(bakeLanguage Nothing "mhz")

-- | Miami.
pattern Mia :: Language
pattern Mia = $(bakeLanguage Nothing "mia")

-- | Atatláhuca Mixtec.
pattern Mib :: Language
pattern Mib = $(bakeLanguage Nothing "mib")

-- | Mi'kmaq.
pattern Mic :: Language
pattern Mic = $(bakeLanguage Nothing "mic")

-- | Mandaic.
pattern Mid :: Language
pattern Mid = $(bakeLanguage Nothing "mid")

-- | Ocotepec Mixtec.
pattern Mie :: Language
pattern Mie = $(bakeLanguage Nothing "mie")

-- | Mofu-Gudur.
pattern Mif :: Language
pattern Mif = $(bakeLanguage Nothing "mif")

-- | San Miguel El Grande Mixtec.
pattern Mig :: Language
pattern Mig = $(bakeLanguage Nothing "mig")

-- | Chayuco Mixtec.
pattern Mih :: Language
pattern Mih = $(bakeLanguage Nothing "mih")

-- | Chigmecatitlán Mixtec.
pattern Mii :: Language
pattern Mii = $(bakeLanguage Nothing "mii")

-- | Abar.
pattern Mij :: Language
pattern Mij = $(bakeLanguage Nothing "mij")

-- | Mikasuki.
pattern Mik :: Language
pattern Mik = $(bakeLanguage Nothing "mik")

-- | Peñoles Mixtec.
pattern Mil :: Language
pattern Mil = $(bakeLanguage Nothing "mil")

-- | Alacatlatzala Mixtec.
pattern Mim :: Language
pattern Mim = $(bakeLanguage Nothing "mim")

-- | Minangkabau.
pattern Min :: Language
pattern Min = $(bakeLanguage Nothing "min")

-- | Pinotepa Nacional Mixtec.
pattern Mio :: Language
pattern Mio = $(bakeLanguage Nothing "mio")

-- | Apasco-Apoala Mixtec.
pattern Mip :: Language
pattern Mip = $(bakeLanguage Nothing "mip")

-- | Mískito.
pattern Miq :: Language
pattern Miq = $(bakeLanguage Nothing "miq")

-- | Isthmus Mixe.
pattern Mir :: Language
pattern Mir = $(bakeLanguage Nothing "mir")

-- | Uncoded languages.
pattern Mis :: Language
pattern Mis = $(bakeLanguage Nothing "mis")

-- | Southern Puebla Mixtec.
pattern Mit :: Language
pattern Mit = $(bakeLanguage Nothing "mit")

-- | Cacaloxtepec Mixtec.
pattern Miu :: Language
pattern Miu = $(bakeLanguage Nothing "miu")

-- | Akoye.
pattern Miw :: Language
pattern Miw = $(bakeLanguage Nothing "miw")

-- | Mixtepec Mixtec.
pattern Mix :: Language
pattern Mix = $(bakeLanguage Nothing "mix")

-- | Ayutla Mixtec.
pattern Miy :: Language
pattern Miy = $(bakeLanguage Nothing "miy")

-- | Coatzospan Mixtec.
pattern Miz :: Language
pattern Miz = $(bakeLanguage Nothing "miz")

-- | Makalero.
pattern Mjb :: Language
pattern Mjb = $(bakeLanguage Nothing "mjb")

-- | San Juan Colorado Mixtec.
pattern Mjc :: Language
pattern Mjc = $(bakeLanguage Nothing "mjc")

-- | Northwest Maidu.
pattern Mjd :: Language
pattern Mjd = $(bakeLanguage Nothing "mjd")

-- | Muskum.
pattern Mje :: Language
pattern Mje = $(bakeLanguage Nothing "mje")

-- | Tu.
pattern Mjg :: Language
pattern Mjg = $(bakeLanguage Nothing "mjg")

-- | Mwera (Nyasa).
pattern Mjh :: Language
pattern Mjh = $(bakeLanguage Nothing "mjh")

-- | Kim Mun.
pattern Mji :: Language
pattern Mji = $(bakeLanguage Nothing "mji")

-- | Mawak.
pattern Mjj :: Language
pattern Mjj = $(bakeLanguage Nothing "mjj")

-- | Matukar.
pattern Mjk :: Language
pattern Mjk = $(bakeLanguage Nothing "mjk")

-- | Mandeali.
pattern Mjl :: Language
pattern Mjl = $(bakeLanguage Nothing "mjl")

-- | Medebur.
pattern Mjm :: Language
pattern Mjm = $(bakeLanguage Nothing "mjm")

-- | Ma (Papua New Guinea).
pattern Mjn :: Language
pattern Mjn = $(bakeLanguage Nothing "mjn")

-- | Malankuravan.
pattern Mjo :: Language
pattern Mjo = $(bakeLanguage Nothing "mjo")

-- | Malapandaram.
pattern Mjp :: Language
pattern Mjp = $(bakeLanguage Nothing "mjp")

-- | Malaryan.
pattern Mjq :: Language
pattern Mjq = $(bakeLanguage Nothing "mjq")

-- | Malavedan.
pattern Mjr :: Language
pattern Mjr = $(bakeLanguage Nothing "mjr")

-- | Miship.
pattern Mjs :: Language
pattern Mjs = $(bakeLanguage Nothing "mjs")

-- | Sauria Paharia.
pattern Mjt :: Language
pattern Mjt = $(bakeLanguage Nothing "mjt")

-- | Manna-Dora.
pattern Mju :: Language
pattern Mju = $(bakeLanguage Nothing "mju")

-- | Mannan.
pattern Mjv :: Language
pattern Mjv = $(bakeLanguage Nothing "mjv")

-- | Karbi.
pattern Mjw :: Language
pattern Mjw = $(bakeLanguage Nothing "mjw")

-- | Mahali.
pattern Mjx :: Language
pattern Mjx = $(bakeLanguage Nothing "mjx")

-- | Mahican.
pattern Mjy :: Language
pattern Mjy = $(bakeLanguage Nothing "mjy")

-- | Majhi.
pattern Mjz :: Language
pattern Mjz = $(bakeLanguage Nothing "mjz")

-- | Mbre.
pattern Mka :: Language
pattern Mka = $(bakeLanguage Nothing "mka")

-- | Mal Paharia.
pattern Mkb :: Language
pattern Mkb = $(bakeLanguage Nothing "mkb")

-- | Siliput.
pattern Mkc :: Language
pattern Mkc = $(bakeLanguage Nothing "mkc")

-- | Mawchi.
pattern Mke :: Language
pattern Mke = $(bakeLanguage Nothing "mke")

-- | Miya.
pattern Mkf :: Language
pattern Mkf = $(bakeLanguage Nothing "mkf")

-- | Mak (China).
pattern Mkg :: Language
pattern Mkg = $(bakeLanguage Nothing "mkg")

-- | Dhatki.
pattern Mki :: Language
pattern Mki = $(bakeLanguage Nothing "mki")

-- | Mokilese.
pattern Mkj :: Language
pattern Mkj = $(bakeLanguage Nothing "mkj")

-- | Byep.
pattern Mkk :: Language
pattern Mkk = $(bakeLanguage Nothing "mkk")

-- | Mokole.
pattern Mkl :: Language
pattern Mkl = $(bakeLanguage Nothing "mkl")

-- | Moklen.
pattern Mkm :: Language
pattern Mkm = $(bakeLanguage Nothing "mkm")

-- | Kupang Malay.
pattern Mkn :: Language
pattern Mkn = $(bakeLanguage Nothing "mkn")

-- | Mingang Doso.
pattern Mko :: Language
pattern Mko = $(bakeLanguage Nothing "mko")

-- | Moikodi.
pattern Mkp :: Language
pattern Mkp = $(bakeLanguage Nothing "mkp")

-- | Bay Miwok.
pattern Mkq :: Language
pattern Mkq = $(bakeLanguage Nothing "mkq")

-- | Malas.
pattern Mkr :: Language
pattern Mkr = $(bakeLanguage Nothing "mkr")

-- | Silacayoapan Mixtec.
pattern Mks :: Language
pattern Mks = $(bakeLanguage Nothing "mks")

-- | Vamale.
pattern Mkt :: Language
pattern Mkt = $(bakeLanguage Nothing "mkt")

-- | Konyanka Maninka.
pattern Mku :: Language
pattern Mku = $(bakeLanguage Nothing "mku")

-- | Mafea.
pattern Mkv :: Language
pattern Mkv = $(bakeLanguage Nothing "mkv")

-- | Kituba (Congo).
pattern Mkw :: Language
pattern Mkw = $(bakeLanguage Nothing "mkw")

-- | Kinamiging Manobo.
pattern Mkx :: Language
pattern Mkx = $(bakeLanguage Nothing "mkx")

-- | East Makian.
pattern Mky :: Language
pattern Mky = $(bakeLanguage Nothing "mky")

-- | Makasae.
pattern Mkz :: Language
pattern Mkz = $(bakeLanguage Nothing "mkz")

-- | Malo.
pattern Mla :: Language
pattern Mla = $(bakeLanguage Nothing "mla")

-- | Mbule.
pattern Mlb :: Language
pattern Mlb = $(bakeLanguage Nothing "mlb")

-- | Cao Lan.
pattern Mlc :: Language
pattern Mlc = $(bakeLanguage Nothing "mlc")

-- | Manambu.
pattern Mle :: Language
pattern Mle = $(bakeLanguage Nothing "mle")

-- | Mal.
pattern Mlf :: Language
pattern Mlf = $(bakeLanguage Nothing "mlf")

-- | Mape.
pattern Mlh :: Language
pattern Mlh = $(bakeLanguage Nothing "mlh")

-- | Malimpung.
pattern Mli :: Language
pattern Mli = $(bakeLanguage Nothing "mli")

-- | Miltu.
pattern Mlj :: Language
pattern Mlj = $(bakeLanguage Nothing "mlj")

-- | Ilwana.
pattern Mlk :: Language
pattern Mlk = $(bakeLanguage Nothing "mlk")

-- | Malua Bay.
pattern Mll :: Language
pattern Mll = $(bakeLanguage Nothing "mll")

-- | Mulam.
pattern Mlm :: Language
pattern Mlm = $(bakeLanguage Nothing "mlm")

-- | Malango.
pattern Mln :: Language
pattern Mln = $(bakeLanguage Nothing "mln")

-- | Mlomp.
pattern Mlo :: Language
pattern Mlo = $(bakeLanguage Nothing "mlo")

-- | Bargam.
pattern Mlp :: Language
pattern Mlp = $(bakeLanguage Nothing "mlp")

-- | Western Maninkakan.
pattern Mlq :: Language
pattern Mlq = $(bakeLanguage Nothing "mlq")

-- | Vame.
pattern Mlr :: Language
pattern Mlr = $(bakeLanguage Nothing "mlr")

-- | Masalit.
pattern Mls :: Language
pattern Mls = $(bakeLanguage Nothing "mls")

-- | To'abaita.
pattern Mlu :: Language
pattern Mlu = $(bakeLanguage Nothing "mlu")

-- | Motlav.
pattern Mlv :: Language
pattern Mlv = $(bakeLanguage Nothing "mlv")

-- | Moloko.
pattern Mlw :: Language
pattern Mlw = $(bakeLanguage Nothing "mlw")

-- | Malfaxal.
pattern Mlx :: Language
pattern Mlx = $(bakeLanguage Nothing "mlx")

-- | Malaynon.
pattern Mlz :: Language
pattern Mlz = $(bakeLanguage Nothing "mlz")

-- | Mama.
pattern Mma :: Language
pattern Mma = $(bakeLanguage Nothing "mma")

-- | Momina.
pattern Mmb :: Language
pattern Mmb = $(bakeLanguage Nothing "mmb")

-- | Michoacán Mazahua.
pattern Mmc :: Language
pattern Mmc = $(bakeLanguage Nothing "mmc")

-- | Maonan.
pattern Mmd :: Language
pattern Mmd = $(bakeLanguage Nothing "mmd")

-- | Mae.
pattern Mme :: Language
pattern Mme = $(bakeLanguage Nothing "mme")

-- | Mundat.
pattern Mmf :: Language
pattern Mmf = $(bakeLanguage Nothing "mmf")

-- | North Ambrym.
pattern Mmg :: Language
pattern Mmg = $(bakeLanguage Nothing "mmg")

-- | Mehináku.
pattern Mmh :: Language
pattern Mmh = $(bakeLanguage Nothing "mmh")

-- | Hember Avu.
pattern Mmi :: Language
pattern Mmi = $(bakeLanguage Nothing "mmi")

-- | Majhwar.
pattern Mmj :: Language
pattern Mmj = $(bakeLanguage Nothing "mmj")

-- | Mukha-Dora.
pattern Mmk :: Language
pattern Mmk = $(bakeLanguage Nothing "mmk")

-- | Man Met.
pattern Mml :: Language
pattern Mml = $(bakeLanguage Nothing "mml")

-- | Maii.
pattern Mmm :: Language
pattern Mmm = $(bakeLanguage Nothing "mmm")

-- | Mamanwa.
pattern Mmn :: Language
pattern Mmn = $(bakeLanguage Nothing "mmn")

-- | Mangga Buang.
pattern Mmo :: Language
pattern Mmo = $(bakeLanguage Nothing "mmo")

-- | Siawi.
pattern Mmp :: Language
pattern Mmp = $(bakeLanguage Nothing "mmp")

-- | Musak.
pattern Mmq :: Language
pattern Mmq = $(bakeLanguage Nothing "mmq")

-- | Western Xiangxi Miao.
pattern Mmr :: Language
pattern Mmr = $(bakeLanguage Nothing "mmr")

-- | Malalamai.
pattern Mmt :: Language
pattern Mmt = $(bakeLanguage Nothing "mmt")

-- | Mmaala.
pattern Mmu :: Language
pattern Mmu = $(bakeLanguage Nothing "mmu")

-- | Miriti.
pattern Mmv :: Language
pattern Mmv = $(bakeLanguage Nothing "mmv")

-- | Emae.
pattern Mmw :: Language
pattern Mmw = $(bakeLanguage Nothing "mmw")

-- | Madak.
pattern Mmx :: Language
pattern Mmx = $(bakeLanguage Nothing "mmx")

-- | Migaama.
pattern Mmy :: Language
pattern Mmy = $(bakeLanguage Nothing "mmy")

-- | Mabaale.
pattern Mmz :: Language
pattern Mmz = $(bakeLanguage Nothing "mmz")

-- | Mbula.
pattern Mna :: Language
pattern Mna = $(bakeLanguage Nothing "mna")

-- | Muna.
pattern Mnb :: Language
pattern Mnb = $(bakeLanguage Nothing "mnb")

-- | Manchu.
pattern Mnc :: Language
pattern Mnc = $(bakeLanguage Nothing "mnc")

-- | Mondé.
pattern Mnd :: Language
pattern Mnd = $(bakeLanguage Nothing "mnd")

-- | Naba.
pattern Mne :: Language
pattern Mne = $(bakeLanguage Nothing "mne")

-- | Mundani.
pattern Mnf :: Language
pattern Mnf = $(bakeLanguage Nothing "mnf")

-- | Eastern Mnong.
pattern Mng :: Language
pattern Mng = $(bakeLanguage Nothing "mng")

-- | Mono (Democratic Republic of Congo).
pattern Mnh :: Language
pattern Mnh = $(bakeLanguage Nothing "mnh")

-- | Manipuri.
pattern Mni :: Language
pattern Mni = $(bakeLanguage Nothing "mni")

-- | Munji.
pattern Mnj :: Language
pattern Mnj = $(bakeLanguage Nothing "mnj")

-- | Mandinka.
pattern Mnk :: Language
pattern Mnk = $(bakeLanguage Nothing "mnk")

-- | Tiale.
pattern Mnl :: Language
pattern Mnl = $(bakeLanguage Nothing "mnl")

-- | Mapena.
pattern Mnm :: Language
pattern Mnm = $(bakeLanguage Nothing "mnm")

-- | Southern Mnong.
pattern Mnn :: Language
pattern Mnn = $(bakeLanguage Nothing "mnn")

-- | Min Bei Chinese.
pattern Mnp :: Language
pattern Mnp = $(bakeLanguage Nothing "mnp")

-- | Minriq.
pattern Mnq :: Language
pattern Mnq = $(bakeLanguage Nothing "mnq")

-- | Mono (USA).
pattern Mnr :: Language
pattern Mnr = $(bakeLanguage Nothing "mnr")

-- | Mansi.
pattern Mns :: Language
pattern Mns = $(bakeLanguage Nothing "mns")

-- | Mer.
pattern Mnu :: Language
pattern Mnu = $(bakeLanguage Nothing "mnu")

-- | Rennell-Bellona.
pattern Mnv :: Language
pattern Mnv = $(bakeLanguage Nothing "mnv")

-- | Mon.
pattern Mnw :: Language
pattern Mnw = $(bakeLanguage Nothing "mnw")

-- | Manikion.
pattern Mnx :: Language
pattern Mnx = $(bakeLanguage Nothing "mnx")

-- | Manyawa.
pattern Mny :: Language
pattern Mny = $(bakeLanguage Nothing "mny")

-- | Moni.
pattern Mnz :: Language
pattern Mnz = $(bakeLanguage Nothing "mnz")

-- | Mwan.
pattern Moa :: Language
pattern Moa = $(bakeLanguage Nothing "moa")

-- | Mocoví.
pattern Moc :: Language
pattern Moc = $(bakeLanguage Nothing "moc")

-- | Mobilian.
pattern Mod :: Language
pattern Mod = $(bakeLanguage Nothing "mod")

-- | Innu.
pattern Moe :: Language
pattern Moe = $(bakeLanguage Nothing "moe")

-- | Mongondow.
pattern Mog :: Language
pattern Mog = $(bakeLanguage Nothing "mog")

-- | Mohawk.
pattern Moh :: Language
pattern Moh = $(bakeLanguage Nothing "moh")

-- | Mboi.
pattern Moi :: Language
pattern Moi = $(bakeLanguage Nothing "moi")

-- | Monzombo.
pattern Moj :: Language
pattern Moj = $(bakeLanguage Nothing "moj")

-- | Morori.
pattern Mok :: Language
pattern Mok = $(bakeLanguage Nothing "mok")

-- | Mangue.
pattern Mom :: Language
pattern Mom = $(bakeLanguage Nothing "mom")

-- | Monom.
pattern Moo :: Language
pattern Moo = $(bakeLanguage Nothing "moo")

-- | Mopán Maya.
pattern Mop :: Language
pattern Mop = $(bakeLanguage Nothing "mop")

-- | Mor (Bomberai Peninsula).
pattern Moq :: Language
pattern Moq = $(bakeLanguage Nothing "moq")

-- | Moro.
pattern Mor :: Language
pattern Mor = $(bakeLanguage Nothing "mor")

-- | Mossi.
pattern Mos :: Language
pattern Mos = $(bakeLanguage Nothing "mos")

-- | Barí.
pattern Mot :: Language
pattern Mot = $(bakeLanguage Nothing "mot")

-- | Mogum.
pattern Mou :: Language
pattern Mou = $(bakeLanguage Nothing "mou")

-- | Mohave.
pattern Mov :: Language
pattern Mov = $(bakeLanguage Nothing "mov")

-- | Moi (Congo).
pattern Mow :: Language
pattern Mow = $(bakeLanguage Nothing "mow")

-- | Molima.
pattern Mox :: Language
pattern Mox = $(bakeLanguage Nothing "mox")

-- | Shekkacho.
pattern Moy :: Language
pattern Moy = $(bakeLanguage Nothing "moy")

-- | Mukulu.
pattern Moz :: Language
pattern Moz = $(bakeLanguage Nothing "moz")

-- | Mpoto.
pattern Mpa :: Language
pattern Mpa = $(bakeLanguage Nothing "mpa")

-- | Malak Malak.
pattern Mpb :: Language
pattern Mpb = $(bakeLanguage Nothing "mpb")

-- | Mangarrayi.
pattern Mpc :: Language
pattern Mpc = $(bakeLanguage Nothing "mpc")

-- | Machinere.
pattern Mpd :: Language
pattern Mpd = $(bakeLanguage Nothing "mpd")

-- | Majang.
pattern Mpe :: Language
pattern Mpe = $(bakeLanguage Nothing "mpe")

-- | Marba.
pattern Mpg :: Language
pattern Mpg = $(bakeLanguage Nothing "mpg")

-- | Maung.
pattern Mph :: Language
pattern Mph = $(bakeLanguage Nothing "mph")

-- | Mpade.
pattern Mpi :: Language
pattern Mpi = $(bakeLanguage Nothing "mpi")

-- | Martu Wangka.
pattern Mpj :: Language
pattern Mpj = $(bakeLanguage Nothing "mpj")

-- | Mbara (Chad).
pattern Mpk :: Language
pattern Mpk = $(bakeLanguage Nothing "mpk")

-- | Middle Watut.
pattern Mpl :: Language
pattern Mpl = $(bakeLanguage Nothing "mpl")

-- | Yosondúa Mixtec.
pattern Mpm :: Language
pattern Mpm = $(bakeLanguage Nothing "mpm")

-- | Mindiri.
pattern Mpn :: Language
pattern Mpn = $(bakeLanguage Nothing "mpn")

-- | Miu.
pattern Mpo :: Language
pattern Mpo = $(bakeLanguage Nothing "mpo")

-- | Migabac.
pattern Mpp :: Language
pattern Mpp = $(bakeLanguage Nothing "mpp")

-- | Matís.
pattern Mpq :: Language
pattern Mpq = $(bakeLanguage Nothing "mpq")

-- | Vangunu.
pattern Mpr :: Language
pattern Mpr = $(bakeLanguage Nothing "mpr")

-- | Dadibi.
pattern Mps :: Language
pattern Mps = $(bakeLanguage Nothing "mps")

-- | Mian.
pattern Mpt :: Language
pattern Mpt = $(bakeLanguage Nothing "mpt")

-- | Makuráp.
pattern Mpu :: Language
pattern Mpu = $(bakeLanguage Nothing "mpu")

-- | Mungkip.
pattern Mpv :: Language
pattern Mpv = $(bakeLanguage Nothing "mpv")

-- | Mapidian.
pattern Mpw :: Language
pattern Mpw = $(bakeLanguage Nothing "mpw")

-- | Misima-Panaeati.
pattern Mpx :: Language
pattern Mpx = $(bakeLanguage Nothing "mpx")

-- | Mapia.
pattern Mpy :: Language
pattern Mpy = $(bakeLanguage Nothing "mpy")

-- | Mpi.
pattern Mpz :: Language
pattern Mpz = $(bakeLanguage Nothing "mpz")

-- | Maba (Indonesia).
pattern Mqa :: Language
pattern Mqa = $(bakeLanguage Nothing "mqa")

-- | Mbuko.
pattern Mqb :: Language
pattern Mqb = $(bakeLanguage Nothing "mqb")

-- | Mangole.
pattern Mqc :: Language
pattern Mqc = $(bakeLanguage Nothing "mqc")

-- | Matepi.
pattern Mqe :: Language
pattern Mqe = $(bakeLanguage Nothing "mqe")

-- | Momuna.
pattern Mqf :: Language
pattern Mqf = $(bakeLanguage Nothing "mqf")

-- | Kota Bangun Kutai Malay.
pattern Mqg :: Language
pattern Mqg = $(bakeLanguage Nothing "mqg")

-- | Tlazoyaltepec Mixtec.
pattern Mqh :: Language
pattern Mqh = $(bakeLanguage Nothing "mqh")

-- | Mariri.
pattern Mqi :: Language
pattern Mqi = $(bakeLanguage Nothing "mqi")

-- | Mamasa.
pattern Mqj :: Language
pattern Mqj = $(bakeLanguage Nothing "mqj")

-- | Rajah Kabunsuwan Manobo.
pattern Mqk :: Language
pattern Mqk = $(bakeLanguage Nothing "mqk")

-- | Mbelime.
pattern Mql :: Language
pattern Mql = $(bakeLanguage Nothing "mql")

-- | South Marquesan.
pattern Mqm :: Language
pattern Mqm = $(bakeLanguage Nothing "mqm")

-- | Moronene.
pattern Mqn :: Language
pattern Mqn = $(bakeLanguage Nothing "mqn")

-- | Modole.
pattern Mqo :: Language
pattern Mqo = $(bakeLanguage Nothing "mqo")

-- | Manipa.
pattern Mqp :: Language
pattern Mqp = $(bakeLanguage Nothing "mqp")

-- | Minokok.
pattern Mqq :: Language
pattern Mqq = $(bakeLanguage Nothing "mqq")

-- | Mander.
pattern Mqr :: Language
pattern Mqr = $(bakeLanguage Nothing "mqr")

-- | West Makian.
pattern Mqs :: Language
pattern Mqs = $(bakeLanguage Nothing "mqs")

-- | Mok.
pattern Mqt :: Language
pattern Mqt = $(bakeLanguage Nothing "mqt")

-- | Mandari.
pattern Mqu :: Language
pattern Mqu = $(bakeLanguage Nothing "mqu")

-- | Mosimo.
pattern Mqv :: Language
pattern Mqv = $(bakeLanguage Nothing "mqv")

-- | Murupi.
pattern Mqw :: Language
pattern Mqw = $(bakeLanguage Nothing "mqw")

-- | Mamuju.
pattern Mqx :: Language
pattern Mqx = $(bakeLanguage Nothing "mqx")

-- | Manggarai.
pattern Mqy :: Language
pattern Mqy = $(bakeLanguage Nothing "mqy")

-- | Pano.
pattern Mqz :: Language
pattern Mqz = $(bakeLanguage Nothing "mqz")

-- | Mlabri.
pattern Mra :: Language
pattern Mra = $(bakeLanguage Nothing "mra")

-- | Marino.
pattern Mrb :: Language
pattern Mrb = $(bakeLanguage Nothing "mrb")

-- | Maricopa.
pattern Mrc :: Language
pattern Mrc = $(bakeLanguage Nothing "mrc")

-- | Western Magar.
pattern Mrd :: Language
pattern Mrd = $(bakeLanguage Nothing "mrd")

-- | Martha's Vineyard Sign Language.
pattern Mre :: Language
pattern Mre = $(bakeLanguage Nothing "mre")

-- | Elseng.
pattern Mrf :: Language
pattern Mrf = $(bakeLanguage Nothing "mrf")

-- | Mising.
pattern Mrg :: Language
pattern Mrg = $(bakeLanguage Nothing "mrg")

-- | Mara Chin.
pattern Mrh :: Language
pattern Mrh = $(bakeLanguage Nothing "mrh")

-- | Western Mari.
pattern Mrj :: Language
pattern Mrj = $(bakeLanguage Nothing "mrj")

-- | Hmwaveke.
pattern Mrk :: Language
pattern Mrk = $(bakeLanguage Nothing "mrk")

-- | Mortlockese.
pattern Mrl :: Language
pattern Mrl = $(bakeLanguage Nothing "mrl")

-- | Merlav.
pattern Mrm :: Language
pattern Mrm = $(bakeLanguage Nothing "mrm")

-- | Cheke Holo.
pattern Mrn :: Language
pattern Mrn = $(bakeLanguage Nothing "mrn")

-- | Mru.
pattern Mro :: Language
pattern Mro = $(bakeLanguage Nothing "mro")

-- | Morouas.
pattern Mrp :: Language
pattern Mrp = $(bakeLanguage Nothing "mrp")

-- | North Marquesan.
pattern Mrq :: Language
pattern Mrq = $(bakeLanguage Nothing "mrq")

-- | Maria (India).
pattern Mrr :: Language
pattern Mrr = $(bakeLanguage Nothing "mrr")

-- | Maragus.
pattern Mrs :: Language
pattern Mrs = $(bakeLanguage Nothing "mrs")

-- | Marghi Central.
pattern Mrt :: Language
pattern Mrt = $(bakeLanguage Nothing "mrt")

-- | Mono (Cameroon).
pattern Mru :: Language
pattern Mru = $(bakeLanguage Nothing "mru")

-- | Mangareva.
pattern Mrv :: Language
pattern Mrv = $(bakeLanguage Nothing "mrv")

-- | Maranao.
pattern Mrw :: Language
pattern Mrw = $(bakeLanguage Nothing "mrw")

-- | Maremgi.
pattern Mrx :: Language
pattern Mrx = $(bakeLanguage Nothing "mrx")

-- | Mandaya.
pattern Mry :: Language
pattern Mry = $(bakeLanguage Nothing "mry")

-- | Marind.
pattern Mrz :: Language
pattern Mrz = $(bakeLanguage Nothing "mrz")

-- | Masbatenyo.
pattern Msb :: Language
pattern Msb = $(bakeLanguage Nothing "msb")

-- | Sankaran Maninka.
pattern Msc :: Language
pattern Msc = $(bakeLanguage Nothing "msc")

-- | Yucatec Maya Sign Language.
pattern Msd :: Language
pattern Msd = $(bakeLanguage Nothing "msd")

-- | Musey.
pattern Mse :: Language
pattern Mse = $(bakeLanguage Nothing "mse")

-- | Mekwei.
pattern Msf :: Language
pattern Msf = $(bakeLanguage Nothing "msf")

-- | Moraid.
pattern Msg :: Language
pattern Msg = $(bakeLanguage Nothing "msg")

-- | Masikoro Malagasy.
pattern Msh :: Language
pattern Msh = $(bakeLanguage Nothing "msh")

-- | Sabah Malay.
pattern Msi :: Language
pattern Msi = $(bakeLanguage Nothing "msi")

-- | Ma (Democratic Republic of Congo).
pattern Msj :: Language
pattern Msj = $(bakeLanguage Nothing "msj")

-- | Mansaka.
pattern Msk :: Language
pattern Msk = $(bakeLanguage Nothing "msk")

-- | Molof.
pattern Msl :: Language
pattern Msl = $(bakeLanguage Nothing "msl")

-- | Agusan Manobo.
pattern Msm :: Language
pattern Msm = $(bakeLanguage Nothing "msm")

-- | Vurës.
pattern Msn :: Language
pattern Msn = $(bakeLanguage Nothing "msn")

-- | Mombum.
pattern Mso :: Language
pattern Mso = $(bakeLanguage Nothing "mso")

-- | Maritsauá.
pattern Msp :: Language
pattern Msp = $(bakeLanguage Nothing "msp")

-- | Caac.
pattern Msq :: Language
pattern Msq = $(bakeLanguage Nothing "msq")

-- | Mongolian Sign Language.
pattern Msr :: Language
pattern Msr = $(bakeLanguage Nothing "msr")

-- | West Masela.
pattern Mss :: Language
pattern Mss = $(bakeLanguage Nothing "mss")

-- | Musom.
pattern Msu :: Language
pattern Msu = $(bakeLanguage Nothing "msu")

-- | Maslam.
pattern Msv :: Language
pattern Msv = $(bakeLanguage Nothing "msv")

-- | Mansoanka.
pattern Msw :: Language
pattern Msw = $(bakeLanguage Nothing "msw")

-- | Moresada.
pattern Msx :: Language
pattern Msx = $(bakeLanguage Nothing "msx")

-- | Aruamu.
pattern Msy :: Language
pattern Msy = $(bakeLanguage Nothing "msy")

-- | Momare.
pattern Msz :: Language
pattern Msz = $(bakeLanguage Nothing "msz")

-- | Cotabato Manobo.
pattern Mta :: Language
pattern Mta = $(bakeLanguage Nothing "mta")

-- | Anyin Morofo.
pattern Mtb :: Language
pattern Mtb = $(bakeLanguage Nothing "mtb")

-- | Munit.
pattern Mtc :: Language
pattern Mtc = $(bakeLanguage Nothing "mtc")

-- | Mualang.
pattern Mtd :: Language
pattern Mtd = $(bakeLanguage Nothing "mtd")

-- | Mono (Solomon Islands).
pattern Mte :: Language
pattern Mte = $(bakeLanguage Nothing "mte")

-- | Murik (Papua New Guinea).
pattern Mtf :: Language
pattern Mtf = $(bakeLanguage Nothing "mtf")

-- | Una.
pattern Mtg :: Language
pattern Mtg = $(bakeLanguage Nothing "mtg")

-- | Munggui.
pattern Mth :: Language
pattern Mth = $(bakeLanguage Nothing "mth")

-- | Maiwa (Papua New Guinea).
pattern Mti :: Language
pattern Mti = $(bakeLanguage Nothing "mti")

-- | Moskona.
pattern Mtj :: Language
pattern Mtj = $(bakeLanguage Nothing "mtj")

-- | Mbe'.
pattern Mtk :: Language
pattern Mtk = $(bakeLanguage Nothing "mtk")

-- | Montol.
pattern Mtl :: Language
pattern Mtl = $(bakeLanguage Nothing "mtl")

-- | Mator.
pattern Mtm :: Language
pattern Mtm = $(bakeLanguage Nothing "mtm")

-- | Matagalpa.
pattern Mtn :: Language
pattern Mtn = $(bakeLanguage Nothing "mtn")

-- | Totontepec Mixe.
pattern Mto :: Language
pattern Mto = $(bakeLanguage Nothing "mto")

-- | Wichí Lhamtés Nocten.
pattern Mtp :: Language
pattern Mtp = $(bakeLanguage Nothing "mtp")

-- | Muong.
pattern Mtq :: Language
pattern Mtq = $(bakeLanguage Nothing "mtq")

-- | Mewari.
pattern Mtr :: Language
pattern Mtr = $(bakeLanguage Nothing "mtr")

-- | Yora.
pattern Mts :: Language
pattern Mts = $(bakeLanguage Nothing "mts")

-- | Mota.
pattern Mtt :: Language
pattern Mtt = $(bakeLanguage Nothing "mtt")

-- | Tututepec Mixtec.
pattern Mtu :: Language
pattern Mtu = $(bakeLanguage Nothing "mtu")

-- | Asaro'o.
pattern Mtv :: Language
pattern Mtv = $(bakeLanguage Nothing "mtv")

-- | Southern Binukidnon.
pattern Mtw :: Language
pattern Mtw = $(bakeLanguage Nothing "mtw")

-- | Tidaá Mixtec.
pattern Mtx :: Language
pattern Mtx = $(bakeLanguage Nothing "mtx")

-- | Nabi.
pattern Mty :: Language
pattern Mty = $(bakeLanguage Nothing "mty")

-- | Mundang.
pattern Mua :: Language
pattern Mua = $(bakeLanguage Nothing "mua")

-- | Mubi.
pattern Mub :: Language
pattern Mub = $(bakeLanguage Nothing "mub")

-- | Ajumbu.
pattern Muc :: Language
pattern Muc = $(bakeLanguage Nothing "muc")

-- | Mednyj Aleut.
pattern Mud :: Language
pattern Mud = $(bakeLanguage Nothing "mud")

-- | Media Lengua.
pattern Mue :: Language
pattern Mue = $(bakeLanguage Nothing "mue")

-- | Musgu.
pattern Mug :: Language
pattern Mug = $(bakeLanguage Nothing "mug")

-- | Mündü.
pattern Muh :: Language
pattern Muh = $(bakeLanguage Nothing "muh")

-- | Musi.
pattern Mui :: Language
pattern Mui = $(bakeLanguage Nothing "mui")

-- | Mabire.
pattern Muj :: Language
pattern Muj = $(bakeLanguage Nothing "muj")

-- | Mugom.
pattern Muk :: Language
pattern Muk = $(bakeLanguage Nothing "muk")

-- | Multiple languages.
pattern Mul :: Language
pattern Mul = $(bakeLanguage Nothing "mul")

-- | Maiwala.
pattern Mum :: Language
pattern Mum = $(bakeLanguage Nothing "mum")

-- | Nyong.
pattern Muo :: Language
pattern Muo = $(bakeLanguage Nothing "muo")

-- | Malvi.
pattern Mup :: Language
pattern Mup = $(bakeLanguage Nothing "mup")

-- | Eastern Xiangxi Miao.
pattern Muq :: Language
pattern Muq = $(bakeLanguage Nothing "muq")

-- | Murle.
pattern Mur :: Language
pattern Mur = $(bakeLanguage Nothing "mur")

-- | Creek.
pattern Mus :: Language
pattern Mus = $(bakeLanguage Nothing "mus")

-- | Western Muria.
pattern Mut :: Language
pattern Mut = $(bakeLanguage Nothing "mut")

-- | Yaaku.
pattern Muu :: Language
pattern Muu = $(bakeLanguage Nothing "muu")

-- | Muthuvan.
pattern Muv :: Language
pattern Muv = $(bakeLanguage Nothing "muv")

-- | Bo-Ung.
pattern Mux :: Language
pattern Mux = $(bakeLanguage Nothing "mux")

-- | Muyang.
pattern Muy :: Language
pattern Muy = $(bakeLanguage Nothing "muy")

-- | Mursi.
pattern Muz :: Language
pattern Muz = $(bakeLanguage Nothing "muz")

-- | Manam.
pattern Mva :: Language
pattern Mva = $(bakeLanguage Nothing "mva")

-- | Mattole.
pattern Mvb :: Language
pattern Mvb = $(bakeLanguage Nothing "mvb")

-- | Mamboru.
pattern Mvd :: Language
pattern Mvd = $(bakeLanguage Nothing "mvd")

-- | Marwari (Pakistan).
pattern Mve :: Language
pattern Mve = $(bakeLanguage Nothing "mve")

-- | Peripheral Mongolian.
pattern Mvf :: Language
pattern Mvf = $(bakeLanguage Nothing "mvf")

-- | Yucuañe Mixtec.
pattern Mvg :: Language
pattern Mvg = $(bakeLanguage Nothing "mvg")

-- | Mulgi.
pattern Mvh :: Language
pattern Mvh = $(bakeLanguage Nothing "mvh")

-- | Miyako.
pattern Mvi :: Language
pattern Mvi = $(bakeLanguage Nothing "mvi")

-- | Mekmek.
pattern Mvk :: Language
pattern Mvk = $(bakeLanguage Nothing "mvk")

-- | Mbara (Australia).
pattern Mvl :: Language
pattern Mvl = $(bakeLanguage Nothing "mvl")

-- | Minaveha.
pattern Mvn :: Language
pattern Mvn = $(bakeLanguage Nothing "mvn")

-- | Marovo.
pattern Mvo :: Language
pattern Mvo = $(bakeLanguage Nothing "mvo")

-- | Duri.
pattern Mvp :: Language
pattern Mvp = $(bakeLanguage Nothing "mvp")

-- | Moere.
pattern Mvq :: Language
pattern Mvq = $(bakeLanguage Nothing "mvq")

-- | Marau.
pattern Mvr :: Language
pattern Mvr = $(bakeLanguage Nothing "mvr")

-- | Massep.
pattern Mvs :: Language
pattern Mvs = $(bakeLanguage Nothing "mvs")

-- | Mpotovoro.
pattern Mvt :: Language
pattern Mvt = $(bakeLanguage Nothing "mvt")

-- | Marfa.
pattern Mvu :: Language
pattern Mvu = $(bakeLanguage Nothing "mvu")

-- | Tagal Murut.
pattern Mvv :: Language
pattern Mvv = $(bakeLanguage Nothing "mvv")

-- | Machinga.
pattern Mvw :: Language
pattern Mvw = $(bakeLanguage Nothing "mvw")

-- | Meoswar.
pattern Mvx :: Language
pattern Mvx = $(bakeLanguage Nothing "mvx")

-- | Indus Kohistani.
pattern Mvy :: Language
pattern Mvy = $(bakeLanguage Nothing "mvy")

-- | Mesqan.
pattern Mvz :: Language
pattern Mvz = $(bakeLanguage Nothing "mvz")

-- | Mwatebu.
pattern Mwa :: Language
pattern Mwa = $(bakeLanguage Nothing "mwa")

-- | Juwal.
pattern Mwb :: Language
pattern Mwb = $(bakeLanguage Nothing "mwb")

-- | Are.
pattern Mwc :: Language
pattern Mwc = $(bakeLanguage Nothing "mwc")

-- | Mwera (Chimwera).
pattern Mwe :: Language
pattern Mwe = $(bakeLanguage Nothing "mwe")

-- | Murrinh-Patha.
pattern Mwf :: Language
pattern Mwf = $(bakeLanguage Nothing "mwf")

-- | Aiklep.
pattern Mwg :: Language
pattern Mwg = $(bakeLanguage Nothing "mwg")

-- | Mouk-Aria.
pattern Mwh :: Language
pattern Mwh = $(bakeLanguage Nothing "mwh")

-- | Labo.
pattern Mwi :: Language
pattern Mwi = $(bakeLanguage Nothing "mwi")

-- | Kita Maninkakan.
pattern Mwk :: Language
pattern Mwk = $(bakeLanguage Nothing "mwk")

-- | Mirandese.
pattern Mwl :: Language
pattern Mwl = $(bakeLanguage Nothing "mwl")

-- | Sar.
pattern Mwm :: Language
pattern Mwm = $(bakeLanguage Nothing "mwm")

-- | Nyamwanga.
pattern Mwn :: Language
pattern Mwn = $(bakeLanguage Nothing "mwn")

-- | Central Maewo.
pattern Mwo :: Language
pattern Mwo = $(bakeLanguage Nothing "mwo")

-- | Kala Lagaw Ya.
pattern Mwp :: Language
pattern Mwp = $(bakeLanguage Nothing "mwp")

-- | Mün Chin.
pattern Mwq :: Language
pattern Mwq = $(bakeLanguage Nothing "mwq")

-- | Marwari.
pattern Mwr :: Language
pattern Mwr = $(bakeLanguage Nothing "mwr")

-- | Mwimbi-Muthambi.
pattern Mws :: Language
pattern Mws = $(bakeLanguage Nothing "mws")

-- | Moken.
pattern Mwt :: Language
pattern Mwt = $(bakeLanguage Nothing "mwt")

-- | Mittu.
pattern Mwu :: Language
pattern Mwu = $(bakeLanguage Nothing "mwu")

-- | Mentawai.
pattern Mwv :: Language
pattern Mwv = $(bakeLanguage Nothing "mwv")

-- | Hmong Daw.
pattern Mww :: Language
pattern Mww = $(bakeLanguage Nothing "mww")

-- | Moingi.
pattern Mwz :: Language
pattern Mwz = $(bakeLanguage Nothing "mwz")

-- | Northwest Oaxaca Mixtec.
pattern Mxa :: Language
pattern Mxa = $(bakeLanguage Nothing "mxa")

-- | Tezoatlán Mixtec.
pattern Mxb :: Language
pattern Mxb = $(bakeLanguage Nothing "mxb")

-- | Manyika.
pattern Mxc :: Language
pattern Mxc = $(bakeLanguage Nothing "mxc")

-- | Modang.
pattern Mxd :: Language
pattern Mxd = $(bakeLanguage Nothing "mxd")

-- | Mele-Fila.
pattern Mxe :: Language
pattern Mxe = $(bakeLanguage Nothing "mxe")

-- | Malgbe.
pattern Mxf :: Language
pattern Mxf = $(bakeLanguage Nothing "mxf")

-- | Mbangala.
pattern Mxg :: Language
pattern Mxg = $(bakeLanguage Nothing "mxg")

-- | Mvuba.
pattern Mxh :: Language
pattern Mxh = $(bakeLanguage Nothing "mxh")

-- | Mozarabic.
pattern Mxi :: Language
pattern Mxi = $(bakeLanguage Nothing "mxi")

-- | Miju-Mishmi.
pattern Mxj :: Language
pattern Mxj = $(bakeLanguage Nothing "mxj")

-- | Monumbo.
pattern Mxk :: Language
pattern Mxk = $(bakeLanguage Nothing "mxk")

-- | Maxi Gbe.
pattern Mxl :: Language
pattern Mxl = $(bakeLanguage Nothing "mxl")

-- | Meramera.
pattern Mxm :: Language
pattern Mxm = $(bakeLanguage Nothing "mxm")

-- | Moi (Indonesia).
pattern Mxn :: Language
pattern Mxn = $(bakeLanguage Nothing "mxn")

-- | Mbowe.
pattern Mxo :: Language
pattern Mxo = $(bakeLanguage Nothing "mxo")

-- | Tlahuitoltepec Mixe.
pattern Mxp :: Language
pattern Mxp = $(bakeLanguage Nothing "mxp")

-- | Juquila Mixe.
pattern Mxq :: Language
pattern Mxq = $(bakeLanguage Nothing "mxq")

-- | Murik (Malaysia).
pattern Mxr :: Language
pattern Mxr = $(bakeLanguage Nothing "mxr")

-- | Huitepec Mixtec.
pattern Mxs :: Language
pattern Mxs = $(bakeLanguage Nothing "mxs")

-- | Jamiltepec Mixtec.
pattern Mxt :: Language
pattern Mxt = $(bakeLanguage Nothing "mxt")

-- | Mada (Cameroon).
pattern Mxu :: Language
pattern Mxu = $(bakeLanguage Nothing "mxu")

-- | Metlatónoc Mixtec.
pattern Mxv :: Language
pattern Mxv = $(bakeLanguage Nothing "mxv")

-- | Namo.
pattern Mxw :: Language
pattern Mxw = $(bakeLanguage Nothing "mxw")

-- | Mahou.
pattern Mxx :: Language
pattern Mxx = $(bakeLanguage Nothing "mxx")

-- | Southeastern Nochixtlán Mixtec.
pattern Mxy :: Language
pattern Mxy = $(bakeLanguage Nothing "mxy")

-- | Central Masela.
pattern Mxz :: Language
pattern Mxz = $(bakeLanguage Nothing "mxz")

-- | Mbay.
pattern Myb :: Language
pattern Myb = $(bakeLanguage Nothing "myb")

-- | Mayeka.
pattern Myc :: Language
pattern Myc = $(bakeLanguage Nothing "myc")

-- | Myene.
pattern Mye :: Language
pattern Mye = $(bakeLanguage Nothing "mye")

-- | Bambassi.
pattern Myf :: Language
pattern Myf = $(bakeLanguage Nothing "myf")

-- | Manta.
pattern Myg :: Language
pattern Myg = $(bakeLanguage Nothing "myg")

-- | Makah.
pattern Myh :: Language
pattern Myh = $(bakeLanguage Nothing "myh")

-- | Mangayat.
pattern Myj :: Language
pattern Myj = $(bakeLanguage Nothing "myj")

-- | Mamara Senoufo.
pattern Myk :: Language
pattern Myk = $(bakeLanguage Nothing "myk")

-- | Moma.
pattern Myl :: Language
pattern Myl = $(bakeLanguage Nothing "myl")

-- | Me'en.
pattern Mym :: Language
pattern Mym = $(bakeLanguage Nothing "mym")

-- | Anfillo.
pattern Myo :: Language
pattern Myo = $(bakeLanguage Nothing "myo")

-- | Pirahã.
pattern Myp :: Language
pattern Myp = $(bakeLanguage Nothing "myp")

-- | Muniche.
pattern Myr :: Language
pattern Myr = $(bakeLanguage Nothing "myr")

-- | Mesmes.
pattern Mys :: Language
pattern Mys = $(bakeLanguage Nothing "mys")

-- | Mundurukú.
pattern Myu :: Language
pattern Myu = $(bakeLanguage Nothing "myu")

-- | Erzya.
pattern Myv :: Language
pattern Myv = $(bakeLanguage Nothing "myv")

-- | Muyuw.
pattern Myw :: Language
pattern Myw = $(bakeLanguage Nothing "myw")

-- | Masaaba.
pattern Myx :: Language
pattern Myx = $(bakeLanguage Nothing "myx")

-- | Macuna.
pattern Myy :: Language
pattern Myy = $(bakeLanguage Nothing "myy")

-- | Classical Mandaic.
pattern Myz :: Language
pattern Myz = $(bakeLanguage Nothing "myz")

-- | Santa María Zacatepec Mixtec.
pattern Mza :: Language
pattern Mza = $(bakeLanguage Nothing "mza")

-- | Tumzabt.
pattern Mzb :: Language
pattern Mzb = $(bakeLanguage Nothing "mzb")

-- | Madagascar Sign Language.
pattern Mzc :: Language
pattern Mzc = $(bakeLanguage Nothing "mzc")

-- | Malimba.
pattern Mzd :: Language
pattern Mzd = $(bakeLanguage Nothing "mzd")

-- | Morawa.
pattern Mze :: Language
pattern Mze = $(bakeLanguage Nothing "mze")

-- | Monastic Sign Language.
pattern Mzg :: Language
pattern Mzg = $(bakeLanguage Nothing "mzg")

-- | Wichí Lhamtés Güisnay.
pattern Mzh :: Language
pattern Mzh = $(bakeLanguage Nothing "mzh")

-- | Ixcatlán Mazatec.
pattern Mzi :: Language
pattern Mzi = $(bakeLanguage Nothing "mzi")

-- | Manya.
pattern Mzj :: Language
pattern Mzj = $(bakeLanguage Nothing "mzj")

-- | Nigeria Mambila.
pattern Mzk :: Language
pattern Mzk = $(bakeLanguage Nothing "mzk")

-- | Mazatlán Mixe.
pattern Mzl :: Language
pattern Mzl = $(bakeLanguage Nothing "mzl")

-- | Mumuye.
pattern Mzm :: Language
pattern Mzm = $(bakeLanguage Nothing "mzm")

-- | Mazanderani.
pattern Mzn :: Language
pattern Mzn = $(bakeLanguage Nothing "mzn")

-- | Matipuhy.
pattern Mzo :: Language
pattern Mzo = $(bakeLanguage Nothing "mzo")

-- | Movima.
pattern Mzp :: Language
pattern Mzp = $(bakeLanguage Nothing "mzp")

-- | Mori Atas.
pattern Mzq :: Language
pattern Mzq = $(bakeLanguage Nothing "mzq")

-- | Marúbo.
pattern Mzr :: Language
pattern Mzr = $(bakeLanguage Nothing "mzr")

-- | Macanese.
pattern Mzs :: Language
pattern Mzs = $(bakeLanguage Nothing "mzs")

-- | Mintil.
pattern Mzt :: Language
pattern Mzt = $(bakeLanguage Nothing "mzt")

-- | Inapang.
pattern Mzu :: Language
pattern Mzu = $(bakeLanguage Nothing "mzu")

-- | Manza.
pattern Mzv :: Language
pattern Mzv = $(bakeLanguage Nothing "mzv")

-- | Deg.
pattern Mzw :: Language
pattern Mzw = $(bakeLanguage Nothing "mzw")

-- | Mawayana.
pattern Mzx :: Language
pattern Mzx = $(bakeLanguage Nothing "mzx")

-- | Mozambican Sign Language.
pattern Mzy :: Language
pattern Mzy = $(bakeLanguage Nothing "mzy")

-- | Maiadomu.
pattern Mzz :: Language
pattern Mzz = $(bakeLanguage Nothing "mzz")

-- | Namla.
pattern Naa :: Language
pattern Naa = $(bakeLanguage Nothing "naa")

-- | Southern Nambikuára.
pattern Nab :: Language
pattern Nab = $(bakeLanguage Nothing "nab")

-- | Narak.
pattern Nac :: Language
pattern Nac = $(bakeLanguage Nothing "nac")

-- | Naka'ela.
pattern Nae :: Language
pattern Nae = $(bakeLanguage Nothing "nae")

-- | Nabak.
pattern Naf :: Language
pattern Naf = $(bakeLanguage Nothing "naf")

-- | Naga Pidgin.
pattern Nag :: Language
pattern Nag = $(bakeLanguage Nothing "nag")

-- | Nalu.
pattern Naj :: Language
pattern Naj = $(bakeLanguage Nothing "naj")

-- | Nakanai.
pattern Nak :: Language
pattern Nak = $(bakeLanguage Nothing "nak")

-- | Nalik.
pattern Nal :: Language
pattern Nal = $(bakeLanguage Nothing "nal")

-- | Ngan'gityemerri.
pattern Nam :: Language
pattern Nam = $(bakeLanguage Nothing "nam")

-- | Min Nan Chinese.
pattern Nan :: Language
pattern Nan = $(bakeLanguage Nothing "nan")

-- | Naaba.
pattern Nao :: Language
pattern Nao = $(bakeLanguage Nothing "nao")

-- | Neapolitan.
pattern Nap :: Language
pattern Nap = $(bakeLanguage Nothing "nap")

-- | Khoekhoe.
pattern Naq :: Language
pattern Naq = $(bakeLanguage Nothing "naq")

-- | Iguta.
pattern Nar :: Language
pattern Nar = $(bakeLanguage Nothing "nar")

-- | Naasioi.
pattern Nas :: Language
pattern Nas = $(bakeLanguage Nothing "nas")

-- | Ca̱hungwa̱rya̱.
pattern Nat :: Language
pattern Nat = $(bakeLanguage Nothing "nat")

-- | Nawuri.
pattern Naw :: Language
pattern Naw = $(bakeLanguage Nothing "naw")

-- | Nakwi.
pattern Nax :: Language
pattern Nax = $(bakeLanguage Nothing "nax")

-- | Ngarrindjeri.
pattern Nay :: Language
pattern Nay = $(bakeLanguage Nothing "nay")

-- | Coatepec Nahuatl.
pattern Naz :: Language
pattern Naz = $(bakeLanguage Nothing "naz")

-- | Nyemba.
pattern Nba :: Language
pattern Nba = $(bakeLanguage Nothing "nba")

-- | Ndoe.
pattern Nbb :: Language
pattern Nbb = $(bakeLanguage Nothing "nbb")

-- | Chang Naga.
pattern Nbc :: Language
pattern Nbc = $(bakeLanguage Nothing "nbc")

-- | Ngbinda.
pattern Nbd :: Language
pattern Nbd = $(bakeLanguage Nothing "nbd")

-- | Konyak Naga.
pattern Nbe :: Language
pattern Nbe = $(bakeLanguage Nothing "nbe")

-- | Nagarchal.
pattern Nbg :: Language
pattern Nbg = $(bakeLanguage Nothing "nbg")

-- | Ngamo.
pattern Nbh :: Language
pattern Nbh = $(bakeLanguage Nothing "nbh")

-- | Mao Naga.
pattern Nbi :: Language
pattern Nbi = $(bakeLanguage Nothing "nbi")

-- | Ngarinyman.
pattern Nbj :: Language
pattern Nbj = $(bakeLanguage Nothing "nbj")

-- | Nake.
pattern Nbk :: Language
pattern Nbk = $(bakeLanguage Nothing "nbk")

-- | Ngbaka Ma'bo.
pattern Nbm :: Language
pattern Nbm = $(bakeLanguage Nothing "nbm")

-- | Kuri.
pattern Nbn :: Language
pattern Nbn = $(bakeLanguage Nothing "nbn")

-- | Nkukoli.
pattern Nbo :: Language
pattern Nbo = $(bakeLanguage Nothing "nbo")

-- | Nnam.
pattern Nbp :: Language
pattern Nbp = $(bakeLanguage Nothing "nbp")

-- | Nggem.
pattern Nbq :: Language
pattern Nbq = $(bakeLanguage Nothing "nbq")

-- | Numana.
pattern Nbr :: Language
pattern Nbr = $(bakeLanguage Nothing "nbr")

-- | Namibian Sign Language.
pattern Nbs :: Language
pattern Nbs = $(bakeLanguage Nothing "nbs")

-- | Na.
pattern Nbt :: Language
pattern Nbt = $(bakeLanguage Nothing "nbt")

-- | Rongmei Naga.
pattern Nbu :: Language
pattern Nbu = $(bakeLanguage Nothing "nbu")

-- | Ngamambo.
pattern Nbv :: Language
pattern Nbv = $(bakeLanguage Nothing "nbv")

-- | Southern Ngbandi.
pattern Nbw :: Language
pattern Nbw = $(bakeLanguage Nothing "nbw")

-- | Ningera.
pattern Nby :: Language
pattern Nby = $(bakeLanguage Nothing "nby")

-- | Iyo.
pattern Nca :: Language
pattern Nca = $(bakeLanguage Nothing "nca")

-- | Central Nicobarese.
pattern Ncb :: Language
pattern Ncb = $(bakeLanguage Nothing "ncb")

-- | Ponam.
pattern Ncc :: Language
pattern Ncc = $(bakeLanguage Nothing "ncc")

-- | Nachering.
pattern Ncd :: Language
pattern Ncd = $(bakeLanguage Nothing "ncd")

-- | Yale.
pattern Nce :: Language
pattern Nce = $(bakeLanguage Nothing "nce")

-- | Notsi.
pattern Ncf :: Language
pattern Ncf = $(bakeLanguage Nothing "ncf")

-- | Nisga'a.
pattern Ncg :: Language
pattern Ncg = $(bakeLanguage Nothing "ncg")

-- | Central Huasteca Nahuatl.
pattern Nch :: Language
pattern Nch = $(bakeLanguage Nothing "nch")

-- | Classical Nahuatl.
pattern Nci :: Language
pattern Nci = $(bakeLanguage Nothing "nci")

-- | Northern Puebla Nahuatl.
pattern Ncj :: Language
pattern Ncj = $(bakeLanguage Nothing "ncj")

-- | Na-kara.
pattern Nck :: Language
pattern Nck = $(bakeLanguage Nothing "nck")

-- | Michoacán Nahuatl.
pattern Ncl :: Language
pattern Ncl = $(bakeLanguage Nothing "ncl")

-- | Nambo.
pattern Ncm :: Language
pattern Ncm = $(bakeLanguage Nothing "ncm")

-- | Nauna.
pattern Ncn :: Language
pattern Ncn = $(bakeLanguage Nothing "ncn")

-- | Sibe.
pattern Nco :: Language
pattern Nco = $(bakeLanguage Nothing "nco")

-- | Northern Katang.
pattern Ncq :: Language
pattern Ncq = $(bakeLanguage Nothing "ncq")

-- | Ncane.
pattern Ncr :: Language
pattern Ncr = $(bakeLanguage Nothing "ncr")

-- | Nicaraguan Sign Language.
pattern Ncs :: Language
pattern Ncs = $(bakeLanguage Nothing "ncs")

-- | Chothe Naga.
pattern Nct :: Language
pattern Nct = $(bakeLanguage Nothing "nct")

-- | Chumburung.
pattern Ncu :: Language
pattern Ncu = $(bakeLanguage Nothing "ncu")

-- | Central Puebla Nahuatl.
pattern Ncx :: Language
pattern Ncx = $(bakeLanguage Nothing "ncx")

-- | Natchez.
pattern Ncz :: Language
pattern Ncz = $(bakeLanguage Nothing "ncz")

-- | Ndasa.
pattern Nda :: Language
pattern Nda = $(bakeLanguage Nothing "nda")

-- | Kenswei Nsei.
pattern Ndb :: Language
pattern Ndb = $(bakeLanguage Nothing "ndb")

-- | Ndau.
pattern Ndc :: Language
pattern Ndc = $(bakeLanguage Nothing "ndc")

-- | Nde-Nsele-Nta.
pattern Ndd :: Language
pattern Ndd = $(bakeLanguage Nothing "ndd")

-- | Nadruvian.
pattern Ndf :: Language
pattern Ndf = $(bakeLanguage Nothing "ndf")

-- | Ndengereko.
pattern Ndg :: Language
pattern Ndg = $(bakeLanguage Nothing "ndg")

-- | Ndali.
pattern Ndh :: Language
pattern Ndh = $(bakeLanguage Nothing "ndh")

-- | Samba Leko.
pattern Ndi :: Language
pattern Ndi = $(bakeLanguage Nothing "ndi")

-- | Ndamba.
pattern Ndj :: Language
pattern Ndj = $(bakeLanguage Nothing "ndj")

-- | Ndaka.
pattern Ndk :: Language
pattern Ndk = $(bakeLanguage Nothing "ndk")

-- | Ndolo.
pattern Ndl :: Language
pattern Ndl = $(bakeLanguage Nothing "ndl")

-- | Ndam.
pattern Ndm :: Language
pattern Ndm = $(bakeLanguage Nothing "ndm")

-- | Ngundi.
pattern Ndn :: Language
pattern Ndn = $(bakeLanguage Nothing "ndn")

-- | Ndo.
pattern Ndp :: Language
pattern Ndp = $(bakeLanguage Nothing "ndp")

-- | Ndombe.
pattern Ndq :: Language
pattern Ndq = $(bakeLanguage Nothing "ndq")

-- | Ndoola.
pattern Ndr :: Language
pattern Ndr = $(bakeLanguage Nothing "ndr")

-- | Low German.
pattern Nds :: Language
pattern Nds = $(bakeLanguage Nothing "nds")

-- | Ndunga.
pattern Ndt :: Language
pattern Ndt = $(bakeLanguage Nothing "ndt")

-- | Dugun.
pattern Ndu :: Language
pattern Ndu = $(bakeLanguage Nothing "ndu")

-- | Ndut.
pattern Ndv :: Language
pattern Ndv = $(bakeLanguage Nothing "ndv")

-- | Ndobo.
pattern Ndw :: Language
pattern Ndw = $(bakeLanguage Nothing "ndw")

-- | Nduga.
pattern Ndx :: Language
pattern Ndx = $(bakeLanguage Nothing "ndx")

-- | Lutos.
pattern Ndy :: Language
pattern Ndy = $(bakeLanguage Nothing "ndy")

-- | Ndogo.
pattern Ndz :: Language
pattern Ndz = $(bakeLanguage Nothing "ndz")

-- | Eastern Ngad'a.
pattern Nea :: Language
pattern Nea = $(bakeLanguage Nothing "nea")

-- | Toura (Côte d'Ivoire).
pattern Neb :: Language
pattern Neb = $(bakeLanguage Nothing "neb")

-- | Nedebang.
pattern Nec :: Language
pattern Nec = $(bakeLanguage Nothing "nec")

-- | Nde-Gbite.
pattern Ned :: Language
pattern Ned = $(bakeLanguage Nothing "ned")

-- | Nêlêmwa-Nixumwak.
pattern Nee :: Language
pattern Nee = $(bakeLanguage Nothing "nee")

-- | Nefamese.
pattern Nef :: Language
pattern Nef = $(bakeLanguage Nothing "nef")

-- | Negidal.
pattern Neg :: Language
pattern Neg = $(bakeLanguage Nothing "neg")

-- | Nyenkha.
pattern Neh :: Language
pattern Neh = $(bakeLanguage Nothing "neh")

-- | Neo-Hittite.
pattern Nei :: Language
pattern Nei = $(bakeLanguage Nothing "nei")

-- | Neko.
pattern Nej :: Language
pattern Nej = $(bakeLanguage Nothing "nej")

-- | Neku.
pattern Nek :: Language
pattern Nek = $(bakeLanguage Nothing "nek")

-- | Nemi.
pattern Nem :: Language
pattern Nem = $(bakeLanguage Nothing "nem")

-- | Nengone.
pattern Nen :: Language
pattern Nen = $(bakeLanguage Nothing "nen")

-- | Ná-Meo.
pattern Neo :: Language
pattern Neo = $(bakeLanguage Nothing "neo")

-- | North Central Mixe.
pattern Neq :: Language
pattern Neq = $(bakeLanguage Nothing "neq")

-- | Yahadian.
pattern Ner :: Language
pattern Ner = $(bakeLanguage Nothing "ner")

-- | Bhoti Kinnauri.
pattern Nes :: Language
pattern Nes = $(bakeLanguage Nothing "nes")

-- | Nete.
pattern Net :: Language
pattern Net = $(bakeLanguage Nothing "net")

-- | Neo.
pattern Neu :: Language
pattern Neu = $(bakeLanguage Nothing "neu")

-- | Nyaheun.
pattern Nev :: Language
pattern Nev = $(bakeLanguage Nothing "nev")

-- | Nepal Bhasa.
pattern New :: Language
pattern New = $(bakeLanguage Nothing "new")

-- | Neme.
pattern Nex :: Language
pattern Nex = $(bakeLanguage Nothing "nex")

-- | Neyo.
pattern Ney :: Language
pattern Ney = $(bakeLanguage Nothing "ney")

-- | Nez Perce.
pattern Nez :: Language
pattern Nez = $(bakeLanguage Nothing "nez")

-- | Dhao.
pattern Nfa :: Language
pattern Nfa = $(bakeLanguage Nothing "nfa")

-- | Ahwai.
pattern Nfd :: Language
pattern Nfd = $(bakeLanguage Nothing "nfd")

-- | Ayiwo.
pattern Nfl :: Language
pattern Nfl = $(bakeLanguage Nothing "nfl")

-- | Nafaanra.
pattern Nfr :: Language
pattern Nfr = $(bakeLanguage Nothing "nfr")

-- | Mfumte.
pattern Nfu :: Language
pattern Nfu = $(bakeLanguage Nothing "nfu")

-- | Ngbaka.
pattern Nga :: Language
pattern Nga = $(bakeLanguage Nothing "nga")

-- | Northern Ngbandi.
pattern Ngb :: Language
pattern Ngb = $(bakeLanguage Nothing "ngb")

-- | Ngombe (Democratic Republic of Congo).
pattern Ngc :: Language
pattern Ngc = $(bakeLanguage Nothing "ngc")

-- | Ngando (Central African Republic).
pattern Ngd :: Language
pattern Ngd = $(bakeLanguage Nothing "ngd")

-- | Ngemba.
pattern Nge :: Language
pattern Nge = $(bakeLanguage Nothing "nge")

-- | Ngbaka Manza.
pattern Ngg :: Language
pattern Ngg = $(bakeLanguage Nothing "ngg")

-- | Nǁng.
pattern Ngh :: Language
pattern Ngh = $(bakeLanguage Nothing "ngh")

-- | Ngizim.
pattern Ngi :: Language
pattern Ngi = $(bakeLanguage Nothing "ngi")

-- | Ngie.
pattern Ngj :: Language
pattern Ngj = $(bakeLanguage Nothing "ngj")

-- | Dalabon.
pattern Ngk :: Language
pattern Ngk = $(bakeLanguage Nothing "ngk")

-- | Lomwe.
pattern Ngl :: Language
pattern Ngl = $(bakeLanguage Nothing "ngl")

-- | Ngatik Men's Creole.
pattern Ngm :: Language
pattern Ngm = $(bakeLanguage Nothing "ngm")

-- | Ngwo.
pattern Ngn :: Language
pattern Ngn = $(bakeLanguage Nothing "ngn")

-- | Ngulu.
pattern Ngp :: Language
pattern Ngp = $(bakeLanguage Nothing "ngp")

-- | Ngurimi.
pattern Ngq :: Language
pattern Ngq = $(bakeLanguage Nothing "ngq")

-- | Engdewu.
pattern Ngr :: Language
pattern Ngr = $(bakeLanguage Nothing "ngr")

-- | Gvoko.
pattern Ngs :: Language
pattern Ngs = $(bakeLanguage Nothing "ngs")

-- | Kriang.
pattern Ngt :: Language
pattern Ngt = $(bakeLanguage Nothing "ngt")

-- | Guerrero Nahuatl.
pattern Ngu :: Language
pattern Ngu = $(bakeLanguage Nothing "ngu")

-- | Nagumi.
pattern Ngv :: Language
pattern Ngv = $(bakeLanguage Nothing "ngv")

-- | Ngwaba.
pattern Ngw :: Language
pattern Ngw = $(bakeLanguage Nothing "ngw")

-- | Nggwahyi.
pattern Ngx :: Language
pattern Ngx = $(bakeLanguage Nothing "ngx")

-- | Tibea.
pattern Ngy :: Language
pattern Ngy = $(bakeLanguage Nothing "ngy")

-- | Ngungwel.
pattern Ngz :: Language
pattern Ngz = $(bakeLanguage Nothing "ngz")

-- | Nhanda.
pattern Nha :: Language
pattern Nha = $(bakeLanguage Nothing "nha")

-- | Beng.
pattern Nhb :: Language
pattern Nhb = $(bakeLanguage Nothing "nhb")

-- | Tabasco Nahuatl.
pattern Nhc :: Language
pattern Nhc = $(bakeLanguage Nothing "nhc")

-- | Chiripá.
pattern Nhd :: Language
pattern Nhd = $(bakeLanguage Nothing "nhd")

-- | Eastern Huasteca Nahuatl.
pattern Nhe :: Language
pattern Nhe = $(bakeLanguage Nothing "nhe")

-- | Nhuwala.
pattern Nhf :: Language
pattern Nhf = $(bakeLanguage Nothing "nhf")

-- | Tetelcingo Nahuatl.
pattern Nhg :: Language
pattern Nhg = $(bakeLanguage Nothing "nhg")

-- | Nahari.
pattern Nhh :: Language
pattern Nhh = $(bakeLanguage Nothing "nhh")

-- | Zacatlán-Ahuacatlán-Tepetzintla Nahuatl.
pattern Nhi :: Language
pattern Nhi = $(bakeLanguage Nothing "nhi")

-- | Isthmus-Cosoleacaque Nahuatl.
pattern Nhk :: Language
pattern Nhk = $(bakeLanguage Nothing "nhk")

-- | Morelos Nahuatl.
pattern Nhm :: Language
pattern Nhm = $(bakeLanguage Nothing "nhm")

-- | Central Nahuatl.
pattern Nhn :: Language
pattern Nhn = $(bakeLanguage Nothing "nhn")

-- | Takuu.
pattern Nho :: Language
pattern Nho = $(bakeLanguage Nothing "nho")

-- | Isthmus-Pajapan Nahuatl.
pattern Nhp :: Language
pattern Nhp = $(bakeLanguage Nothing "nhp")

-- | Huaxcaleca Nahuatl.
pattern Nhq :: Language
pattern Nhq = $(bakeLanguage Nothing "nhq")

-- | Naro.
pattern Nhr :: Language
pattern Nhr = $(bakeLanguage Nothing "nhr")

-- | Ometepec Nahuatl.
pattern Nht :: Language
pattern Nht = $(bakeLanguage Nothing "nht")

-- | Noone.
pattern Nhu :: Language
pattern Nhu = $(bakeLanguage Nothing "nhu")

-- | Temascaltepec Nahuatl.
pattern Nhv :: Language
pattern Nhv = $(bakeLanguage Nothing "nhv")

-- | Western Huasteca Nahuatl.
pattern Nhw :: Language
pattern Nhw = $(bakeLanguage Nothing "nhw")

-- | Isthmus-Mecayapan Nahuatl.
pattern Nhx :: Language
pattern Nhx = $(bakeLanguage Nothing "nhx")

-- | Northern Oaxaca Nahuatl.
pattern Nhy :: Language
pattern Nhy = $(bakeLanguage Nothing "nhy")

-- | Santa María La Alta Nahuatl.
pattern Nhz :: Language
pattern Nhz = $(bakeLanguage Nothing "nhz")

-- | Nias.
pattern Nia :: Language
pattern Nia = $(bakeLanguage Nothing "nia")

-- | Nakame.
pattern Nib :: Language
pattern Nib = $(bakeLanguage Nothing "nib")

-- | Ngandi.
pattern Nid :: Language
pattern Nid = $(bakeLanguage Nothing "nid")

-- | Niellim.
pattern Nie :: Language
pattern Nie = $(bakeLanguage Nothing "nie")

-- | Nek.
pattern Nif :: Language
pattern Nif = $(bakeLanguage Nothing "nif")

-- | Ngalakgan.
pattern Nig :: Language
pattern Nig = $(bakeLanguage Nothing "nig")

-- | Nyiha (Tanzania).
pattern Nih :: Language
pattern Nih = $(bakeLanguage Nothing "nih")

-- | Nii.
pattern Nii :: Language
pattern Nii = $(bakeLanguage Nothing "nii")

-- | Ngaju.
pattern Nij :: Language
pattern Nij = $(bakeLanguage Nothing "nij")

-- | Southern Nicobarese.
pattern Nik :: Language
pattern Nik = $(bakeLanguage Nothing "nik")

-- | Nila.
pattern Nil :: Language
pattern Nil = $(bakeLanguage Nothing "nil")

-- | Nilamba.
pattern Nim :: Language
pattern Nim = $(bakeLanguage Nothing "nim")

-- | Ninzo.
pattern Nin :: Language
pattern Nin = $(bakeLanguage Nothing "nin")

-- | Nganasan.
pattern Nio :: Language
pattern Nio = $(bakeLanguage Nothing "nio")

-- | Nandi.
pattern Niq :: Language
pattern Niq = $(bakeLanguage Nothing "niq")

-- | Nimboran.
pattern Nir :: Language
pattern Nir = $(bakeLanguage Nothing "nir")

-- | Nimi.
pattern Nis :: Language
pattern Nis = $(bakeLanguage Nothing "nis")

-- | Southeastern Kolami.
pattern Nit :: Language
pattern Nit = $(bakeLanguage Nothing "nit")

-- | Niuean.
pattern Niu :: Language
pattern Niu = $(bakeLanguage Nothing "niu")

-- | Gilyak.
pattern Niv :: Language
pattern Niv = $(bakeLanguage Nothing "niv")

-- | Nimo.
pattern Niw :: Language
pattern Niw = $(bakeLanguage Nothing "niw")

-- | Hema.
pattern Nix :: Language
pattern Nix = $(bakeLanguage Nothing "nix")

-- | Ngiti.
pattern Niy :: Language
pattern Niy = $(bakeLanguage Nothing "niy")

-- | Ningil.
pattern Niz :: Language
pattern Niz = $(bakeLanguage Nothing "niz")

-- | Nzanyi.
pattern Nja :: Language
pattern Nja = $(bakeLanguage Nothing "nja")

-- | Nocte Naga.
pattern Njb :: Language
pattern Njb = $(bakeLanguage Nothing "njb")

-- | Ndonde Hamba.
pattern Njd :: Language
pattern Njd = $(bakeLanguage Nothing "njd")

-- | Lotha Naga.
pattern Njh :: Language
pattern Njh = $(bakeLanguage Nothing "njh")

-- | Gudanji.
pattern Nji :: Language
pattern Nji = $(bakeLanguage Nothing "nji")

-- | Njen.
pattern Njj :: Language
pattern Njj = $(bakeLanguage Nothing "njj")

-- | Njalgulgule.
pattern Njl :: Language
pattern Njl = $(bakeLanguage Nothing "njl")

-- | Angami Naga.
pattern Njm :: Language
pattern Njm = $(bakeLanguage Nothing "njm")

-- | Liangmai Naga.
pattern Njn :: Language
pattern Njn = $(bakeLanguage Nothing "njn")

-- | Ao Naga.
pattern Njo :: Language
pattern Njo = $(bakeLanguage Nothing "njo")

-- | Njerep.
pattern Njr :: Language
pattern Njr = $(bakeLanguage Nothing "njr")

-- | Nisa.
pattern Njs :: Language
pattern Njs = $(bakeLanguage Nothing "njs")

-- | Ndyuka-Trio Pidgin.
pattern Njt :: Language
pattern Njt = $(bakeLanguage Nothing "njt")

-- | Ngadjunmaya.
pattern Nju :: Language
pattern Nju = $(bakeLanguage Nothing "nju")

-- | Kunyi.
pattern Njx :: Language
pattern Njx = $(bakeLanguage Nothing "njx")

-- | Njyem.
pattern Njy :: Language
pattern Njy = $(bakeLanguage Nothing "njy")

-- | Nyishi.
pattern Njz :: Language
pattern Njz = $(bakeLanguage Nothing "njz")

-- | Nkoya.
pattern Nka :: Language
pattern Nka = $(bakeLanguage Nothing "nka")

-- | Khoibu Naga.
pattern Nkb :: Language
pattern Nkb = $(bakeLanguage Nothing "nkb")

-- | Nkongho.
pattern Nkc :: Language
pattern Nkc = $(bakeLanguage Nothing "nkc")

-- | Koireng.
pattern Nkd :: Language
pattern Nkd = $(bakeLanguage Nothing "nkd")

-- | Duke.
pattern Nke :: Language
pattern Nke = $(bakeLanguage Nothing "nke")

-- | Inpui Naga.
pattern Nkf :: Language
pattern Nkf = $(bakeLanguage Nothing "nkf")

-- | Nekgini.
pattern Nkg :: Language
pattern Nkg = $(bakeLanguage Nothing "nkg")

-- | Khezha Naga.
pattern Nkh :: Language
pattern Nkh = $(bakeLanguage Nothing "nkh")

-- | Thangal Naga.
pattern Nki :: Language
pattern Nki = $(bakeLanguage Nothing "nki")

-- | Nakai.
pattern Nkj :: Language
pattern Nkj = $(bakeLanguage Nothing "nkj")

-- | Nokuku.
pattern Nkk :: Language
pattern Nkk = $(bakeLanguage Nothing "nkk")

-- | Namat.
pattern Nkm :: Language
pattern Nkm = $(bakeLanguage Nothing "nkm")

-- | Nkangala.
pattern Nkn :: Language
pattern Nkn = $(bakeLanguage Nothing "nkn")

-- | Nkonya.
pattern Nko :: Language
pattern Nko = $(bakeLanguage Nothing "nko")

-- | Niuatoputapu.
pattern Nkp :: Language
pattern Nkp = $(bakeLanguage Nothing "nkp")

-- | Nkami.
pattern Nkq :: Language
pattern Nkq = $(bakeLanguage Nothing "nkq")

-- | Nukuoro.
pattern Nkr :: Language
pattern Nkr = $(bakeLanguage Nothing "nkr")

-- | North Asmat.
pattern Nks :: Language
pattern Nks = $(bakeLanguage Nothing "nks")

-- | Nyika (Tanzania).
pattern Nkt :: Language
pattern Nkt = $(bakeLanguage Nothing "nkt")

-- | Bouna Kulango.
pattern Nku :: Language
pattern Nku = $(bakeLanguage Nothing "nku")

-- | Nyika (Malawi and Zambia).
pattern Nkv :: Language
pattern Nkv = $(bakeLanguage Nothing "nkv")

-- | Nkutu.
pattern Nkw :: Language
pattern Nkw = $(bakeLanguage Nothing "nkw")

-- | Nkoroo.
pattern Nkx :: Language
pattern Nkx = $(bakeLanguage Nothing "nkx")

-- | Nkari.
pattern Nkz :: Language
pattern Nkz = $(bakeLanguage Nothing "nkz")

-- | Ngombale.
pattern Nla :: Language
pattern Nla = $(bakeLanguage Nothing "nla")

-- | Nalca.
pattern Nlc :: Language
pattern Nlc = $(bakeLanguage Nothing "nlc")

-- | East Nyala.
pattern Nle :: Language
pattern Nle = $(bakeLanguage Nothing "nle")

-- | Gela.
pattern Nlg :: Language
pattern Nlg = $(bakeLanguage Nothing "nlg")

-- | Grangali.
pattern Nli :: Language
pattern Nli = $(bakeLanguage Nothing "nli")

-- | Nyali.
pattern Nlj :: Language
pattern Nlj = $(bakeLanguage Nothing "nlj")

-- | Ninia Yali.
pattern Nlk :: Language
pattern Nlk = $(bakeLanguage Nothing "nlk")

-- | Nihali.
pattern Nll :: Language
pattern Nll = $(bakeLanguage Nothing "nll")

-- | Mankiyali.
pattern Nlm :: Language
pattern Nlm = $(bakeLanguage Nothing "nlm")

-- | Ngul.
pattern Nlo :: Language
pattern Nlo = $(bakeLanguage Nothing "nlo")

-- | Lao Naga.
pattern Nlq :: Language
pattern Nlq = $(bakeLanguage Nothing "nlq")

-- | Nchumbulu.
pattern Nlu :: Language
pattern Nlu = $(bakeLanguage Nothing "nlu")

-- | Orizaba Nahuatl.
pattern Nlv :: Language
pattern Nlv = $(bakeLanguage Nothing "nlv")

-- | Walangama.
pattern Nlw :: Language
pattern Nlw = $(bakeLanguage Nothing "nlw")

-- | Nahali.
pattern Nlx :: Language
pattern Nlx = $(bakeLanguage Nothing "nlx")

-- | Nyamal.
pattern Nly :: Language
pattern Nly = $(bakeLanguage Nothing "nly")

-- | Nalögo.
pattern Nlz :: Language
pattern Nlz = $(bakeLanguage Nothing "nlz")

-- | Maram Naga.
pattern Nma :: Language
pattern Nma = $(bakeLanguage Nothing "nma")

-- | Big Nambas.
pattern Nmb :: Language
pattern Nmb = $(bakeLanguage Nothing "nmb")

-- | Ngam.
pattern Nmc :: Language
pattern Nmc = $(bakeLanguage Nothing "nmc")

-- | Ndumu.
pattern Nmd :: Language
pattern Nmd = $(bakeLanguage Nothing "nmd")

-- | Mzieme Naga.
pattern Nme :: Language
pattern Nme = $(bakeLanguage Nothing "nme")

-- | Tangkhul Naga (India).
pattern Nmf :: Language
pattern Nmf = $(bakeLanguage Nothing "nmf")

-- | Kwasio.
pattern Nmg :: Language
pattern Nmg = $(bakeLanguage Nothing "nmg")

-- | Monsang Naga.
pattern Nmh :: Language
pattern Nmh = $(bakeLanguage Nothing "nmh")

-- | Nyam.
pattern Nmi :: Language
pattern Nmi = $(bakeLanguage Nothing "nmi")

-- | Ngombe (Central African Republic).
pattern Nmj :: Language
pattern Nmj = $(bakeLanguage Nothing "nmj")

-- | Namakura.
pattern Nmk :: Language
pattern Nmk = $(bakeLanguage Nothing "nmk")

-- | Ndemli.
pattern Nml :: Language
pattern Nml = $(bakeLanguage Nothing "nml")

-- | Manangba.
pattern Nmm :: Language
pattern Nmm = $(bakeLanguage Nothing "nmm")

-- | ǃXóõ.
pattern Nmn :: Language
pattern Nmn = $(bakeLanguage Nothing "nmn")

-- | Moyon Naga.
pattern Nmo :: Language
pattern Nmo = $(bakeLanguage Nothing "nmo")

-- | Nimanbur.
pattern Nmp :: Language
pattern Nmp = $(bakeLanguage Nothing "nmp")

-- | Nambya.
pattern Nmq :: Language
pattern Nmq = $(bakeLanguage Nothing "nmq")

-- | Nimbari.
pattern Nmr :: Language
pattern Nmr = $(bakeLanguage Nothing "nmr")

-- | Letemboi.
pattern Nms :: Language
pattern Nms = $(bakeLanguage Nothing "nms")

-- | Namonuito.
pattern Nmt :: Language
pattern Nmt = $(bakeLanguage Nothing "nmt")

-- | Northeast Maidu.
pattern Nmu :: Language
pattern Nmu = $(bakeLanguage Nothing "nmu")

-- | Ngamini.
pattern Nmv :: Language
pattern Nmv = $(bakeLanguage Nothing "nmv")

-- | Nimoa.
pattern Nmw :: Language
pattern Nmw = $(bakeLanguage Nothing "nmw")

-- | Nama (Papua New Guinea).
pattern Nmx :: Language
pattern Nmx = $(bakeLanguage Nothing "nmx")

-- | Namuyi.
pattern Nmy :: Language
pattern Nmy = $(bakeLanguage Nothing "nmy")

-- | Nawdm.
pattern Nmz :: Language
pattern Nmz = $(bakeLanguage Nothing "nmz")

-- | Nyangumarta.
pattern Nna :: Language
pattern Nna = $(bakeLanguage Nothing "nna")

-- | Nande.
pattern Nnb :: Language
pattern Nnb = $(bakeLanguage Nothing "nnb")

-- | Nancere.
pattern Nnc :: Language
pattern Nnc = $(bakeLanguage Nothing "nnc")

-- | West Ambae.
pattern Nnd :: Language
pattern Nnd = $(bakeLanguage Nothing "nnd")

-- | Ngandyera.
pattern Nne :: Language
pattern Nne = $(bakeLanguage Nothing "nne")

-- | Ngaing.
pattern Nnf :: Language
pattern Nnf = $(bakeLanguage Nothing "nnf")

-- | Maring Naga.
pattern Nng :: Language
pattern Nng = $(bakeLanguage Nothing "nng")

-- | Ngiemboon.
pattern Nnh :: Language
pattern Nnh = $(bakeLanguage Nothing "nnh")

-- | North Nuaulu.
pattern Nni :: Language
pattern Nni = $(bakeLanguage Nothing "nni")

-- | Nyangatom.
pattern Nnj :: Language
pattern Nnj = $(bakeLanguage Nothing "nnj")

-- | Nankina.
pattern Nnk :: Language
pattern Nnk = $(bakeLanguage Nothing "nnk")

-- | Northern Rengma Naga.
pattern Nnl :: Language
pattern Nnl = $(bakeLanguage Nothing "nnl")

-- | Namia.
pattern Nnm :: Language
pattern Nnm = $(bakeLanguage Nothing "nnm")

-- | Ngete.
pattern Nnn :: Language
pattern Nnn = $(bakeLanguage Nothing "nnn")

-- | Wancho Naga.
pattern Nnp :: Language
pattern Nnp = $(bakeLanguage Nothing "nnp")

-- | Ngindo.
pattern Nnq :: Language
pattern Nnq = $(bakeLanguage Nothing "nnq")

-- | Narungga.
pattern Nnr :: Language
pattern Nnr = $(bakeLanguage Nothing "nnr")

-- | Nanticoke.
pattern Nnt :: Language
pattern Nnt = $(bakeLanguage Nothing "nnt")

-- | Dwang.
pattern Nnu :: Language
pattern Nnu = $(bakeLanguage Nothing "nnu")

-- | Nugunu (Australia).
pattern Nnv :: Language
pattern Nnv = $(bakeLanguage Nothing "nnv")

-- | Southern Nuni.
pattern Nnw :: Language
pattern Nnw = $(bakeLanguage Nothing "nnw")

-- | Nyangga.
pattern Nny :: Language
pattern Nny = $(bakeLanguage Nothing "nny")

-- | Nda\'nda'.
pattern Nnz :: Language
pattern Nnz = $(bakeLanguage Nothing "nnz")

-- | Woun Meu.
pattern Noa :: Language
pattern Noa = $(bakeLanguage Nothing "noa")

-- | Nuk.
pattern Noc :: Language
pattern Noc = $(bakeLanguage Nothing "noc")

-- | Northern Thai.
pattern Nod :: Language
pattern Nod = $(bakeLanguage Nothing "nod")

-- | Nimadi.
pattern Noe :: Language
pattern Noe = $(bakeLanguage Nothing "noe")

-- | Nomane.
pattern Nof :: Language
pattern Nof = $(bakeLanguage Nothing "nof")

-- | Nogai.
pattern Nog :: Language
pattern Nog = $(bakeLanguage Nothing "nog")

-- | Nomu.
pattern Noh :: Language
pattern Noh = $(bakeLanguage Nothing "noh")

-- | Noiri.
pattern Noi :: Language
pattern Noi = $(bakeLanguage Nothing "noi")

-- | Nonuya.
pattern Noj :: Language
pattern Noj = $(bakeLanguage Nothing "noj")

-- | Nooksack.
pattern Nok :: Language
pattern Nok = $(bakeLanguage Nothing "nok")

-- | Nomlaki.
pattern Nol :: Language
pattern Nol = $(bakeLanguage Nothing "nol")

-- | Old Norse.
pattern Non :: Language
pattern Non = $(bakeLanguage Nothing "non")

-- | Numanggang.
pattern Nop :: Language
pattern Nop = $(bakeLanguage Nothing "nop")

-- | Ngongo.
pattern Noq :: Language
pattern Noq = $(bakeLanguage Nothing "noq")

-- | Eastern Nisu.
pattern Nos :: Language
pattern Nos = $(bakeLanguage Nothing "nos")

-- | Nomatsiguenga.
pattern Not :: Language
pattern Not = $(bakeLanguage Nothing "not")

-- | Ewage-Notu.
pattern Nou :: Language
pattern Nou = $(bakeLanguage Nothing "nou")

-- | Novial.
pattern Nov :: Language
pattern Nov = $(bakeLanguage Nothing "nov")

-- | Nyambo.
pattern Now :: Language
pattern Now = $(bakeLanguage Nothing "now")

-- | Noy.
pattern Noy :: Language
pattern Noy = $(bakeLanguage Nothing "noy")

-- | Nayi.
pattern Noz :: Language
pattern Noz = $(bakeLanguage Nothing "noz")

-- | Nar Phu.
pattern Npa :: Language
pattern Npa = $(bakeLanguage Nothing "npa")

-- | Nupbikha.
pattern Npb :: Language
pattern Npb = $(bakeLanguage Nothing "npb")

-- | Ponyo-Gongwang Naga.
pattern Npg :: Language
pattern Npg = $(bakeLanguage Nothing "npg")

-- | Phom Naga.
pattern Nph :: Language
pattern Nph = $(bakeLanguage Nothing "nph")

-- | Nepali (individual language).
pattern Npi :: Language
pattern Npi = $(bakeLanguage Nothing "npi")

-- | Southeastern Puebla Nahuatl.
pattern Npl :: Language
pattern Npl = $(bakeLanguage Nothing "npl")

-- | Mondropolon.
pattern Npn :: Language
pattern Npn = $(bakeLanguage Nothing "npn")

-- | Pochuri Naga.
pattern Npo :: Language
pattern Npo = $(bakeLanguage Nothing "npo")

-- | Nipsan.
pattern Nps :: Language
pattern Nps = $(bakeLanguage Nothing "nps")

-- | Puimei Naga.
pattern Npu :: Language
pattern Npu = $(bakeLanguage Nothing "npu")

-- | Noipx.
pattern Npx :: Language
pattern Npx = $(bakeLanguage Nothing "npx")

-- | Napu.
pattern Npy :: Language
pattern Npy = $(bakeLanguage Nothing "npy")

-- | Southern Nago.
pattern Nqg :: Language
pattern Nqg = $(bakeLanguage Nothing "nqg")

-- | Kura Ede Nago.
pattern Nqk :: Language
pattern Nqk = $(bakeLanguage Nothing "nqk")

-- | Ngendelengo.
pattern Nql :: Language
pattern Nql = $(bakeLanguage Nothing "nql")

-- | Ndom.
pattern Nqm :: Language
pattern Nqm = $(bakeLanguage Nothing "nqm")

-- | Nen.
pattern Nqn :: Language
pattern Nqn = $(bakeLanguage Nothing "nqn")

-- | N'Ko.
pattern Nqo :: Language
pattern Nqo = $(bakeLanguage Nothing "nqo")

-- | Kyan-Karyaw Naga.
pattern Nqq :: Language
pattern Nqq = $(bakeLanguage Nothing "nqq")

-- | Nteng.
pattern Nqt :: Language
pattern Nqt = $(bakeLanguage Nothing "nqt")

-- | Akyaung Ari Naga.
pattern Nqy :: Language
pattern Nqy = $(bakeLanguage Nothing "nqy")

-- | Ngom.
pattern Nra :: Language
pattern Nra = $(bakeLanguage Nothing "nra")

-- | Nara.
pattern Nrb :: Language
pattern Nrb = $(bakeLanguage Nothing "nrb")

-- | Noric.
pattern Nrc :: Language
pattern Nrc = $(bakeLanguage Nothing "nrc")

-- | Southern Rengma Naga.
pattern Nre :: Language
pattern Nre = $(bakeLanguage Nothing "nre")

-- | Jèrriais.
pattern Nrf :: Language
pattern Nrf = $(bakeLanguage Nothing "nrf")

-- | Narango.
pattern Nrg :: Language
pattern Nrg = $(bakeLanguage Nothing "nrg")

-- | Chokri Naga.
pattern Nri :: Language
pattern Nri = $(bakeLanguage Nothing "nri")

-- | Ngarla.
pattern Nrk :: Language
pattern Nrk = $(bakeLanguage Nothing "nrk")

-- | Ngarluma.
pattern Nrl :: Language
pattern Nrl = $(bakeLanguage Nothing "nrl")

-- | Narom.
pattern Nrm :: Language
pattern Nrm = $(bakeLanguage Nothing "nrm")

-- | Norn.
pattern Nrn :: Language
pattern Nrn = $(bakeLanguage Nothing "nrn")

-- | North Picene.
pattern Nrp :: Language
pattern Nrp = $(bakeLanguage Nothing "nrp")

-- | Norra.
pattern Nrr :: Language
pattern Nrr = $(bakeLanguage Nothing "nrr")

-- | Northern Kalapuya.
pattern Nrt :: Language
pattern Nrt = $(bakeLanguage Nothing "nrt")

-- | Narua.
pattern Nru :: Language
pattern Nru = $(bakeLanguage Nothing "nru")

-- | Ngurmbur.
pattern Nrx :: Language
pattern Nrx = $(bakeLanguage Nothing "nrx")

-- | Lala.
pattern Nrz :: Language
pattern Nrz = $(bakeLanguage Nothing "nrz")

-- | Sangtam Naga.
pattern Nsa :: Language
pattern Nsa = $(bakeLanguage Nothing "nsa")

-- | Lower Nossob.
pattern Nsb :: Language
pattern Nsb = $(bakeLanguage Nothing "nsb")

-- | Nshi.
pattern Nsc :: Language
pattern Nsc = $(bakeLanguage Nothing "nsc")

-- | Southern Nisu.
pattern Nsd :: Language
pattern Nsd = $(bakeLanguage Nothing "nsd")

-- | Nsenga.
pattern Nse :: Language
pattern Nse = $(bakeLanguage Nothing "nse")

-- | Northwestern Nisu.
pattern Nsf :: Language
pattern Nsf = $(bakeLanguage Nothing "nsf")

-- | Ngasa.
pattern Nsg :: Language
pattern Nsg = $(bakeLanguage Nothing "nsg")

-- | Ngoshie.
pattern Nsh :: Language
pattern Nsh = $(bakeLanguage Nothing "nsh")

-- | Nigerian Sign Language.
pattern Nsi :: Language
pattern Nsi = $(bakeLanguage Nothing "nsi")

-- | Naskapi.
pattern Nsk :: Language
pattern Nsk = $(bakeLanguage Nothing "nsk")

-- | Norwegian Sign Language.
pattern Nsl :: Language
pattern Nsl = $(bakeLanguage Nothing "nsl")

-- | Sumi Naga.
pattern Nsm :: Language
pattern Nsm = $(bakeLanguage Nothing "nsm")

-- | Nehan.
pattern Nsn :: Language
pattern Nsn = $(bakeLanguage Nothing "nsn")

-- | Pedi.
pattern Nso :: Language
pattern Nso = $(bakeLanguage Nothing "nso")

-- | Nepalese Sign Language.
pattern Nsp :: Language
pattern Nsp = $(bakeLanguage Nothing "nsp")

-- | Northern Sierra Miwok.
pattern Nsq :: Language
pattern Nsq = $(bakeLanguage Nothing "nsq")

-- | Maritime Sign Language.
pattern Nsr :: Language
pattern Nsr = $(bakeLanguage Nothing "nsr")

-- | Nali.
pattern Nss :: Language
pattern Nss = $(bakeLanguage Nothing "nss")

-- | Tase Naga.
pattern Nst :: Language
pattern Nst = $(bakeLanguage Nothing "nst")

-- | Sierra Negra Nahuatl.
pattern Nsu :: Language
pattern Nsu = $(bakeLanguage Nothing "nsu")

-- | Southwestern Nisu.
pattern Nsv :: Language
pattern Nsv = $(bakeLanguage Nothing "nsv")

-- | Navut.
pattern Nsw :: Language
pattern Nsw = $(bakeLanguage Nothing "nsw")

-- | Nsongo.
pattern Nsx :: Language
pattern Nsx = $(bakeLanguage Nothing "nsx")

-- | Nasal.
pattern Nsy :: Language
pattern Nsy = $(bakeLanguage Nothing "nsy")

-- | Nisenan.
pattern Nsz :: Language
pattern Nsz = $(bakeLanguage Nothing "nsz")

-- | Northern Tidung.
pattern Ntd :: Language
pattern Ntd = $(bakeLanguage Nothing "ntd")

-- | Ngantangarra.
pattern Ntg :: Language
pattern Ntg = $(bakeLanguage Nothing "ntg")

-- | Natioro.
pattern Nti :: Language
pattern Nti = $(bakeLanguage Nothing "nti")

-- | Ngaanyatjarra.
pattern Ntj :: Language
pattern Ntj = $(bakeLanguage Nothing "ntj")

-- | Ikoma-Nata-Isenye.
pattern Ntk :: Language
pattern Ntk = $(bakeLanguage Nothing "ntk")

-- | Nateni.
pattern Ntm :: Language
pattern Ntm = $(bakeLanguage Nothing "ntm")

-- | Ntomba.
pattern Nto :: Language
pattern Nto = $(bakeLanguage Nothing "nto")

-- | Northern Tepehuan.
pattern Ntp :: Language
pattern Ntp = $(bakeLanguage Nothing "ntp")

-- | Delo.
pattern Ntr :: Language
pattern Ntr = $(bakeLanguage Nothing "ntr")

-- | Natügu.
pattern Ntu :: Language
pattern Ntu = $(bakeLanguage Nothing "ntu")

-- | Nottoway.
pattern Ntw :: Language
pattern Ntw = $(bakeLanguage Nothing "ntw")

-- | Tangkhul Naga (Myanmar).
pattern Ntx :: Language
pattern Ntx = $(bakeLanguage Nothing "ntx")

-- | Mantsi.
pattern Nty :: Language
pattern Nty = $(bakeLanguage Nothing "nty")

-- | Natanzi.
pattern Ntz :: Language
pattern Ntz = $(bakeLanguage Nothing "ntz")

-- | Yuanga.
pattern Nua :: Language
pattern Nua = $(bakeLanguage Nothing "nua")

-- | Nukuini.
pattern Nuc :: Language
pattern Nuc = $(bakeLanguage Nothing "nuc")

-- | Ngala.
pattern Nud :: Language
pattern Nud = $(bakeLanguage Nothing "nud")

-- | Ngundu.
pattern Nue :: Language
pattern Nue = $(bakeLanguage Nothing "nue")

-- | Nusu.
pattern Nuf :: Language
pattern Nuf = $(bakeLanguage Nothing "nuf")

-- | Nungali.
pattern Nug :: Language
pattern Nug = $(bakeLanguage Nothing "nug")

-- | Ndunda.
pattern Nuh :: Language
pattern Nuh = $(bakeLanguage Nothing "nuh")

-- | Ngumbi.
pattern Nui :: Language
pattern Nui = $(bakeLanguage Nothing "nui")

-- | Nyole.
pattern Nuj :: Language
pattern Nuj = $(bakeLanguage Nothing "nuj")

-- | Nuu-chah-nulth.
pattern Nuk :: Language
pattern Nuk = $(bakeLanguage Nothing "nuk")

-- | Nusa Laut.
pattern Nul :: Language
pattern Nul = $(bakeLanguage Nothing "nul")

-- | Niuafo'ou.
pattern Num :: Language
pattern Num = $(bakeLanguage Nothing "num")

-- | Anong.
pattern Nun :: Language
pattern Nun = $(bakeLanguage Nothing "nun")

-- | Nguôn.
pattern Nuo :: Language
pattern Nuo = $(bakeLanguage Nothing "nuo")

-- | Nupe-Nupe-Tako.
pattern Nup :: Language
pattern Nup = $(bakeLanguage Nothing "nup")

-- | Nukumanu.
pattern Nuq :: Language
pattern Nuq = $(bakeLanguage Nothing "nuq")

-- | Nukuria.
pattern Nur :: Language
pattern Nur = $(bakeLanguage Nothing "nur")

-- | Nuer.
pattern Nus :: Language
pattern Nus = $(bakeLanguage Nothing "nus")

-- | Nung (Viet Nam).
pattern Nut :: Language
pattern Nut = $(bakeLanguage Nothing "nut")

-- | Ngbundu.
pattern Nuu :: Language
pattern Nuu = $(bakeLanguage Nothing "nuu")

-- | Northern Nuni.
pattern Nuv :: Language
pattern Nuv = $(bakeLanguage Nothing "nuv")

-- | Nguluwan.
pattern Nuw :: Language
pattern Nuw = $(bakeLanguage Nothing "nuw")

-- | Mehek.
pattern Nux :: Language
pattern Nux = $(bakeLanguage Nothing "nux")

-- | Nunggubuyu.
pattern Nuy :: Language
pattern Nuy = $(bakeLanguage Nothing "nuy")

-- | Tlamacazapa Nahuatl.
pattern Nuz :: Language
pattern Nuz = $(bakeLanguage Nothing "nuz")

-- | Nasarian.
pattern Nvh :: Language
pattern Nvh = $(bakeLanguage Nothing "nvh")

-- | Namiae.
pattern Nvm :: Language
pattern Nvm = $(bakeLanguage Nothing "nvm")

-- | Nyokon.
pattern Nvo :: Language
pattern Nvo = $(bakeLanguage Nothing "nvo")

-- | Nawathinehena.
pattern Nwa :: Language
pattern Nwa = $(bakeLanguage Nothing "nwa")

-- | Nyabwa.
pattern Nwb :: Language
pattern Nwb = $(bakeLanguage Nothing "nwb")

-- | Classical Newari.
pattern Nwc :: Language
pattern Nwc = $(bakeLanguage Nothing "nwc")

-- | Ngwe.
pattern Nwe :: Language
pattern Nwe = $(bakeLanguage Nothing "nwe")

-- | Ngayawung.
pattern Nwg :: Language
pattern Nwg = $(bakeLanguage Nothing "nwg")

-- | Southwest Tanna.
pattern Nwi :: Language
pattern Nwi = $(bakeLanguage Nothing "nwi")

-- | Nyamusa-Molo.
pattern Nwm :: Language
pattern Nwm = $(bakeLanguage Nothing "nwm")

-- | Nauo.
pattern Nwo :: Language
pattern Nwo = $(bakeLanguage Nothing "nwo")

-- | Nawaru.
pattern Nwr :: Language
pattern Nwr = $(bakeLanguage Nothing "nwr")

-- | Ndwewe.
pattern Nww :: Language
pattern Nww = $(bakeLanguage Nothing "nww")

-- | Middle Newar.
pattern Nwx :: Language
pattern Nwx = $(bakeLanguage Nothing "nwx")

-- | Nottoway-Meherrin.
pattern Nwy :: Language
pattern Nwy = $(bakeLanguage Nothing "nwy")

-- | Nauete.
pattern Nxa :: Language
pattern Nxa = $(bakeLanguage Nothing "nxa")

-- | Ngando (Democratic Republic of Congo).
pattern Nxd :: Language
pattern Nxd = $(bakeLanguage Nothing "nxd")

-- | Nage.
pattern Nxe :: Language
pattern Nxe = $(bakeLanguage Nothing "nxe")

-- | Ngad'a.
pattern Nxg :: Language
pattern Nxg = $(bakeLanguage Nothing "nxg")

-- | Nindi.
pattern Nxi :: Language
pattern Nxi = $(bakeLanguage Nothing "nxi")

-- | Koki Naga.
pattern Nxk :: Language
pattern Nxk = $(bakeLanguage Nothing "nxk")

-- | South Nuaulu.
pattern Nxl :: Language
pattern Nxl = $(bakeLanguage Nothing "nxl")

-- | Numidian.
pattern Nxm :: Language
pattern Nxm = $(bakeLanguage Nothing "nxm")

-- | Ngawun.
pattern Nxn :: Language
pattern Nxn = $(bakeLanguage Nothing "nxn")

-- | Ndambomo.
pattern Nxo :: Language
pattern Nxo = $(bakeLanguage Nothing "nxo")

-- | Naxi.
pattern Nxq :: Language
pattern Nxq = $(bakeLanguage Nothing "nxq")

-- | Ninggerum.
pattern Nxr :: Language
pattern Nxr = $(bakeLanguage Nothing "nxr")

-- | Nafri.
pattern Nxx :: Language
pattern Nxx = $(bakeLanguage Nothing "nxx")

-- | Nyangbo.
pattern Nyb :: Language
pattern Nyb = $(bakeLanguage Nothing "nyb")

-- | Nyanga-li.
pattern Nyc :: Language
pattern Nyc = $(bakeLanguage Nothing "nyc")

-- | Nyore.
pattern Nyd :: Language
pattern Nyd = $(bakeLanguage Nothing "nyd")

-- | Nyengo.
pattern Nye :: Language
pattern Nye = $(bakeLanguage Nothing "nye")

-- | Giryama.
pattern Nyf :: Language
pattern Nyf = $(bakeLanguage Nothing "nyf")

-- | Nyindu.
pattern Nyg :: Language
pattern Nyg = $(bakeLanguage Nothing "nyg")

-- | Nyikina.
pattern Nyh :: Language
pattern Nyh = $(bakeLanguage Nothing "nyh")

-- | Ama (Sudan).
pattern Nyi :: Language
pattern Nyi = $(bakeLanguage Nothing "nyi")

-- | Nyanga.
pattern Nyj :: Language
pattern Nyj = $(bakeLanguage Nothing "nyj")

-- | Nyaneka.
pattern Nyk :: Language
pattern Nyk = $(bakeLanguage Nothing "nyk")

-- | Nyeu.
pattern Nyl :: Language
pattern Nyl = $(bakeLanguage Nothing "nyl")

-- | Nyamwezi.
pattern Nym :: Language
pattern Nym = $(bakeLanguage Nothing "nym")

-- | Nyankole.
pattern Nyn :: Language
pattern Nyn = $(bakeLanguage Nothing "nyn")

-- | Nyoro.
pattern Nyo :: Language
pattern Nyo = $(bakeLanguage Nothing "nyo")

-- | Nyang'i.
pattern Nyp :: Language
pattern Nyp = $(bakeLanguage Nothing "nyp")

-- | Nayini.
pattern Nyq :: Language
pattern Nyq = $(bakeLanguage Nothing "nyq")

-- | Nyiha (Malawi).
pattern Nyr :: Language
pattern Nyr = $(bakeLanguage Nothing "nyr")

-- | Nyungar.
pattern Nys :: Language
pattern Nys = $(bakeLanguage Nothing "nys")

-- | Nyawaygi.
pattern Nyt :: Language
pattern Nyt = $(bakeLanguage Nothing "nyt")

-- | Nyungwe.
pattern Nyu :: Language
pattern Nyu = $(bakeLanguage Nothing "nyu")

-- | Nyulnyul.
pattern Nyv :: Language
pattern Nyv = $(bakeLanguage Nothing "nyv")

-- | Nyaw.
pattern Nyw :: Language
pattern Nyw = $(bakeLanguage Nothing "nyw")

-- | Nganyaywana.
pattern Nyx :: Language
pattern Nyx = $(bakeLanguage Nothing "nyx")

-- | Nyakyusa-Ngonde.
pattern Nyy :: Language
pattern Nyy = $(bakeLanguage Nothing "nyy")

-- | Tigon Mbembe.
pattern Nza :: Language
pattern Nza = $(bakeLanguage Nothing "nza")

-- | Njebi.
pattern Nzb :: Language
pattern Nzb = $(bakeLanguage Nothing "nzb")

-- | Nzadi.
pattern Nzd :: Language
pattern Nzd = $(bakeLanguage Nothing "nzd")

-- | Nzima.
pattern Nzi :: Language
pattern Nzi = $(bakeLanguage Nothing "nzi")

-- | Nzakara.
pattern Nzk :: Language
pattern Nzk = $(bakeLanguage Nothing "nzk")

-- | Zeme Naga.
pattern Nzm :: Language
pattern Nzm = $(bakeLanguage Nothing "nzm")

-- | Dir-Nyamzak-Mbarimi.
pattern Nzr :: Language
pattern Nzr = $(bakeLanguage Nothing "nzr")

-- | New Zealand Sign Language.
pattern Nzs :: Language
pattern Nzs = $(bakeLanguage Nothing "nzs")

-- | Teke-Nzikou.
pattern Nzu :: Language
pattern Nzu = $(bakeLanguage Nothing "nzu")

-- | Nzakambay.
pattern Nzy :: Language
pattern Nzy = $(bakeLanguage Nothing "nzy")

-- | Nanga Dama Dogon.
pattern Nzz :: Language
pattern Nzz = $(bakeLanguage Nothing "nzz")

-- | Orok.
pattern Oaa :: Language
pattern Oaa = $(bakeLanguage Nothing "oaa")

-- | Oroch.
pattern Oac :: Language
pattern Oac = $(bakeLanguage Nothing "oac")

-- | Noakhali.
pattern Oak :: Language
pattern Oak = $(bakeLanguage Nothing "oak")

-- | Old Aramaic (up to 700 BCE).
pattern Oar :: Language
pattern Oar = $(bakeLanguage Nothing "oar")

-- | Old Avar.
pattern Oav :: Language
pattern Oav = $(bakeLanguage Nothing "oav")

-- | Obispeño.
pattern Obi :: Language
pattern Obi = $(bakeLanguage Nothing "obi")

-- | Southern Bontok.
pattern Obk :: Language
pattern Obk = $(bakeLanguage Nothing "obk")

-- | Oblo.
pattern Obl :: Language
pattern Obl = $(bakeLanguage Nothing "obl")

-- | Moabite.
pattern Obm :: Language
pattern Obm = $(bakeLanguage Nothing "obm")

-- | Obo Manobo.
pattern Obo :: Language
pattern Obo = $(bakeLanguage Nothing "obo")

-- | Old Burmese.
pattern Obr :: Language
pattern Obr = $(bakeLanguage Nothing "obr")

-- | Old Breton.
pattern Obt :: Language
pattern Obt = $(bakeLanguage Nothing "obt")

-- | Obulom.
pattern Obu :: Language
pattern Obu = $(bakeLanguage Nothing "obu")

-- | Ocaina.
pattern Oca :: Language
pattern Oca = $(bakeLanguage Nothing "oca")

-- | Old Chinese.
pattern Och :: Language
pattern Och = $(bakeLanguage Nothing "och")

-- | Old Cham.
pattern Ocm :: Language
pattern Ocm = $(bakeLanguage Nothing "ocm")

-- | Old Cornish.
pattern Oco :: Language
pattern Oco = $(bakeLanguage Nothing "oco")

-- | Atzingo Matlatzinca.
pattern Ocu :: Language
pattern Ocu = $(bakeLanguage Nothing "ocu")

-- | Odut.
pattern Oda :: Language
pattern Oda = $(bakeLanguage Nothing "oda")

-- | Od.
pattern Odk :: Language
pattern Odk = $(bakeLanguage Nothing "odk")

-- | Old Dutch.
pattern Odt :: Language
pattern Odt = $(bakeLanguage Nothing "odt")

-- | Odual.
pattern Odu :: Language
pattern Odu = $(bakeLanguage Nothing "odu")

-- | Ofo.
pattern Ofo :: Language
pattern Ofo = $(bakeLanguage Nothing "ofo")

-- | Old Frisian.
pattern Ofs :: Language
pattern Ofs = $(bakeLanguage Nothing "ofs")

-- | Efutop.
pattern Ofu :: Language
pattern Ofu = $(bakeLanguage Nothing "ofu")

-- | Ogbia.
pattern Ogb :: Language
pattern Ogb = $(bakeLanguage Nothing "ogb")

-- | Ogbah.
pattern Ogc :: Language
pattern Ogc = $(bakeLanguage Nothing "ogc")

-- | Old Georgian.
pattern Oge :: Language
pattern Oge = $(bakeLanguage Nothing "oge")

-- | Ogbogolo.
pattern Ogg :: Language
pattern Ogg = $(bakeLanguage Nothing "ogg")

-- | Khana.
pattern Ogo :: Language
pattern Ogo = $(bakeLanguage Nothing "ogo")

-- | Ogbronuagum.
pattern Ogu :: Language
pattern Ogu = $(bakeLanguage Nothing "ogu")

-- | Old Hittite.
pattern Oht :: Language
pattern Oht = $(bakeLanguage Nothing "oht")

-- | Old Hungarian.
pattern Ohu :: Language
pattern Ohu = $(bakeLanguage Nothing "ohu")

-- | Oirata.
pattern Oia :: Language
pattern Oia = $(bakeLanguage Nothing "oia")

-- | Okolie.
pattern Oie :: Language
pattern Oie = $(bakeLanguage Nothing "oie")

-- | Inebu One.
pattern Oin :: Language
pattern Oin = $(bakeLanguage Nothing "oin")

-- | Northwestern Ojibwa.
pattern Ojb :: Language
pattern Ojb = $(bakeLanguage Nothing "ojb")

-- | Central Ojibwa.
pattern Ojc :: Language
pattern Ojc = $(bakeLanguage Nothing "ojc")

-- | Eastern Ojibwa.
pattern Ojg :: Language
pattern Ojg = $(bakeLanguage Nothing "ojg")

-- | Old Japanese.
pattern Ojp :: Language
pattern Ojp = $(bakeLanguage Nothing "ojp")

-- | Severn Ojibwa.
pattern Ojs :: Language
pattern Ojs = $(bakeLanguage Nothing "ojs")

-- | Ontong Java.
pattern Ojv :: Language
pattern Ojv = $(bakeLanguage Nothing "ojv")

-- | Western Ojibwa.
pattern Ojw :: Language
pattern Ojw = $(bakeLanguage Nothing "ojw")

-- | Okanagan.
pattern Oka :: Language
pattern Oka = $(bakeLanguage Nothing "oka")

-- | Okobo.
pattern Okb :: Language
pattern Okb = $(bakeLanguage Nothing "okb")

-- | Kobo.
pattern Okc :: Language
pattern Okc = $(bakeLanguage Nothing "okc")

-- | Okodia.
pattern Okd :: Language
pattern Okd = $(bakeLanguage Nothing "okd")

-- | Okpe (Southwestern Edo).
pattern Oke :: Language
pattern Oke = $(bakeLanguage Nothing "oke")

-- | Koko Babangk.
pattern Okg :: Language
pattern Okg = $(bakeLanguage Nothing "okg")

-- | Koresh-e Rostam.
pattern Okh :: Language
pattern Okh = $(bakeLanguage Nothing "okh")

-- | Okiek.
pattern Oki :: Language
pattern Oki = $(bakeLanguage Nothing "oki")

-- | Oko-Juwoi.
pattern Okj :: Language
pattern Okj = $(bakeLanguage Nothing "okj")

-- | Kwamtim One.
pattern Okk :: Language
pattern Okk = $(bakeLanguage Nothing "okk")

-- | Old Kentish Sign Language.
pattern Okl :: Language
pattern Okl = $(bakeLanguage Nothing "okl")

-- | Middle Korean (10th-16th cent.).
pattern Okm :: Language
pattern Okm = $(bakeLanguage Nothing "okm")

-- | Oki-No-Erabu.
pattern Okn :: Language
pattern Okn = $(bakeLanguage Nothing "okn")

-- | Old Korean (3rd-9th cent.).
pattern Oko :: Language
pattern Oko = $(bakeLanguage Nothing "oko")

-- | Kirike.
pattern Okr :: Language
pattern Okr = $(bakeLanguage Nothing "okr")

-- | Oko-Eni-Osayen.
pattern Oks :: Language
pattern Oks = $(bakeLanguage Nothing "oks")

-- | Oku.
pattern Oku :: Language
pattern Oku = $(bakeLanguage Nothing "oku")

-- | Orokaiva.
pattern Okv :: Language
pattern Okv = $(bakeLanguage Nothing "okv")

-- | Okpe (Northwestern Edo).
pattern Okx :: Language
pattern Okx = $(bakeLanguage Nothing "okx")

-- | Old Khmer.
pattern Okz :: Language
pattern Okz = $(bakeLanguage Nothing "okz")

-- | Walungge.
pattern Ola :: Language
pattern Ola = $(bakeLanguage Nothing "ola")

-- | Oli-Bodiman.
pattern Olb :: Language
pattern Olb = $(bakeLanguage Nothing "olb")

-- | Mochi.
pattern Old :: Language
pattern Old = $(bakeLanguage Nothing "old")

-- | Olekha.
pattern Ole :: Language
pattern Ole = $(bakeLanguage Nothing "ole")

-- | Olkol.
pattern Olk :: Language
pattern Olk = $(bakeLanguage Nothing "olk")

-- | Oloma.
pattern Olm :: Language
pattern Olm = $(bakeLanguage Nothing "olm")

-- | Livvi.
pattern Olo :: Language
pattern Olo = $(bakeLanguage Nothing "olo")

-- | Olrat.
pattern Olr :: Language
pattern Olr = $(bakeLanguage Nothing "olr")

-- | Old Lithuanian.
pattern Olt :: Language
pattern Olt = $(bakeLanguage Nothing "olt")

-- | Kuvale.
pattern Olu :: Language
pattern Olu = $(bakeLanguage Nothing "olu")

-- | Omaha-Ponca.
pattern Oma :: Language
pattern Oma = $(bakeLanguage Nothing "oma")

-- | East Ambae.
pattern Omb :: Language
pattern Omb = $(bakeLanguage Nothing "omb")

-- | Mochica.
pattern Omc :: Language
pattern Omc = $(bakeLanguage Nothing "omc")

-- | Omagua.
pattern Omg :: Language
pattern Omg = $(bakeLanguage Nothing "omg")

-- | Omi.
pattern Omi :: Language
pattern Omi = $(bakeLanguage Nothing "omi")

-- | Omok.
pattern Omk :: Language
pattern Omk = $(bakeLanguage Nothing "omk")

-- | Ombo.
pattern Oml :: Language
pattern Oml = $(bakeLanguage Nothing "oml")

-- | Minoan.
pattern Omn :: Language
pattern Omn = $(bakeLanguage Nothing "omn")

-- | Utarmbung.
pattern Omo :: Language
pattern Omo = $(bakeLanguage Nothing "omo")

-- | Old Manipuri.
pattern Omp :: Language
pattern Omp = $(bakeLanguage Nothing "omp")

-- | Old Marathi.
pattern Omr :: Language
pattern Omr = $(bakeLanguage Nothing "omr")

-- | Omotik.
pattern Omt :: Language
pattern Omt = $(bakeLanguage Nothing "omt")

-- | Omurano.
pattern Omu :: Language
pattern Omu = $(bakeLanguage Nothing "omu")

-- | South Tairora.
pattern Omw :: Language
pattern Omw = $(bakeLanguage Nothing "omw")

-- | Old Mon.
pattern Omx :: Language
pattern Omx = $(bakeLanguage Nothing "omx")

-- | Old Malay.
pattern Omy :: Language
pattern Omy = $(bakeLanguage Nothing "omy")

-- | Ona.
pattern Ona :: Language
pattern Ona = $(bakeLanguage Nothing "ona")

-- | Lingao.
pattern Onb :: Language
pattern Onb = $(bakeLanguage Nothing "onb")

-- | Oneida.
pattern One :: Language
pattern One = $(bakeLanguage Nothing "one")

-- | Olo.
pattern Ong :: Language
pattern Ong = $(bakeLanguage Nothing "ong")

-- | Onin.
pattern Oni :: Language
pattern Oni = $(bakeLanguage Nothing "oni")

-- | Onjob.
pattern Onj :: Language
pattern Onj = $(bakeLanguage Nothing "onj")

-- | Kabore One.
pattern Onk :: Language
pattern Onk = $(bakeLanguage Nothing "onk")

-- | Onobasulu.
pattern Onn :: Language
pattern Onn = $(bakeLanguage Nothing "onn")

-- | Onondaga.
pattern Ono :: Language
pattern Ono = $(bakeLanguage Nothing "ono")

-- | Sartang.
pattern Onp :: Language
pattern Onp = $(bakeLanguage Nothing "onp")

-- | Northern One.
pattern Onr :: Language
pattern Onr = $(bakeLanguage Nothing "onr")

-- | Ono.
pattern Ons :: Language
pattern Ons = $(bakeLanguage Nothing "ons")

-- | Ontenu.
pattern Ont :: Language
pattern Ont = $(bakeLanguage Nothing "ont")

-- | Unua.
pattern Onu :: Language
pattern Onu = $(bakeLanguage Nothing "onu")

-- | Old Nubian.
pattern Onw :: Language
pattern Onw = $(bakeLanguage Nothing "onw")

-- | Onin Based Pidgin.
pattern Onx :: Language
pattern Onx = $(bakeLanguage Nothing "onx")

-- | Tohono O'odham.
pattern Ood :: Language
pattern Ood = $(bakeLanguage Nothing "ood")

-- | Ong.
pattern Oog :: Language
pattern Oog = $(bakeLanguage Nothing "oog")

-- | Önge.
pattern Oon :: Language
pattern Oon = $(bakeLanguage Nothing "oon")

-- | Oorlams.
pattern Oor :: Language
pattern Oor = $(bakeLanguage Nothing "oor")

-- | Old Ossetic.
pattern Oos :: Language
pattern Oos = $(bakeLanguage Nothing "oos")

-- | Okpamheri.
pattern Opa :: Language
pattern Opa = $(bakeLanguage Nothing "opa")

-- | Kopkaka.
pattern Opk :: Language
pattern Opk = $(bakeLanguage Nothing "opk")

-- | Oksapmin.
pattern Opm :: Language
pattern Opm = $(bakeLanguage Nothing "opm")

-- | Opao.
pattern Opo :: Language
pattern Opo = $(bakeLanguage Nothing "opo")

-- | Opata.
pattern Opt :: Language
pattern Opt = $(bakeLanguage Nothing "opt")

-- | Ofayé.
pattern Opy :: Language
pattern Opy = $(bakeLanguage Nothing "opy")

-- | Oroha.
pattern Ora :: Language
pattern Ora = $(bakeLanguage Nothing "ora")

-- | Orma.
pattern Orc :: Language
pattern Orc = $(bakeLanguage Nothing "orc")

-- | Orejón.
pattern Ore :: Language
pattern Ore = $(bakeLanguage Nothing "ore")

-- | Oring.
pattern Org :: Language
pattern Org = $(bakeLanguage Nothing "org")

-- | Oroqen.
pattern Orh :: Language
pattern Orh = $(bakeLanguage Nothing "orh")

-- | Orang Kanaq.
pattern Orn :: Language
pattern Orn = $(bakeLanguage Nothing "orn")

-- | Orokolo.
pattern Oro :: Language
pattern Oro = $(bakeLanguage Nothing "oro")

-- | Oruma.
pattern Orr :: Language
pattern Orr = $(bakeLanguage Nothing "orr")

-- | Orang Seletar.
pattern Ors :: Language
pattern Ors = $(bakeLanguage Nothing "ors")

-- | Adivasi Oriya.
pattern Ort :: Language
pattern Ort = $(bakeLanguage Nothing "ort")

-- | Ormuri.
pattern Oru :: Language
pattern Oru = $(bakeLanguage Nothing "oru")

-- | Old Russian.
pattern Orv :: Language
pattern Orv = $(bakeLanguage Nothing "orv")

-- | Oro Win.
pattern Orw :: Language
pattern Orw = $(bakeLanguage Nothing "orw")

-- | Oro.
pattern Orx :: Language
pattern Orx = $(bakeLanguage Nothing "orx")

-- | Odia.
pattern Ory :: Language
pattern Ory = $(bakeLanguage Nothing "ory")

-- | Ormu.
pattern Orz :: Language
pattern Orz = $(bakeLanguage Nothing "orz")

-- | Osage.
pattern Osa :: Language
pattern Osa = $(bakeLanguage Nothing "osa")

-- | Oscan.
pattern Osc :: Language
pattern Osc = $(bakeLanguage Nothing "osc")

-- | Digor Ossetic.
pattern Osd :: Language
pattern Osd = $(bakeLanguage Nothing "osd")

-- | Osing.
pattern Osi :: Language
pattern Osi = $(bakeLanguage Nothing "osi")

-- | Old Sundanese.
pattern Osn :: Language
pattern Osn = $(bakeLanguage Nothing "osn")

-- | Ososo.
pattern Oso :: Language
pattern Oso = $(bakeLanguage Nothing "oso")

-- | Old Spanish.
pattern Osp :: Language
pattern Osp = $(bakeLanguage Nothing "osp")

-- | Osatu.
pattern Ost :: Language
pattern Ost = $(bakeLanguage Nothing "ost")

-- | Southern One.
pattern Osu :: Language
pattern Osu = $(bakeLanguage Nothing "osu")

-- | Old Saxon.
pattern Osx :: Language
pattern Osx = $(bakeLanguage Nothing "osx")

-- | Ottoman Turkish (1500-1928).
pattern Ota :: Language
pattern Ota = $(bakeLanguage Nothing "ota")

-- | Old Tibetan.
pattern Otb :: Language
pattern Otb = $(bakeLanguage Nothing "otb")

-- | Ot Danum.
pattern Otd :: Language
pattern Otd = $(bakeLanguage Nothing "otd")

-- | Mezquital Otomi.
pattern Ote :: Language
pattern Ote = $(bakeLanguage Nothing "ote")

-- | Oti.
pattern Oti :: Language
pattern Oti = $(bakeLanguage Nothing "oti")

-- | Old Turkish.
pattern Otk :: Language
pattern Otk = $(bakeLanguage Nothing "otk")

-- | Tilapa Otomi.
pattern Otl :: Language
pattern Otl = $(bakeLanguage Nothing "otl")

-- | Eastern Highland Otomi.
pattern Otm :: Language
pattern Otm = $(bakeLanguage Nothing "otm")

-- | Tenango Otomi.
pattern Otn :: Language
pattern Otn = $(bakeLanguage Nothing "otn")

-- | Querétaro Otomi.
pattern Otq :: Language
pattern Otq = $(bakeLanguage Nothing "otq")

-- | Otoro.
pattern Otr :: Language
pattern Otr = $(bakeLanguage Nothing "otr")

-- | Estado de México Otomi.
pattern Ots :: Language
pattern Ots = $(bakeLanguage Nothing "ots")

-- | Temoaya Otomi.
pattern Ott :: Language
pattern Ott = $(bakeLanguage Nothing "ott")

-- | Otuke.
pattern Otu :: Language
pattern Otu = $(bakeLanguage Nothing "otu")

-- | Ottawa.
pattern Otw :: Language
pattern Otw = $(bakeLanguage Nothing "otw")

-- | Texcatepec Otomi.
pattern Otx :: Language
pattern Otx = $(bakeLanguage Nothing "otx")

-- | Old Tamil.
pattern Oty :: Language
pattern Oty = $(bakeLanguage Nothing "oty")

-- | Ixtenco Otomi.
pattern Otz :: Language
pattern Otz = $(bakeLanguage Nothing "otz")

-- | Tagargrent.
pattern Oua :: Language
pattern Oua = $(bakeLanguage Nothing "oua")

-- | Glio-Oubi.
pattern Oub :: Language
pattern Oub = $(bakeLanguage Nothing "oub")

-- | Oune.
pattern Oue :: Language
pattern Oue = $(bakeLanguage Nothing "oue")

-- | Old Uighur.
pattern Oui :: Language
pattern Oui = $(bakeLanguage Nothing "oui")

-- | Ouma.
pattern Oum :: Language
pattern Oum = $(bakeLanguage Nothing "oum")

-- | Elfdalian.
pattern Ovd :: Language
pattern Ovd = $(bakeLanguage Nothing "ovd")

-- | Owiniga.
pattern Owi :: Language
pattern Owi = $(bakeLanguage Nothing "owi")

-- | Old Welsh.
pattern Owl :: Language
pattern Owl = $(bakeLanguage Nothing "owl")

-- | Oy.
pattern Oyb :: Language
pattern Oyb = $(bakeLanguage Nothing "oyb")

-- | Oyda.
pattern Oyd :: Language
pattern Oyd = $(bakeLanguage Nothing "oyd")

-- | Wayampi.
pattern Oym :: Language
pattern Oym = $(bakeLanguage Nothing "oym")

-- | Oya'oya.
pattern Oyy :: Language
pattern Oyy = $(bakeLanguage Nothing "oyy")

-- | Koonzime.
pattern Ozm :: Language
pattern Ozm = $(bakeLanguage Nothing "ozm")

-- | Parecís.
pattern Pab :: Language
pattern Pab = $(bakeLanguage Nothing "pab")

-- | Pacoh.
pattern Pac :: Language
pattern Pac = $(bakeLanguage Nothing "pac")

-- | Paumarí.
pattern Pad :: Language
pattern Pad = $(bakeLanguage Nothing "pad")

-- | Pagibete.
pattern Pae :: Language
pattern Pae = $(bakeLanguage Nothing "pae")

-- | Paranawát.
pattern Paf :: Language
pattern Paf = $(bakeLanguage Nothing "paf")

-- | Pangasinan.
pattern Pag :: Language
pattern Pag = $(bakeLanguage Nothing "pag")

-- | Tenharim.
pattern Pah :: Language
pattern Pah = $(bakeLanguage Nothing "pah")

-- | Pe.
pattern Pai :: Language
pattern Pai = $(bakeLanguage Nothing "pai")

-- | Parakanã.
pattern Pak :: Language
pattern Pak = $(bakeLanguage Nothing "pak")

-- | Pahlavi.
pattern Pal :: Language
pattern Pal = $(bakeLanguage Nothing "pal")

-- | Pampanga.
pattern Pam :: Language
pattern Pam = $(bakeLanguage Nothing "pam")

-- | Northern Paiute.
pattern Pao :: Language
pattern Pao = $(bakeLanguage Nothing "pao")

-- | Papiamento.
pattern Pap :: Language
pattern Pap = $(bakeLanguage Nothing "pap")

-- | Parya.
pattern Paq :: Language
pattern Paq = $(bakeLanguage Nothing "paq")

-- | Panamint.
pattern Par :: Language
pattern Par = $(bakeLanguage Nothing "par")

-- | Papasena.
pattern Pas :: Language
pattern Pas = $(bakeLanguage Nothing "pas")

-- | Palauan.
pattern Pau :: Language
pattern Pau = $(bakeLanguage Nothing "pau")

-- | Pakaásnovos.
pattern Pav :: Language
pattern Pav = $(bakeLanguage Nothing "pav")

-- | Pawnee.
pattern Paw :: Language
pattern Paw = $(bakeLanguage Nothing "paw")

-- | Pankararé.
pattern Pax :: Language
pattern Pax = $(bakeLanguage Nothing "pax")

-- | Pech.
pattern Pay :: Language
pattern Pay = $(bakeLanguage Nothing "pay")

-- | Pankararú.
pattern Paz :: Language
pattern Paz = $(bakeLanguage Nothing "paz")

-- | Páez.
pattern Pbb :: Language
pattern Pbb = $(bakeLanguage Nothing "pbb")

-- | Patamona.
pattern Pbc :: Language
pattern Pbc = $(bakeLanguage Nothing "pbc")

-- | Mezontla Popoloca.
pattern Pbe :: Language
pattern Pbe = $(bakeLanguage Nothing "pbe")

-- | Coyotepec Popoloca.
pattern Pbf :: Language
pattern Pbf = $(bakeLanguage Nothing "pbf")

-- | Paraujano.
pattern Pbg :: Language
pattern Pbg = $(bakeLanguage Nothing "pbg")

-- | E'ñapa Woromaipu.
pattern Pbh :: Language
pattern Pbh = $(bakeLanguage Nothing "pbh")

-- | Parkwa.
pattern Pbi :: Language
pattern Pbi = $(bakeLanguage Nothing "pbi")

-- | Mak (Nigeria).
pattern Pbl :: Language
pattern Pbl = $(bakeLanguage Nothing "pbl")

-- | Puebla Mazatec.
pattern Pbm :: Language
pattern Pbm = $(bakeLanguage Nothing "pbm")

-- | Kpasam.
pattern Pbn :: Language
pattern Pbn = $(bakeLanguage Nothing "pbn")

-- | Papel.
pattern Pbo :: Language
pattern Pbo = $(bakeLanguage Nothing "pbo")

-- | Badyara.
pattern Pbp :: Language
pattern Pbp = $(bakeLanguage Nothing "pbp")

-- | Pangwa.
pattern Pbr :: Language
pattern Pbr = $(bakeLanguage Nothing "pbr")

-- | Central Pame.
pattern Pbs :: Language
pattern Pbs = $(bakeLanguage Nothing "pbs")

-- | Southern Pashto.
pattern Pbt :: Language
pattern Pbt = $(bakeLanguage Nothing "pbt")

-- | Northern Pashto.
pattern Pbu :: Language
pattern Pbu = $(bakeLanguage Nothing "pbu")

-- | Pnar.
pattern Pbv :: Language
pattern Pbv = $(bakeLanguage Nothing "pbv")

-- | Pyu (Papua New Guinea).
pattern Pby :: Language
pattern Pby = $(bakeLanguage Nothing "pby")

-- | Santa Inés Ahuatempan Popoloca.
pattern Pca :: Language
pattern Pca = $(bakeLanguage Nothing "pca")

-- | Pear.
pattern Pcb :: Language
pattern Pcb = $(bakeLanguage Nothing "pcb")

-- | Bouyei.
pattern Pcc :: Language
pattern Pcc = $(bakeLanguage Nothing "pcc")

-- | Picard.
pattern Pcd :: Language
pattern Pcd = $(bakeLanguage Nothing "pcd")

-- | Ruching Palaung.
pattern Pce :: Language
pattern Pce = $(bakeLanguage Nothing "pce")

-- | Paliyan.
pattern Pcf :: Language
pattern Pcf = $(bakeLanguage Nothing "pcf")

-- | Paniya.
pattern Pcg :: Language
pattern Pcg = $(bakeLanguage Nothing "pcg")

-- | Pardhan.
pattern Pch :: Language
pattern Pch = $(bakeLanguage Nothing "pch")

-- | Duruwa.
pattern Pci :: Language
pattern Pci = $(bakeLanguage Nothing "pci")

-- | Parenga.
pattern Pcj :: Language
pattern Pcj = $(bakeLanguage Nothing "pcj")

-- | Paite Chin.
pattern Pck :: Language
pattern Pck = $(bakeLanguage Nothing "pck")

-- | Pardhi.
pattern Pcl :: Language
pattern Pcl = $(bakeLanguage Nothing "pcl")

-- | Nigerian Pidgin.
pattern Pcm :: Language
pattern Pcm = $(bakeLanguage Nothing "pcm")

-- | Piti.
pattern Pcn :: Language
pattern Pcn = $(bakeLanguage Nothing "pcn")

-- | Pacahuara.
pattern Pcp :: Language
pattern Pcp = $(bakeLanguage Nothing "pcp")

-- | Pyapun.
pattern Pcw :: Language
pattern Pcw = $(bakeLanguage Nothing "pcw")

-- | Anam.
pattern Pda :: Language
pattern Pda = $(bakeLanguage Nothing "pda")

-- | Pennsylvania German.
pattern Pdc :: Language
pattern Pdc = $(bakeLanguage Nothing "pdc")

-- | Pa Di.
pattern Pdi :: Language
pattern Pdi = $(bakeLanguage Nothing "pdi")

-- | Podena.
pattern Pdn :: Language
pattern Pdn = $(bakeLanguage Nothing "pdn")

-- | Padoe.
pattern Pdo :: Language
pattern Pdo = $(bakeLanguage Nothing "pdo")

-- | Plautdietsch.
pattern Pdt :: Language
pattern Pdt = $(bakeLanguage Nothing "pdt")

-- | Kayan.
pattern Pdu :: Language
pattern Pdu = $(bakeLanguage Nothing "pdu")

-- | Peranakan Indonesian.
pattern Pea :: Language
pattern Pea = $(bakeLanguage Nothing "pea")

-- | Eastern Pomo.
pattern Peb :: Language
pattern Peb = $(bakeLanguage Nothing "peb")

-- | Mala (Papua New Guinea).
pattern Ped :: Language
pattern Ped = $(bakeLanguage Nothing "ped")

-- | Taje.
pattern Pee :: Language
pattern Pee = $(bakeLanguage Nothing "pee")

-- | Northeastern Pomo.
pattern Pef :: Language
pattern Pef = $(bakeLanguage Nothing "pef")

-- | Pengo.
pattern Peg :: Language
pattern Peg = $(bakeLanguage Nothing "peg")

-- | Bonan.
pattern Peh :: Language
pattern Peh = $(bakeLanguage Nothing "peh")

-- | Chichimeca-Jonaz.
pattern Pei :: Language
pattern Pei = $(bakeLanguage Nothing "pei")

-- | Northern Pomo.
pattern Pej :: Language
pattern Pej = $(bakeLanguage Nothing "pej")

-- | Penchal.
pattern Pek :: Language
pattern Pek = $(bakeLanguage Nothing "pek")

-- | Pekal.
pattern Pel :: Language
pattern Pel = $(bakeLanguage Nothing "pel")

-- | Phende.
pattern Pem :: Language
pattern Pem = $(bakeLanguage Nothing "pem")

-- | Old Persian (ca. 600-400 B.C.).
pattern Peo :: Language
pattern Peo = $(bakeLanguage Nothing "peo")

-- | Kunja.
pattern Pep :: Language
pattern Pep = $(bakeLanguage Nothing "pep")

-- | Southern Pomo.
pattern Peq :: Language
pattern Peq = $(bakeLanguage Nothing "peq")

-- | Iranian Persian.
pattern Pes :: Language
pattern Pes = $(bakeLanguage Nothing "pes")

-- | Pémono.
pattern Pev :: Language
pattern Pev = $(bakeLanguage Nothing "pev")

-- | Petats.
pattern Pex :: Language
pattern Pex = $(bakeLanguage Nothing "pex")

-- | Petjo.
pattern Pey :: Language
pattern Pey = $(bakeLanguage Nothing "pey")

-- | Eastern Penan.
pattern Pez :: Language
pattern Pez = $(bakeLanguage Nothing "pez")

-- | Pááfang.
pattern Pfa :: Language
pattern Pfa = $(bakeLanguage Nothing "pfa")

-- | Pere.
pattern Pfe :: Language
pattern Pfe = $(bakeLanguage Nothing "pfe")

-- | Pfaelzisch.
pattern Pfl :: Language
pattern Pfl = $(bakeLanguage Nothing "pfl")

-- | Sudanese Creole Arabic.
pattern Pga :: Language
pattern Pga = $(bakeLanguage Nothing "pga")

-- | Gāndhārī.
pattern Pgd :: Language
pattern Pgd = $(bakeLanguage Nothing "pgd")

-- | Pangwali.
pattern Pgg :: Language
pattern Pgg = $(bakeLanguage Nothing "pgg")

-- | Pagi.
pattern Pgi :: Language
pattern Pgi = $(bakeLanguage Nothing "pgi")

-- | Rerep.
pattern Pgk :: Language
pattern Pgk = $(bakeLanguage Nothing "pgk")

-- | Primitive Irish.
pattern Pgl :: Language
pattern Pgl = $(bakeLanguage Nothing "pgl")

-- | Paelignian.
pattern Pgn :: Language
pattern Pgn = $(bakeLanguage Nothing "pgn")

-- | Pangseng.
pattern Pgs :: Language
pattern Pgs = $(bakeLanguage Nothing "pgs")

-- | Pagu.
pattern Pgu :: Language
pattern Pgu = $(bakeLanguage Nothing "pgu")

-- | Papua New Guinean Sign Language.
pattern Pgz :: Language
pattern Pgz = $(bakeLanguage Nothing "pgz")

-- | Pa-Hng.
pattern Pha :: Language
pattern Pha = $(bakeLanguage Nothing "pha")

-- | Phudagi.
pattern Phd :: Language
pattern Phd = $(bakeLanguage Nothing "phd")

-- | Phuong.
pattern Phg :: Language
pattern Phg = $(bakeLanguage Nothing "phg")

-- | Phukha.
pattern Phh :: Language
pattern Phh = $(bakeLanguage Nothing "phh")

-- | Pahari.
pattern Phj :: Language
pattern Phj = $(bakeLanguage Nothing "phj")

-- | Phake.
pattern Phk :: Language
pattern Phk = $(bakeLanguage Nothing "phk")

-- | Phalura.
pattern Phl :: Language
pattern Phl = $(bakeLanguage Nothing "phl")

-- | Phimbi.
pattern Phm :: Language
pattern Phm = $(bakeLanguage Nothing "phm")

-- | Phoenician.
pattern Phn :: Language
pattern Phn = $(bakeLanguage Nothing "phn")

-- | Phunoi.
pattern Pho :: Language
pattern Pho = $(bakeLanguage Nothing "pho")

-- | Phana'.
pattern Phq :: Language
pattern Phq = $(bakeLanguage Nothing "phq")

-- | Pahari-Potwari.
pattern Phr :: Language
pattern Phr = $(bakeLanguage Nothing "phr")

-- | Phu Thai.
pattern Pht :: Language
pattern Pht = $(bakeLanguage Nothing "pht")

-- | Phuan.
pattern Phu :: Language
pattern Phu = $(bakeLanguage Nothing "phu")

-- | Pahlavani.
pattern Phv :: Language
pattern Phv = $(bakeLanguage Nothing "phv")

-- | Phangduwali.
pattern Phw :: Language
pattern Phw = $(bakeLanguage Nothing "phw")

-- | Pima Bajo.
pattern Pia :: Language
pattern Pia = $(bakeLanguage Nothing "pia")

-- | Yine.
pattern Pib :: Language
pattern Pib = $(bakeLanguage Nothing "pib")

-- | Pinji.
pattern Pic :: Language
pattern Pic = $(bakeLanguage Nothing "pic")

-- | Piaroa.
pattern Pid :: Language
pattern Pid = $(bakeLanguage Nothing "pid")

-- | Piro.
pattern Pie :: Language
pattern Pie = $(bakeLanguage Nothing "pie")

-- | Pingelapese.
pattern Pif :: Language
pattern Pif = $(bakeLanguage Nothing "pif")

-- | Pisabo.
pattern Pig :: Language
pattern Pig = $(bakeLanguage Nothing "pig")

-- | Pitcairn-Norfolk.
pattern Pih :: Language
pattern Pih = $(bakeLanguage Nothing "pih")

-- | Pijao.
pattern Pij :: Language
pattern Pij = $(bakeLanguage Nothing "pij")

-- | Yom.
pattern Pil :: Language
pattern Pil = $(bakeLanguage Nothing "pil")

-- | Powhatan.
pattern Pim :: Language
pattern Pim = $(bakeLanguage Nothing "pim")

-- | Piame.
pattern Pin :: Language
pattern Pin = $(bakeLanguage Nothing "pin")

-- | Piapoco.
pattern Pio :: Language
pattern Pio = $(bakeLanguage Nothing "pio")

-- | Pero.
pattern Pip :: Language
pattern Pip = $(bakeLanguage Nothing "pip")

-- | Piratapuyo.
pattern Pir :: Language
pattern Pir = $(bakeLanguage Nothing "pir")

-- | Pijin.
pattern Pis :: Language
pattern Pis = $(bakeLanguage Nothing "pis")

-- | Pitta Pitta.
pattern Pit :: Language
pattern Pit = $(bakeLanguage Nothing "pit")

-- | Pintupi-Luritja.
pattern Piu :: Language
pattern Piu = $(bakeLanguage Nothing "piu")

-- | Pileni.
pattern Piv :: Language
pattern Piv = $(bakeLanguage Nothing "piv")

-- | Pimbwe.
pattern Piw :: Language
pattern Piw = $(bakeLanguage Nothing "piw")

-- | Piu.
pattern Pix :: Language
pattern Pix = $(bakeLanguage Nothing "pix")

-- | Piya-Kwonci.
pattern Piy :: Language
pattern Piy = $(bakeLanguage Nothing "piy")

-- | Pije.
pattern Piz :: Language
pattern Piz = $(bakeLanguage Nothing "piz")

-- | Pitjantjatjara.
pattern Pjt :: Language
pattern Pjt = $(bakeLanguage Nothing "pjt")

-- | Ardhamāgadhī Prākrit.
pattern Pka :: Language
pattern Pka = $(bakeLanguage Nothing "pka")

-- | Pokomo.
pattern Pkb :: Language
pattern Pkb = $(bakeLanguage Nothing "pkb")

-- | Paekche.
pattern Pkc :: Language
pattern Pkc = $(bakeLanguage Nothing "pkc")

-- | Pak-Tong.
pattern Pkg :: Language
pattern Pkg = $(bakeLanguage Nothing "pkg")

-- | Pankhu.
pattern Pkh :: Language
pattern Pkh = $(bakeLanguage Nothing "pkh")

-- | Pakanha.
pattern Pkn :: Language
pattern Pkn = $(bakeLanguage Nothing "pkn")

-- | Pökoot.
pattern Pko :: Language
pattern Pko = $(bakeLanguage Nothing "pko")

-- | Pukapuka.
pattern Pkp :: Language
pattern Pkp = $(bakeLanguage Nothing "pkp")

-- | Attapady Kurumba.
pattern Pkr :: Language
pattern Pkr = $(bakeLanguage Nothing "pkr")

-- | Pakistan Sign Language.
pattern Pks :: Language
pattern Pks = $(bakeLanguage Nothing "pks")

-- | Maleng.
pattern Pkt :: Language
pattern Pkt = $(bakeLanguage Nothing "pkt")

-- | Paku.
pattern Pku :: Language
pattern Pku = $(bakeLanguage Nothing "pku")

-- | Miani.
pattern Pla :: Language
pattern Pla = $(bakeLanguage Nothing "pla")

-- | Polonombauk.
pattern Plb :: Language
pattern Plb = $(bakeLanguage Nothing "plb")

-- | Central Palawano.
pattern Plc :: Language
pattern Plc = $(bakeLanguage Nothing "plc")

-- | Polari.
pattern Pld :: Language
pattern Pld = $(bakeLanguage Nothing "pld")

-- | Palu'e.
pattern Ple :: Language
pattern Ple = $(bakeLanguage Nothing "ple")

-- | Pilagá.
pattern Plg :: Language
pattern Plg = $(bakeLanguage Nothing "plg")

-- | Paulohi.
pattern Plh :: Language
pattern Plh = $(bakeLanguage Nothing "plh")

-- | Kohistani Shina.
pattern Plk :: Language
pattern Plk = $(bakeLanguage Nothing "plk")

-- | Shwe Palaung.
pattern Pll :: Language
pattern Pll = $(bakeLanguage Nothing "pll")

-- | Palenquero.
pattern Pln :: Language
pattern Pln = $(bakeLanguage Nothing "pln")

-- | Oluta Popoluca.
pattern Plo :: Language
pattern Plo = $(bakeLanguage Nothing "plo")

-- | Palaic.
pattern Plq :: Language
pattern Plq = $(bakeLanguage Nothing "plq")

-- | Palaka Senoufo.
pattern Plr :: Language
pattern Plr = $(bakeLanguage Nothing "plr")

-- | San Marcos Tlacoyalco Popoloca.
pattern Pls :: Language
pattern Pls = $(bakeLanguage Nothing "pls")

-- | Plateau Malagasy.
pattern Plt :: Language
pattern Plt = $(bakeLanguage Nothing "plt")

-- | Palikúr.
pattern Plu :: Language
pattern Plu = $(bakeLanguage Nothing "plu")

-- | Southwest Palawano.
pattern Plv :: Language
pattern Plv = $(bakeLanguage Nothing "plv")

-- | Brooke's Point Palawano.
pattern Plw :: Language
pattern Plw = $(bakeLanguage Nothing "plw")

-- | Bolyu.
pattern Ply :: Language
pattern Ply = $(bakeLanguage Nothing "ply")

-- | Paluan.
pattern Plz :: Language
pattern Plz = $(bakeLanguage Nothing "plz")

-- | Paama.
pattern Pma :: Language
pattern Pma = $(bakeLanguage Nothing "pma")

-- | Pambia.
pattern Pmb :: Language
pattern Pmb = $(bakeLanguage Nothing "pmb")

-- | Pallanganmiddang.
pattern Pmd :: Language
pattern Pmd = $(bakeLanguage Nothing "pmd")

-- | Pwaamei.
pattern Pme :: Language
pattern Pme = $(bakeLanguage Nothing "pme")

-- | Pamona.
pattern Pmf :: Language
pattern Pmf = $(bakeLanguage Nothing "pmf")

-- | Māhārāṣṭri Prākrit.
pattern Pmh :: Language
pattern Pmh = $(bakeLanguage Nothing "pmh")

-- | Northern Pumi.
pattern Pmi :: Language
pattern Pmi = $(bakeLanguage Nothing "pmi")

-- | Southern Pumi.
pattern Pmj :: Language
pattern Pmj = $(bakeLanguage Nothing "pmj")

-- | Lingua Franca.
pattern Pml :: Language
pattern Pml = $(bakeLanguage Nothing "pml")

-- | Pomo.
pattern Pmm :: Language
pattern Pmm = $(bakeLanguage Nothing "pmm")

-- | Pam.
pattern Pmn :: Language
pattern Pmn = $(bakeLanguage Nothing "pmn")

-- | Pom.
pattern Pmo :: Language
pattern Pmo = $(bakeLanguage Nothing "pmo")

-- | Northern Pame.
pattern Pmq :: Language
pattern Pmq = $(bakeLanguage Nothing "pmq")

-- | Paynamar.
pattern Pmr :: Language
pattern Pmr = $(bakeLanguage Nothing "pmr")

-- | Piemontese.
pattern Pms :: Language
pattern Pms = $(bakeLanguage Nothing "pms")

-- | Tuamotuan.
pattern Pmt :: Language
pattern Pmt = $(bakeLanguage Nothing "pmt")

-- | Plains Miwok.
pattern Pmw :: Language
pattern Pmw = $(bakeLanguage Nothing "pmw")

-- | Poumei Naga.
pattern Pmx :: Language
pattern Pmx = $(bakeLanguage Nothing "pmx")

-- | Papuan Malay.
pattern Pmy :: Language
pattern Pmy = $(bakeLanguage Nothing "pmy")

-- | Southern Pame.
pattern Pmz :: Language
pattern Pmz = $(bakeLanguage Nothing "pmz")

-- | Punan Bah-Biau.
pattern Pna :: Language
pattern Pna = $(bakeLanguage Nothing "pna")

-- | Western Panjabi.
pattern Pnb :: Language
pattern Pnb = $(bakeLanguage Nothing "pnb")

-- | Pannei.
pattern Pnc :: Language
pattern Pnc = $(bakeLanguage Nothing "pnc")

-- | Mpinda.
pattern Pnd :: Language
pattern Pnd = $(bakeLanguage Nothing "pnd")

-- | Western Penan.
pattern Pne :: Language
pattern Pne = $(bakeLanguage Nothing "pne")

-- | Pangu.
pattern Png :: Language
pattern Png = $(bakeLanguage Nothing "png")

-- | Penrhyn.
pattern Pnh :: Language
pattern Pnh = $(bakeLanguage Nothing "pnh")

-- | Aoheng.
pattern Pni :: Language
pattern Pni = $(bakeLanguage Nothing "pni")

-- | Pinjarup.
pattern Pnj :: Language
pattern Pnj = $(bakeLanguage Nothing "pnj")

-- | Paunaka.
pattern Pnk :: Language
pattern Pnk = $(bakeLanguage Nothing "pnk")

-- | Paleni.
pattern Pnl :: Language
pattern Pnl = $(bakeLanguage Nothing "pnl")

-- | Punan Batu 1.
pattern Pnm :: Language
pattern Pnm = $(bakeLanguage Nothing "pnm")

-- | Pinai-Hagahai.
pattern Pnn :: Language
pattern Pnn = $(bakeLanguage Nothing "pnn")

-- | Panobo.
pattern Pno :: Language
pattern Pno = $(bakeLanguage Nothing "pno")

-- | Pancana.
pattern Pnp :: Language
pattern Pnp = $(bakeLanguage Nothing "pnp")

-- | Pana (Burkina Faso).
pattern Pnq :: Language
pattern Pnq = $(bakeLanguage Nothing "pnq")

-- | Panim.
pattern Pnr :: Language
pattern Pnr = $(bakeLanguage Nothing "pnr")

-- | Ponosakan.
pattern Pns :: Language
pattern Pns = $(bakeLanguage Nothing "pns")

-- | Pontic.
pattern Pnt :: Language
pattern Pnt = $(bakeLanguage Nothing "pnt")

-- | Jiongnai Bunu.
pattern Pnu :: Language
pattern Pnu = $(bakeLanguage Nothing "pnu")

-- | Pinigura.
pattern Pnv :: Language
pattern Pnv = $(bakeLanguage Nothing "pnv")

-- | Banyjima.
pattern Pnw :: Language
pattern Pnw = $(bakeLanguage Nothing "pnw")

-- | Phong-Kniang.
pattern Pnx :: Language
pattern Pnx = $(bakeLanguage Nothing "pnx")

-- | Pinyin.
pattern Pny :: Language
pattern Pny = $(bakeLanguage Nothing "pny")

-- | Pana (Central African Republic).
pattern Pnz :: Language
pattern Pnz = $(bakeLanguage Nothing "pnz")

-- | Poqomam.
pattern Poc :: Language
pattern Poc = $(bakeLanguage Nothing "poc")

-- | San Juan Atzingo Popoloca.
pattern Poe :: Language
pattern Poe = $(bakeLanguage Nothing "poe")

-- | Poke.
pattern Pof :: Language
pattern Pof = $(bakeLanguage Nothing "pof")

-- | Potiguára.
pattern Pog :: Language
pattern Pog = $(bakeLanguage Nothing "pog")

-- | Poqomchi'.
pattern Poh :: Language
pattern Poh = $(bakeLanguage Nothing "poh")

-- | Highland Popoluca.
pattern Poi :: Language
pattern Poi = $(bakeLanguage Nothing "poi")

-- | Pokangá.
pattern Pok :: Language
pattern Pok = $(bakeLanguage Nothing "pok")

-- | Southeastern Pomo.
pattern Pom :: Language
pattern Pom = $(bakeLanguage Nothing "pom")

-- | Pohnpeian.
pattern Pon :: Language
pattern Pon = $(bakeLanguage Nothing "pon")

-- | Central Pomo.
pattern Poo :: Language
pattern Poo = $(bakeLanguage Nothing "poo")

-- | Pwapwâ.
pattern Pop :: Language
pattern Pop = $(bakeLanguage Nothing "pop")

-- | Texistepec Popoluca.
pattern Poq :: Language
pattern Poq = $(bakeLanguage Nothing "poq")

-- | Sayula Popoluca.
pattern Pos :: Language
pattern Pos = $(bakeLanguage Nothing "pos")

-- | Potawatomi.
pattern Pot :: Language
pattern Pot = $(bakeLanguage Nothing "pot")

-- | Upper Guinea Crioulo.
pattern Pov :: Language
pattern Pov = $(bakeLanguage Nothing "pov")

-- | San Felipe Otlaltepec Popoloca.
pattern Pow :: Language
pattern Pow = $(bakeLanguage Nothing "pow")

-- | Polabian.
pattern Pox :: Language
pattern Pox = $(bakeLanguage Nothing "pox")

-- | Pogolo.
pattern Poy :: Language
pattern Poy = $(bakeLanguage Nothing "poy")

-- | Papi.
pattern Ppe :: Language
pattern Ppe = $(bakeLanguage Nothing "ppe")

-- | Paipai.
pattern Ppi :: Language
pattern Ppi = $(bakeLanguage Nothing "ppi")

-- | Uma.
pattern Ppk :: Language
pattern Ppk = $(bakeLanguage Nothing "ppk")

-- | Pipil.
pattern Ppl :: Language
pattern Ppl = $(bakeLanguage Nothing "ppl")

-- | Papuma.
pattern Ppm :: Language
pattern Ppm = $(bakeLanguage Nothing "ppm")

-- | Papapana.
pattern Ppn :: Language
pattern Ppn = $(bakeLanguage Nothing "ppn")

-- | Folopa.
pattern Ppo :: Language
pattern Ppo = $(bakeLanguage Nothing "ppo")

-- | Pelende.
pattern Ppp :: Language
pattern Ppp = $(bakeLanguage Nothing "ppp")

-- | Pei.
pattern Ppq :: Language
pattern Ppq = $(bakeLanguage Nothing "ppq")

-- | San Luís Temalacayuca Popoloca.
pattern Pps :: Language
pattern Pps = $(bakeLanguage Nothing "pps")

-- | Pare.
pattern Ppt :: Language
pattern Ppt = $(bakeLanguage Nothing "ppt")

-- | Papora.
pattern Ppu :: Language
pattern Ppu = $(bakeLanguage Nothing "ppu")

-- | Pa'a.
pattern Pqa :: Language
pattern Pqa = $(bakeLanguage Nothing "pqa")

-- | Malecite-Passamaquoddy.
pattern Pqm :: Language
pattern Pqm = $(bakeLanguage Nothing "pqm")

-- | Parachi.
pattern Prc :: Language
pattern Prc = $(bakeLanguage Nothing "prc")

-- | Parsi-Dari.
pattern Prd :: Language
pattern Prd = $(bakeLanguage Nothing "prd")

-- | Principense.
pattern Pre :: Language
pattern Pre = $(bakeLanguage Nothing "pre")

-- | Paranan.
pattern Prf :: Language
pattern Prf = $(bakeLanguage Nothing "prf")

-- | Prussian.
pattern Prg :: Language
pattern Prg = $(bakeLanguage Nothing "prg")

-- | Porohanon.
pattern Prh :: Language
pattern Prh = $(bakeLanguage Nothing "prh")

-- | Paicî.
pattern Pri :: Language
pattern Pri = $(bakeLanguage Nothing "pri")

-- | Parauk.
pattern Prk :: Language
pattern Prk = $(bakeLanguage Nothing "prk")

-- | Peruvian Sign Language.
pattern Prl :: Language
pattern Prl = $(bakeLanguage Nothing "prl")

-- | Kibiri.
pattern Prm :: Language
pattern Prm = $(bakeLanguage Nothing "prm")

-- | Prasuni.
pattern Prn :: Language
pattern Prn = $(bakeLanguage Nothing "prn")

-- | Old Provençal (to 1500).
pattern Pro :: Language
pattern Pro = $(bakeLanguage Nothing "pro")

-- | Ashéninka Perené.
pattern Prq :: Language
pattern Prq = $(bakeLanguage Nothing "prq")

-- | Puri.
pattern Prr :: Language
pattern Prr = $(bakeLanguage Nothing "prr")

-- | Dari.
pattern Prs :: Language
pattern Prs = $(bakeLanguage Nothing "prs")

-- | Phai.
pattern Prt :: Language
pattern Prt = $(bakeLanguage Nothing "prt")

-- | Puragi.
pattern Pru :: Language
pattern Pru = $(bakeLanguage Nothing "pru")

-- | Parawen.
pattern Prw :: Language
pattern Prw = $(bakeLanguage Nothing "prw")

-- | Purik.
pattern Prx :: Language
pattern Prx = $(bakeLanguage Nothing "prx")

-- | Providencia Sign Language.
pattern Prz :: Language
pattern Prz = $(bakeLanguage Nothing "prz")

-- | Asue Awyu.
pattern Psa :: Language
pattern Psa = $(bakeLanguage Nothing "psa")

-- | Iranian Sign Language.
pattern Psc :: Language
pattern Psc = $(bakeLanguage Nothing "psc")

-- | Plains Indian Sign Language.
pattern Psd :: Language
pattern Psd = $(bakeLanguage Nothing "psd")

-- | Central Malay.
pattern Pse :: Language
pattern Pse = $(bakeLanguage Nothing "pse")

-- | Penang Sign Language.
pattern Psg :: Language
pattern Psg = $(bakeLanguage Nothing "psg")

-- | Southwest Pashai.
pattern Psh :: Language
pattern Psh = $(bakeLanguage Nothing "psh")

-- | Southeast Pashai.
pattern Psi :: Language
pattern Psi = $(bakeLanguage Nothing "psi")

-- | Puerto Rican Sign Language.
pattern Psl :: Language
pattern Psl = $(bakeLanguage Nothing "psl")

-- | Pauserna.
pattern Psm :: Language
pattern Psm = $(bakeLanguage Nothing "psm")

-- | Panasuan.
pattern Psn :: Language
pattern Psn = $(bakeLanguage Nothing "psn")

-- | Polish Sign Language.
pattern Pso :: Language
pattern Pso = $(bakeLanguage Nothing "pso")

-- | Philippine Sign Language.
pattern Psp :: Language
pattern Psp = $(bakeLanguage Nothing "psp")

-- | Pasi.
pattern Psq :: Language
pattern Psq = $(bakeLanguage Nothing "psq")

-- | Portuguese Sign Language.
pattern Psr :: Language
pattern Psr = $(bakeLanguage Nothing "psr")

-- | Kaulong.
pattern Pss :: Language
pattern Pss = $(bakeLanguage Nothing "pss")

-- | Central Pashto.
pattern Pst :: Language
pattern Pst = $(bakeLanguage Nothing "pst")

-- | Sauraseni Prākrit.
pattern Psu :: Language
pattern Psu = $(bakeLanguage Nothing "psu")

-- | Port Sandwich.
pattern Psw :: Language
pattern Psw = $(bakeLanguage Nothing "psw")

-- | Piscataway.
pattern Psy :: Language
pattern Psy = $(bakeLanguage Nothing "psy")

-- | Pai Tavytera.
pattern Pta :: Language
pattern Pta = $(bakeLanguage Nothing "pta")

-- | Pataxó Hã-Ha-Hãe.
pattern Pth :: Language
pattern Pth = $(bakeLanguage Nothing "pth")

-- | Pindiini.
pattern Pti :: Language
pattern Pti = $(bakeLanguage Nothing "pti")

-- | Patani.
pattern Ptn :: Language
pattern Ptn = $(bakeLanguage Nothing "ptn")

-- | Zo'é.
pattern Pto :: Language
pattern Pto = $(bakeLanguage Nothing "pto")

-- | Patep.
pattern Ptp :: Language
pattern Ptp = $(bakeLanguage Nothing "ptp")

-- | Pattapu.
pattern Ptq :: Language
pattern Ptq = $(bakeLanguage Nothing "ptq")

-- | Piamatsina.
pattern Ptr :: Language
pattern Ptr = $(bakeLanguage Nothing "ptr")

-- | Enrekang.
pattern Ptt :: Language
pattern Ptt = $(bakeLanguage Nothing "ptt")

-- | Bambam.
pattern Ptu :: Language
pattern Ptu = $(bakeLanguage Nothing "ptu")

-- | Port Vato.
pattern Ptv :: Language
pattern Ptv = $(bakeLanguage Nothing "ptv")

-- | Pentlatch.
pattern Ptw :: Language
pattern Ptw = $(bakeLanguage Nothing "ptw")

-- | Pathiya.
pattern Pty :: Language
pattern Pty = $(bakeLanguage Nothing "pty")

-- | Western Highland Purepecha.
pattern Pua :: Language
pattern Pua = $(bakeLanguage Nothing "pua")

-- | Purum.
pattern Pub :: Language
pattern Pub = $(bakeLanguage Nothing "pub")

-- | Punan Merap.
pattern Puc :: Language
pattern Puc = $(bakeLanguage Nothing "puc")

-- | Punan Aput.
pattern Pud :: Language
pattern Pud = $(bakeLanguage Nothing "pud")

-- | Puelche.
pattern Pue :: Language
pattern Pue = $(bakeLanguage Nothing "pue")

-- | Punan Merah.
pattern Puf :: Language
pattern Puf = $(bakeLanguage Nothing "puf")

-- | Phuie.
pattern Pug :: Language
pattern Pug = $(bakeLanguage Nothing "pug")

-- | Puinave.
pattern Pui :: Language
pattern Pui = $(bakeLanguage Nothing "pui")

-- | Punan Tubu.
pattern Puj :: Language
pattern Puj = $(bakeLanguage Nothing "puj")

-- | Puma.
pattern Pum :: Language
pattern Pum = $(bakeLanguage Nothing "pum")

-- | Puoc.
pattern Puo :: Language
pattern Puo = $(bakeLanguage Nothing "puo")

-- | Pulabu.
pattern Pup :: Language
pattern Pup = $(bakeLanguage Nothing "pup")

-- | Puquina.
pattern Puq :: Language
pattern Puq = $(bakeLanguage Nothing "puq")

-- | Puruborá.
pattern Pur :: Language
pattern Pur = $(bakeLanguage Nothing "pur")

-- | Putoh.
pattern Put :: Language
pattern Put = $(bakeLanguage Nothing "put")

-- | Punu.
pattern Puu :: Language
pattern Puu = $(bakeLanguage Nothing "puu")

-- | Puluwatese.
pattern Puw :: Language
pattern Puw = $(bakeLanguage Nothing "puw")

-- | Puare.
pattern Pux :: Language
pattern Pux = $(bakeLanguage Nothing "pux")

-- | Purisimeño.
pattern Puy :: Language
pattern Puy = $(bakeLanguage Nothing "puy")

-- | Pawaia.
pattern Pwa :: Language
pattern Pwa = $(bakeLanguage Nothing "pwa")

-- | Panawa.
pattern Pwb :: Language
pattern Pwb = $(bakeLanguage Nothing "pwb")

-- | Gapapaiwa.
pattern Pwg :: Language
pattern Pwg = $(bakeLanguage Nothing "pwg")

-- | Patwin.
pattern Pwi :: Language
pattern Pwi = $(bakeLanguage Nothing "pwi")

-- | Molbog.
pattern Pwm :: Language
pattern Pwm = $(bakeLanguage Nothing "pwm")

-- | Paiwan.
pattern Pwn :: Language
pattern Pwn = $(bakeLanguage Nothing "pwn")

-- | Pwo Western Karen.
pattern Pwo :: Language
pattern Pwo = $(bakeLanguage Nothing "pwo")

-- | Powari.
pattern Pwr :: Language
pattern Pwr = $(bakeLanguage Nothing "pwr")

-- | Pwo Northern Karen.
pattern Pww :: Language
pattern Pww = $(bakeLanguage Nothing "pww")

-- | Quetzaltepec Mixe.
pattern Pxm :: Language
pattern Pxm = $(bakeLanguage Nothing "pxm")

-- | Pye Krumen.
pattern Pye :: Language
pattern Pye = $(bakeLanguage Nothing "pye")

-- | Fyam.
pattern Pym :: Language
pattern Pym = $(bakeLanguage Nothing "pym")

-- | Poyanáwa.
pattern Pyn :: Language
pattern Pyn = $(bakeLanguage Nothing "pyn")

-- | Paraguayan Sign Language.
pattern Pys :: Language
pattern Pys = $(bakeLanguage Nothing "pys")

-- | Puyuma.
pattern Pyu :: Language
pattern Pyu = $(bakeLanguage Nothing "pyu")

-- | Pyu (Myanmar).
pattern Pyx :: Language
pattern Pyx = $(bakeLanguage Nothing "pyx")

-- | Pyen.
pattern Pyy :: Language
pattern Pyy = $(bakeLanguage Nothing "pyy")

-- | Pesse.
pattern Pze :: Language
pattern Pze = $(bakeLanguage Nothing "pze")

-- | Pazeh.
pattern Pzh :: Language
pattern Pzh = $(bakeLanguage Nothing "pzh")

-- | Jejara Naga.
pattern Pzn :: Language
pattern Pzn = $(bakeLanguage Nothing "pzn")

-- | Quapaw.
pattern Qua :: Language
pattern Qua = $(bakeLanguage Nothing "qua")

-- | Huallaga Huánuco Quechua.
pattern Qub :: Language
pattern Qub = $(bakeLanguage Nothing "qub")

-- | K\'iche\'.
pattern Quc :: Language
pattern Quc = $(bakeLanguage Nothing "quc")

-- | Calderón Highland Quichua.
pattern Qud :: Language
pattern Qud = $(bakeLanguage Nothing "qud")

-- | Lambayeque Quechua.
pattern Quf :: Language
pattern Quf = $(bakeLanguage Nothing "quf")

-- | Chimborazo Highland Quichua.
pattern Qug :: Language
pattern Qug = $(bakeLanguage Nothing "qug")

-- | South Bolivian Quechua.
pattern Quh :: Language
pattern Quh = $(bakeLanguage Nothing "quh")

-- | Quileute.
pattern Qui :: Language
pattern Qui = $(bakeLanguage Nothing "qui")

-- | Chachapoyas Quechua.
pattern Quk :: Language
pattern Quk = $(bakeLanguage Nothing "quk")

-- | North Bolivian Quechua.
pattern Qul :: Language
pattern Qul = $(bakeLanguage Nothing "qul")

-- | Sipacapense.
pattern Qum :: Language
pattern Qum = $(bakeLanguage Nothing "qum")

-- | Quinault.
pattern Qun :: Language
pattern Qun = $(bakeLanguage Nothing "qun")

-- | Southern Pastaza Quechua.
pattern Qup :: Language
pattern Qup = $(bakeLanguage Nothing "qup")

-- | Quinqui.
pattern Quq :: Language
pattern Quq = $(bakeLanguage Nothing "quq")

-- | Yanahuanca Pasco Quechua.
pattern Qur :: Language
pattern Qur = $(bakeLanguage Nothing "qur")

-- | Santiago del Estero Quichua.
pattern Qus :: Language
pattern Qus = $(bakeLanguage Nothing "qus")

-- | Sacapulteco.
pattern Quv :: Language
pattern Quv = $(bakeLanguage Nothing "quv")

-- | Tena Lowland Quichua.
pattern Quw :: Language
pattern Quw = $(bakeLanguage Nothing "quw")

-- | Yauyos Quechua.
pattern Qux :: Language
pattern Qux = $(bakeLanguage Nothing "qux")

-- | Ayacucho Quechua.
pattern Quy :: Language
pattern Quy = $(bakeLanguage Nothing "quy")

-- | Cusco Quechua.
pattern Quz :: Language
pattern Quz = $(bakeLanguage Nothing "quz")

-- | Ambo-Pasco Quechua.
pattern Qva :: Language
pattern Qva = $(bakeLanguage Nothing "qva")

-- | Cajamarca Quechua.
pattern Qvc :: Language
pattern Qvc = $(bakeLanguage Nothing "qvc")

-- | Eastern Apurímac Quechua.
pattern Qve :: Language
pattern Qve = $(bakeLanguage Nothing "qve")

-- | Huamalíes-Dos de Mayo Huánuco Quechua.
pattern Qvh :: Language
pattern Qvh = $(bakeLanguage Nothing "qvh")

-- | Imbabura Highland Quichua.
pattern Qvi :: Language
pattern Qvi = $(bakeLanguage Nothing "qvi")

-- | Loja Highland Quichua.
pattern Qvj :: Language
pattern Qvj = $(bakeLanguage Nothing "qvj")

-- | Cajatambo North Lima Quechua.
pattern Qvl :: Language
pattern Qvl = $(bakeLanguage Nothing "qvl")

-- | Margos-Yarowilca-Lauricocha Quechua.
pattern Qvm :: Language
pattern Qvm = $(bakeLanguage Nothing "qvm")

-- | North Junín Quechua.
pattern Qvn :: Language
pattern Qvn = $(bakeLanguage Nothing "qvn")

-- | Napo Lowland Quechua.
pattern Qvo :: Language
pattern Qvo = $(bakeLanguage Nothing "qvo")

-- | Pacaraos Quechua.
pattern Qvp :: Language
pattern Qvp = $(bakeLanguage Nothing "qvp")

-- | San Martín Quechua.
pattern Qvs :: Language
pattern Qvs = $(bakeLanguage Nothing "qvs")

-- | Huaylla Wanca Quechua.
pattern Qvw :: Language
pattern Qvw = $(bakeLanguage Nothing "qvw")

-- | Queyu.
pattern Qvy :: Language
pattern Qvy = $(bakeLanguage Nothing "qvy")

-- | Northern Pastaza Quichua.
pattern Qvz :: Language
pattern Qvz = $(bakeLanguage Nothing "qvz")

-- | Corongo Ancash Quechua.
pattern Qwa :: Language
pattern Qwa = $(bakeLanguage Nothing "qwa")

-- | Classical Quechua.
pattern Qwc :: Language
pattern Qwc = $(bakeLanguage Nothing "qwc")

-- | Huaylas Ancash Quechua.
pattern Qwh :: Language
pattern Qwh = $(bakeLanguage Nothing "qwh")

-- | Kuman (Russia).
pattern Qwm :: Language
pattern Qwm = $(bakeLanguage Nothing "qwm")

-- | Sihuas Ancash Quechua.
pattern Qws :: Language
pattern Qws = $(bakeLanguage Nothing "qws")

-- | Kwalhioqua-Tlatskanai.
pattern Qwt :: Language
pattern Qwt = $(bakeLanguage Nothing "qwt")

-- | Chiquián Ancash Quechua.
pattern Qxa :: Language
pattern Qxa = $(bakeLanguage Nothing "qxa")

-- | Chincha Quechua.
pattern Qxc :: Language
pattern Qxc = $(bakeLanguage Nothing "qxc")

-- | Panao Huánuco Quechua.
pattern Qxh :: Language
pattern Qxh = $(bakeLanguage Nothing "qxh")

-- | Salasaca Highland Quichua.
pattern Qxl :: Language
pattern Qxl = $(bakeLanguage Nothing "qxl")

-- | Northern Conchucos Ancash Quechua.
pattern Qxn :: Language
pattern Qxn = $(bakeLanguage Nothing "qxn")

-- | Southern Conchucos Ancash Quechua.
pattern Qxo :: Language
pattern Qxo = $(bakeLanguage Nothing "qxo")

-- | Puno Quechua.
pattern Qxp :: Language
pattern Qxp = $(bakeLanguage Nothing "qxp")

-- | Qashqa'i.
pattern Qxq :: Language
pattern Qxq = $(bakeLanguage Nothing "qxq")

-- | Cañar Highland Quichua.
pattern Qxr :: Language
pattern Qxr = $(bakeLanguage Nothing "qxr")

-- | Southern Qiang.
pattern Qxs :: Language
pattern Qxs = $(bakeLanguage Nothing "qxs")

-- | Santa Ana de Tusi Pasco Quechua.
pattern Qxt :: Language
pattern Qxt = $(bakeLanguage Nothing "qxt")

-- | Arequipa-La Unión Quechua.
pattern Qxu :: Language
pattern Qxu = $(bakeLanguage Nothing "qxu")

-- | Jauja Wanca Quechua.
pattern Qxw :: Language
pattern Qxw = $(bakeLanguage Nothing "qxw")

-- | Quenya.
pattern Qya :: Language
pattern Qya = $(bakeLanguage Nothing "qya")

-- | Quiripi.
pattern Qyp :: Language
pattern Qyp = $(bakeLanguage Nothing "qyp")

-- | Dungmali.
pattern Raa :: Language
pattern Raa = $(bakeLanguage Nothing "raa")

-- | Camling.
pattern Rab :: Language
pattern Rab = $(bakeLanguage Nothing "rab")

-- | Rasawa.
pattern Rac :: Language
pattern Rac = $(bakeLanguage Nothing "rac")

-- | Rade.
pattern Rad :: Language
pattern Rad = $(bakeLanguage Nothing "rad")

-- | Western Meohang.
pattern Raf :: Language
pattern Raf = $(bakeLanguage Nothing "raf")

-- | Logooli.
pattern Rag :: Language
pattern Rag = $(bakeLanguage Nothing "rag")

-- | Rabha.
pattern Rah :: Language
pattern Rah = $(bakeLanguage Nothing "rah")

-- | Ramoaaina.
pattern Rai :: Language
pattern Rai = $(bakeLanguage Nothing "rai")

-- | Rajasthani.
pattern Raj :: Language
pattern Raj = $(bakeLanguage Nothing "raj")

-- | Tulu-Bohuai.
pattern Rak :: Language
pattern Rak = $(bakeLanguage Nothing "rak")

-- | Ralte.
pattern Ral :: Language
pattern Ral = $(bakeLanguage Nothing "ral")

-- | Canela.
pattern Ram :: Language
pattern Ram = $(bakeLanguage Nothing "ram")

-- | Riantana.
pattern Ran :: Language
pattern Ran = $(bakeLanguage Nothing "ran")

-- | Rao.
pattern Rao :: Language
pattern Rao = $(bakeLanguage Nothing "rao")

-- | Rapanui.
pattern Rap :: Language
pattern Rap = $(bakeLanguage Nothing "rap")

-- | Saam.
pattern Raq :: Language
pattern Raq = $(bakeLanguage Nothing "raq")

-- | Rarotongan.
pattern Rar :: Language
pattern Rar = $(bakeLanguage Nothing "rar")

-- | Tegali.
pattern Ras :: Language
pattern Ras = $(bakeLanguage Nothing "ras")

-- | Razajerdi.
pattern Rat :: Language
pattern Rat = $(bakeLanguage Nothing "rat")

-- | Raute.
pattern Rau :: Language
pattern Rau = $(bakeLanguage Nothing "rau")

-- | Sampang.
pattern Rav :: Language
pattern Rav = $(bakeLanguage Nothing "rav")

-- | Rawang.
pattern Raw :: Language
pattern Raw = $(bakeLanguage Nothing "raw")

-- | Rang.
pattern Rax :: Language
pattern Rax = $(bakeLanguage Nothing "rax")

-- | Rapa.
pattern Ray :: Language
pattern Ray = $(bakeLanguage Nothing "ray")

-- | Rahambuu.
pattern Raz :: Language
pattern Raz = $(bakeLanguage Nothing "raz")

-- | Rumai Palaung.
pattern Rbb :: Language
pattern Rbb = $(bakeLanguage Nothing "rbb")

-- | Northern Bontok.
pattern Rbk :: Language
pattern Rbk = $(bakeLanguage Nothing "rbk")

-- | Miraya Bikol.
pattern Rbl :: Language
pattern Rbl = $(bakeLanguage Nothing "rbl")

-- | Barababaraba.
pattern Rbp :: Language
pattern Rbp = $(bakeLanguage Nothing "rbp")

-- | Réunion Creole French.
pattern Rcf :: Language
pattern Rcf = $(bakeLanguage Nothing "rcf")

-- | Rudbari.
pattern Rdb :: Language
pattern Rdb = $(bakeLanguage Nothing "rdb")

-- | Rerau.
pattern Rea :: Language
pattern Rea = $(bakeLanguage Nothing "rea")

-- | Rembong.
pattern Reb :: Language
pattern Reb = $(bakeLanguage Nothing "reb")

-- | Rejang Kayan.
pattern Ree :: Language
pattern Ree = $(bakeLanguage Nothing "ree")

-- | Kara (Tanzania).
pattern Reg :: Language
pattern Reg = $(bakeLanguage Nothing "reg")

-- | Reli.
pattern Rei :: Language
pattern Rei = $(bakeLanguage Nothing "rei")

-- | Rejang.
pattern Rej :: Language
pattern Rej = $(bakeLanguage Nothing "rej")

-- | Rendille.
pattern Rel :: Language
pattern Rel = $(bakeLanguage Nothing "rel")

-- | Remo.
pattern Rem :: Language
pattern Rem = $(bakeLanguage Nothing "rem")

-- | Rengao.
pattern Ren :: Language
pattern Ren = $(bakeLanguage Nothing "ren")

-- | Rer Bare.
pattern Rer :: Language
pattern Rer = $(bakeLanguage Nothing "rer")

-- | Reshe.
pattern Res :: Language
pattern Res = $(bakeLanguage Nothing "res")

-- | Retta.
pattern Ret :: Language
pattern Ret = $(bakeLanguage Nothing "ret")

-- | Reyesano.
pattern Rey :: Language
pattern Rey = $(bakeLanguage Nothing "rey")

-- | Roria.
pattern Rga :: Language
pattern Rga = $(bakeLanguage Nothing "rga")

-- | Romano-Greek.
pattern Rge :: Language
pattern Rge = $(bakeLanguage Nothing "rge")

-- | Rangkas.
pattern Rgk :: Language
pattern Rgk = $(bakeLanguage Nothing "rgk")

-- | Romagnol.
pattern Rgn :: Language
pattern Rgn = $(bakeLanguage Nothing "rgn")

-- | Resígaro.
pattern Rgr :: Language
pattern Rgr = $(bakeLanguage Nothing "rgr")

-- | Southern Roglai.
pattern Rgs :: Language
pattern Rgs = $(bakeLanguage Nothing "rgs")

-- | Ringgou.
pattern Rgu :: Language
pattern Rgu = $(bakeLanguage Nothing "rgu")

-- | Rohingya.
pattern Rhg :: Language
pattern Rhg = $(bakeLanguage Nothing "rhg")

-- | Yahang.
pattern Rhp :: Language
pattern Rhp = $(bakeLanguage Nothing "rhp")

-- | Riang (India).
pattern Ria :: Language
pattern Ria = $(bakeLanguage Nothing "ria")

-- | Bribri Sign Language.
pattern Rib :: Language
pattern Rib = $(bakeLanguage Nothing "rib")

-- | Tarifit.
pattern Rif :: Language
pattern Rif = $(bakeLanguage Nothing "rif")

-- | Riang Lang.
pattern Ril :: Language
pattern Ril = $(bakeLanguage Nothing "ril")

-- | Nyaturu.
pattern Rim :: Language
pattern Rim = $(bakeLanguage Nothing "rim")

-- | Nungu.
pattern Rin :: Language
pattern Rin = $(bakeLanguage Nothing "rin")

-- | Ribun.
pattern Rir :: Language
pattern Rir = $(bakeLanguage Nothing "rir")

-- | Ritharrngu.
pattern Rit :: Language
pattern Rit = $(bakeLanguage Nothing "rit")

-- | Riung.
pattern Riu :: Language
pattern Riu = $(bakeLanguage Nothing "riu")

-- | Rajong.
pattern Rjg :: Language
pattern Rjg = $(bakeLanguage Nothing "rjg")

-- | Raji.
pattern Rji :: Language
pattern Rji = $(bakeLanguage Nothing "rji")

-- | Rajbanshi.
pattern Rjs :: Language
pattern Rjs = $(bakeLanguage Nothing "rjs")

-- | Kraol.
pattern Rka :: Language
pattern Rka = $(bakeLanguage Nothing "rka")

-- | Rikbaktsa.
pattern Rkb :: Language
pattern Rkb = $(bakeLanguage Nothing "rkb")

-- | Rakahanga-Manihiki.
pattern Rkh :: Language
pattern Rkh = $(bakeLanguage Nothing "rkh")

-- | Rakhine.
pattern Rki :: Language
pattern Rki = $(bakeLanguage Nothing "rki")

-- | Marka.
pattern Rkm :: Language
pattern Rkm = $(bakeLanguage Nothing "rkm")

-- | Rangpuri.
pattern Rkt :: Language
pattern Rkt = $(bakeLanguage Nothing "rkt")

-- | Arakwal.
pattern Rkw :: Language
pattern Rkw = $(bakeLanguage Nothing "rkw")

-- | Rama.
pattern Rma :: Language
pattern Rma = $(bakeLanguage Nothing "rma")

-- | Rembarrnga.
pattern Rmb :: Language
pattern Rmb = $(bakeLanguage Nothing "rmb")

-- | Carpathian Romani.
pattern Rmc :: Language
pattern Rmc = $(bakeLanguage Nothing "rmc")

-- | Traveller Danish.
pattern Rmd :: Language
pattern Rmd = $(bakeLanguage Nothing "rmd")

-- | Angloromani.
pattern Rme :: Language
pattern Rme = $(bakeLanguage Nothing "rme")

-- | Kalo Finnish Romani.
pattern Rmf :: Language
pattern Rmf = $(bakeLanguage Nothing "rmf")

-- | Traveller Norwegian.
pattern Rmg :: Language
pattern Rmg = $(bakeLanguage Nothing "rmg")

-- | Murkim.
pattern Rmh :: Language
pattern Rmh = $(bakeLanguage Nothing "rmh")

-- | Lomavren.
pattern Rmi :: Language
pattern Rmi = $(bakeLanguage Nothing "rmi")

-- | Romkun.
pattern Rmk :: Language
pattern Rmk = $(bakeLanguage Nothing "rmk")

-- | Baltic Romani.
pattern Rml :: Language
pattern Rml = $(bakeLanguage Nothing "rml")

-- | Roma.
pattern Rmm :: Language
pattern Rmm = $(bakeLanguage Nothing "rmm")

-- | Balkan Romani.
pattern Rmn :: Language
pattern Rmn = $(bakeLanguage Nothing "rmn")

-- | Sinte Romani.
pattern Rmo :: Language
pattern Rmo = $(bakeLanguage Nothing "rmo")

-- | Rempi.
pattern Rmp :: Language
pattern Rmp = $(bakeLanguage Nothing "rmp")

-- | Caló.
pattern Rmq :: Language
pattern Rmq = $(bakeLanguage Nothing "rmq")

-- | Romanian Sign Language.
pattern Rms :: Language
pattern Rms = $(bakeLanguage Nothing "rms")

-- | Domari.
pattern Rmt :: Language
pattern Rmt = $(bakeLanguage Nothing "rmt")

-- | Tavringer Romani.
pattern Rmu :: Language
pattern Rmu = $(bakeLanguage Nothing "rmu")

-- | Romanova.
pattern Rmv :: Language
pattern Rmv = $(bakeLanguage Nothing "rmv")

-- | Welsh Romani.
pattern Rmw :: Language
pattern Rmw = $(bakeLanguage Nothing "rmw")

-- | Romam.
pattern Rmx :: Language
pattern Rmx = $(bakeLanguage Nothing "rmx")

-- | Vlax Romani.
pattern Rmy :: Language
pattern Rmy = $(bakeLanguage Nothing "rmy")

-- | Marma.
pattern Rmz :: Language
pattern Rmz = $(bakeLanguage Nothing "rmz")

-- | Brunca Sign Language.
pattern Rnb :: Language
pattern Rnb = $(bakeLanguage Nothing "rnb")

-- | Ruund.
pattern Rnd :: Language
pattern Rnd = $(bakeLanguage Nothing "rnd")

-- | Ronga.
pattern Rng :: Language
pattern Rng = $(bakeLanguage Nothing "rng")

-- | Ranglong.
pattern Rnl :: Language
pattern Rnl = $(bakeLanguage Nothing "rnl")

-- | Roon.
pattern Rnn :: Language
pattern Rnn = $(bakeLanguage Nothing "rnn")

-- | Rongpo.
pattern Rnp :: Language
pattern Rnp = $(bakeLanguage Nothing "rnp")

-- | Nari Nari.
pattern Rnr :: Language
pattern Rnr = $(bakeLanguage Nothing "rnr")

-- | Rungwa.
pattern Rnw :: Language
pattern Rnw = $(bakeLanguage Nothing "rnw")

-- | Tae'.
pattern Rob :: Language
pattern Rob = $(bakeLanguage Nothing "rob")

-- | Cacgia Roglai.
pattern Roc :: Language
pattern Roc = $(bakeLanguage Nothing "roc")

-- | Rogo.
pattern Rod :: Language
pattern Rod = $(bakeLanguage Nothing "rod")

-- | Ronji.
pattern Roe :: Language
pattern Roe = $(bakeLanguage Nothing "roe")

-- | Rombo.
pattern Rof :: Language
pattern Rof = $(bakeLanguage Nothing "rof")

-- | Northern Roglai.
pattern Rog :: Language
pattern Rog = $(bakeLanguage Nothing "rog")

-- | Romblomanon.
pattern Rol :: Language
pattern Rol = $(bakeLanguage Nothing "rol")

-- | Romany.
pattern Rom :: Language
pattern Rom = $(bakeLanguage Nothing "rom")

-- | Rotokas.
pattern Roo :: Language
pattern Roo = $(bakeLanguage Nothing "roo")

-- | Kriol.
pattern Rop :: Language
pattern Rop = $(bakeLanguage Nothing "rop")

-- | Rongga.
pattern Ror :: Language
pattern Ror = $(bakeLanguage Nothing "ror")

-- | Runga.
pattern Rou :: Language
pattern Rou = $(bakeLanguage Nothing "rou")

-- | Dela-Oenale.
pattern Row :: Language
pattern Row = $(bakeLanguage Nothing "row")

-- | Repanbitip.
pattern Rpn :: Language
pattern Rpn = $(bakeLanguage Nothing "rpn")

-- | Rapting.
pattern Rpt :: Language
pattern Rpt = $(bakeLanguage Nothing "rpt")

-- | Ririo.
pattern Rri :: Language
pattern Rri = $(bakeLanguage Nothing "rri")

-- | Moriori.
pattern Rrm :: Language
pattern Rrm = $(bakeLanguage Nothing "rrm")

-- | Waima.
pattern Rro :: Language
pattern Rro = $(bakeLanguage Nothing "rro")

-- | Arritinngithigh.
pattern Rrt :: Language
pattern Rrt = $(bakeLanguage Nothing "rrt")

-- | Romano-Serbian.
pattern Rsb :: Language
pattern Rsb = $(bakeLanguage Nothing "rsb")

-- | Ruthenian.
pattern Rsk :: Language
pattern Rsk = $(bakeLanguage Nothing "rsk")

-- | Russian Sign Language.
pattern Rsl :: Language
pattern Rsl = $(bakeLanguage Nothing "rsl")

-- | Miriwoong Sign Language.
pattern Rsm :: Language
pattern Rsm = $(bakeLanguage Nothing "rsm")

-- | Rwandan Sign Language.
pattern Rsn :: Language
pattern Rsn = $(bakeLanguage Nothing "rsn")

-- | Rishiwa.
pattern Rsw :: Language
pattern Rsw = $(bakeLanguage Nothing "rsw")

-- | Rungtu Chin.
pattern Rtc :: Language
pattern Rtc = $(bakeLanguage Nothing "rtc")

-- | Ratahan.
pattern Rth :: Language
pattern Rth = $(bakeLanguage Nothing "rth")

-- | Rotuman.
pattern Rtm :: Language
pattern Rtm = $(bakeLanguage Nothing "rtm")

-- | Yurats.
pattern Rts :: Language
pattern Rts = $(bakeLanguage Nothing "rts")

-- | Rathawi.
pattern Rtw :: Language
pattern Rtw = $(bakeLanguage Nothing "rtw")

-- | Gungu.
pattern Rub :: Language
pattern Rub = $(bakeLanguage Nothing "rub")

-- | Ruuli.
pattern Ruc :: Language
pattern Ruc = $(bakeLanguage Nothing "ruc")

-- | Rusyn.
pattern Rue :: Language
pattern Rue = $(bakeLanguage Nothing "rue")

-- | Luguru.
pattern Ruf :: Language
pattern Ruf = $(bakeLanguage Nothing "ruf")

-- | Roviana.
pattern Rug :: Language
pattern Rug = $(bakeLanguage Nothing "rug")

-- | Ruga.
pattern Ruh :: Language
pattern Ruh = $(bakeLanguage Nothing "ruh")

-- | Rufiji.
pattern Rui :: Language
pattern Rui = $(bakeLanguage Nothing "rui")

-- | Che.
pattern Ruk :: Language
pattern Ruk = $(bakeLanguage Nothing "ruk")

-- | Istro Romanian.
pattern Ruo :: Language
pattern Ruo = $(bakeLanguage Nothing "ruo")

-- | Macedo-Romanian.
pattern Rup :: Language
pattern Rup = $(bakeLanguage Nothing "rup")

-- | Megleno Romanian.
pattern Ruq :: Language
pattern Ruq = $(bakeLanguage Nothing "ruq")

-- | Rutul.
pattern Rut :: Language
pattern Rut = $(bakeLanguage Nothing "rut")

-- | Lanas Lobu.
pattern Ruu :: Language
pattern Ruu = $(bakeLanguage Nothing "ruu")

-- | Mala (Nigeria).
pattern Ruy :: Language
pattern Ruy = $(bakeLanguage Nothing "ruy")

-- | Ruma.
pattern Ruz :: Language
pattern Ruz = $(bakeLanguage Nothing "ruz")

-- | Rawo.
pattern Rwa :: Language
pattern Rwa = $(bakeLanguage Nothing "rwa")

-- | Rwa.
pattern Rwk :: Language
pattern Rwk = $(bakeLanguage Nothing "rwk")

-- | Ruwila.
pattern Rwl :: Language
pattern Rwl = $(bakeLanguage Nothing "rwl")

-- | Amba (Uganda).
pattern Rwm :: Language
pattern Rwm = $(bakeLanguage Nothing "rwm")

-- | Rawa.
pattern Rwo :: Language
pattern Rwo = $(bakeLanguage Nothing "rwo")

-- | Marwari (India).
pattern Rwr :: Language
pattern Rwr = $(bakeLanguage Nothing "rwr")

-- | Ngardi.
pattern Rxd :: Language
pattern Rxd = $(bakeLanguage Nothing "rxd")

-- | Karuwali.
pattern Rxw :: Language
pattern Rxw = $(bakeLanguage Nothing "rxw")

-- | Northern Amami-Oshima.
pattern Ryn :: Language
pattern Ryn = $(bakeLanguage Nothing "ryn")

-- | Yaeyama.
pattern Rys :: Language
pattern Rys = $(bakeLanguage Nothing "rys")

-- | Central Okinawan.
pattern Ryu :: Language
pattern Ryu = $(bakeLanguage Nothing "ryu")

-- | Rāziḥī.
pattern Rzh :: Language
pattern Rzh = $(bakeLanguage Nothing "rzh")

-- | Saba.
pattern Saa :: Language
pattern Saa = $(bakeLanguage Nothing "saa")

-- | Buglere.
pattern Sab :: Language
pattern Sab = $(bakeLanguage Nothing "sab")

-- | Meskwaki.
pattern Sac :: Language
pattern Sac = $(bakeLanguage Nothing "sac")

-- | Sandawe.
pattern Sad :: Language
pattern Sad = $(bakeLanguage Nothing "sad")

-- | Sabanê.
pattern Sae :: Language
pattern Sae = $(bakeLanguage Nothing "sae")

-- | Safaliba.
pattern Saf :: Language
pattern Saf = $(bakeLanguage Nothing "saf")

-- | Yakut.
pattern Sah :: Language
pattern Sah = $(bakeLanguage Nothing "sah")

-- | Sahu.
pattern Saj :: Language
pattern Saj = $(bakeLanguage Nothing "saj")

-- | Sake.
pattern Sak :: Language
pattern Sak = $(bakeLanguage Nothing "sak")

-- | Samaritan Aramaic.
pattern Sam :: Language
pattern Sam = $(bakeLanguage Nothing "sam")

-- | Sause.
pattern Sao :: Language
pattern Sao = $(bakeLanguage Nothing "sao")

-- | Samburu.
pattern Saq :: Language
pattern Saq = $(bakeLanguage Nothing "saq")

-- | Saraveca.
pattern Sar :: Language
pattern Sar = $(bakeLanguage Nothing "sar")

-- | Sasak.
pattern Sas :: Language
pattern Sas = $(bakeLanguage Nothing "sas")

-- | Santali.
pattern Sat :: Language
pattern Sat = $(bakeLanguage Nothing "sat")

-- | Saleman.
pattern Sau :: Language
pattern Sau = $(bakeLanguage Nothing "sau")

-- | Saafi-Saafi.
pattern Sav :: Language
pattern Sav = $(bakeLanguage Nothing "sav")

-- | Sawi.
pattern Saw :: Language
pattern Saw = $(bakeLanguage Nothing "saw")

-- | Sa.
pattern Sax :: Language
pattern Sax = $(bakeLanguage Nothing "sax")

-- | Saya.
pattern Say :: Language
pattern Say = $(bakeLanguage Nothing "say")

-- | Saurashtra.
pattern Saz :: Language
pattern Saz = $(bakeLanguage Nothing "saz")

-- | Ngambay.
pattern Sba :: Language
pattern Sba = $(bakeLanguage Nothing "sba")

-- | Simbo.
pattern Sbb :: Language
pattern Sbb = $(bakeLanguage Nothing "sbb")

-- | Kele (Papua New Guinea).
pattern Sbc :: Language
pattern Sbc = $(bakeLanguage Nothing "sbc")

-- | Southern Samo.
pattern Sbd :: Language
pattern Sbd = $(bakeLanguage Nothing "sbd")

-- | Saliba.
pattern Sbe :: Language
pattern Sbe = $(bakeLanguage Nothing "sbe")

-- | Chabu.
pattern Sbf :: Language
pattern Sbf = $(bakeLanguage Nothing "sbf")

-- | Seget.
pattern Sbg :: Language
pattern Sbg = $(bakeLanguage Nothing "sbg")

-- | Sori-Harengan.
pattern Sbh :: Language
pattern Sbh = $(bakeLanguage Nothing "sbh")

-- | Seti.
pattern Sbi :: Language
pattern Sbi = $(bakeLanguage Nothing "sbi")

-- | Surbakhal.
pattern Sbj :: Language
pattern Sbj = $(bakeLanguage Nothing "sbj")

-- | Safwa.
pattern Sbk :: Language
pattern Sbk = $(bakeLanguage Nothing "sbk")

-- | Botolan Sambal.
pattern Sbl :: Language
pattern Sbl = $(bakeLanguage Nothing "sbl")

-- | Sagala.
pattern Sbm :: Language
pattern Sbm = $(bakeLanguage Nothing "sbm")

-- | Sindhi Bhil.
pattern Sbn :: Language
pattern Sbn = $(bakeLanguage Nothing "sbn")

-- | Sabüm.
pattern Sbo :: Language
pattern Sbo = $(bakeLanguage Nothing "sbo")

-- | Sangu (Tanzania).
pattern Sbp :: Language
pattern Sbp = $(bakeLanguage Nothing "sbp")

-- | Sileibi.
pattern Sbq :: Language
pattern Sbq = $(bakeLanguage Nothing "sbq")

-- | Sembakung Murut.
pattern Sbr :: Language
pattern Sbr = $(bakeLanguage Nothing "sbr")

-- | Subiya.
pattern Sbs :: Language
pattern Sbs = $(bakeLanguage Nothing "sbs")

-- | Kimki.
pattern Sbt :: Language
pattern Sbt = $(bakeLanguage Nothing "sbt")

-- | Stod Bhoti.
pattern Sbu :: Language
pattern Sbu = $(bakeLanguage Nothing "sbu")

-- | Sabine.
pattern Sbv :: Language
pattern Sbv = $(bakeLanguage Nothing "sbv")

-- | Simba.
pattern Sbw :: Language
pattern Sbw = $(bakeLanguage Nothing "sbw")

-- | Seberuang.
pattern Sbx :: Language
pattern Sbx = $(bakeLanguage Nothing "sbx")

-- | Soli.
pattern Sby :: Language
pattern Sby = $(bakeLanguage Nothing "sby")

-- | Sara Kaba.
pattern Sbz :: Language
pattern Sbz = $(bakeLanguage Nothing "sbz")

-- | Chut.
pattern Scb :: Language
pattern Scb = $(bakeLanguage Nothing "scb")

-- | Dongxiang.
pattern Sce :: Language
pattern Sce = $(bakeLanguage Nothing "sce")

-- | San Miguel Creole French.
pattern Scf :: Language
pattern Scf = $(bakeLanguage Nothing "scf")

-- | Sanggau.
pattern Scg :: Language
pattern Scg = $(bakeLanguage Nothing "scg")

-- | Sakachep.
pattern Sch :: Language
pattern Sch = $(bakeLanguage Nothing "sch")

-- | Sri Lankan Creole Malay.
pattern Sci :: Language
pattern Sci = $(bakeLanguage Nothing "sci")

-- | Sadri.
pattern Sck :: Language
pattern Sck = $(bakeLanguage Nothing "sck")

-- | Shina.
pattern Scl :: Language
pattern Scl = $(bakeLanguage Nothing "scl")

-- | Sicilian.
pattern Scn :: Language
pattern Scn = $(bakeLanguage Nothing "scn")

-- | Scots.
pattern Sco :: Language
pattern Sco = $(bakeLanguage Nothing "sco")

-- | Hyolmo.
pattern Scp :: Language
pattern Scp = $(bakeLanguage Nothing "scp")

-- | Sa'och.
pattern Scq :: Language
pattern Scq = $(bakeLanguage Nothing "scq")

-- | North Slavey.
pattern Scs :: Language
pattern Scs = $(bakeLanguage Nothing "scs")

-- | Southern Katang.
pattern Sct :: Language
pattern Sct = $(bakeLanguage Nothing "sct")

-- | Shumcho.
pattern Scu :: Language
pattern Scu = $(bakeLanguage Nothing "scu")

-- | Sheni.
pattern Scv :: Language
pattern Scv = $(bakeLanguage Nothing "scv")

-- | Sha.
pattern Scw :: Language
pattern Scw = $(bakeLanguage Nothing "scw")

-- | Sicel.
pattern Scx :: Language
pattern Scx = $(bakeLanguage Nothing "scx")

-- | Shaetlan.
pattern Scz :: Language
pattern Scz = $(bakeLanguage Nothing "scz")

-- | Toraja-Sa'dan.
pattern Sda :: Language
pattern Sda = $(bakeLanguage Nothing "sda")

-- | Shabak.
pattern Sdb :: Language
pattern Sdb = $(bakeLanguage Nothing "sdb")

-- | Sassarese Sardinian.
pattern Sdc :: Language
pattern Sdc = $(bakeLanguage Nothing "sdc")

-- | Surubu.
pattern Sde :: Language
pattern Sde = $(bakeLanguage Nothing "sde")

-- | Sarli.
pattern Sdf :: Language
pattern Sdf = $(bakeLanguage Nothing "sdf")

-- | Savi.
pattern Sdg :: Language
pattern Sdg = $(bakeLanguage Nothing "sdg")

-- | Southern Kurdish.
pattern Sdh :: Language
pattern Sdh = $(bakeLanguage Nothing "sdh")

-- | Suundi.
pattern Sdj :: Language
pattern Sdj = $(bakeLanguage Nothing "sdj")

-- | Sos Kundi.
pattern Sdk :: Language
pattern Sdk = $(bakeLanguage Nothing "sdk")

-- | Saudi Arabian Sign Language.
pattern Sdl :: Language
pattern Sdl = $(bakeLanguage Nothing "sdl")

-- | Gallurese Sardinian.
pattern Sdn :: Language
pattern Sdn = $(bakeLanguage Nothing "sdn")

-- | Bukar-Sadung Bidayuh.
pattern Sdo :: Language
pattern Sdo = $(bakeLanguage Nothing "sdo")

-- | Sherdukpen.
pattern Sdp :: Language
pattern Sdp = $(bakeLanguage Nothing "sdp")

-- | Semandang.
pattern Sdq :: Language
pattern Sdq = $(bakeLanguage Nothing "sdq")

-- | Oraon Sadri.
pattern Sdr :: Language
pattern Sdr = $(bakeLanguage Nothing "sdr")

-- | Sened.
pattern Sds :: Language
pattern Sds = $(bakeLanguage Nothing "sds")

-- | Shuadit.
pattern Sdt :: Language
pattern Sdt = $(bakeLanguage Nothing "sdt")

-- | Sarudu.
pattern Sdu :: Language
pattern Sdu = $(bakeLanguage Nothing "sdu")

-- | Sibu Melanau.
pattern Sdx :: Language
pattern Sdx = $(bakeLanguage Nothing "sdx")

-- | Sallands.
pattern Sdz :: Language
pattern Sdz = $(bakeLanguage Nothing "sdz")

-- | Semai.
pattern Sea :: Language
pattern Sea = $(bakeLanguage Nothing "sea")

-- | Shempire Senoufo.
pattern Seb :: Language
pattern Seb = $(bakeLanguage Nothing "seb")

-- | Sechelt.
pattern Sec :: Language
pattern Sec = $(bakeLanguage Nothing "sec")

-- | Sedang.
pattern Sed :: Language
pattern Sed = $(bakeLanguage Nothing "sed")

-- | Seneca.
pattern See :: Language
pattern See = $(bakeLanguage Nothing "see")

-- | Cebaara Senoufo.
pattern Sef :: Language
pattern Sef = $(bakeLanguage Nothing "sef")

-- | Segeju.
pattern Seg :: Language
pattern Seg = $(bakeLanguage Nothing "seg")

-- | Sena.
pattern Seh :: Language
pattern Seh = $(bakeLanguage Nothing "seh")

-- | Seri.
pattern Sei :: Language
pattern Sei = $(bakeLanguage Nothing "sei")

-- | Sene.
pattern Sej :: Language
pattern Sej = $(bakeLanguage Nothing "sej")

-- | Sekani.
pattern Sek :: Language
pattern Sek = $(bakeLanguage Nothing "sek")

-- | Selkup.
pattern Sel :: Language
pattern Sel = $(bakeLanguage Nothing "sel")

-- | Nanerigé Sénoufo.
pattern Sen :: Language
pattern Sen = $(bakeLanguage Nothing "sen")

-- | Suarmin.
pattern Seo :: Language
pattern Seo = $(bakeLanguage Nothing "seo")

-- | Sìcìté Sénoufo.
pattern Sep :: Language
pattern Sep = $(bakeLanguage Nothing "sep")

-- | Senara Sénoufo.
pattern Seq :: Language
pattern Seq = $(bakeLanguage Nothing "seq")

-- | Serrano.
pattern Ser :: Language
pattern Ser = $(bakeLanguage Nothing "ser")

-- | Koyraboro Senni Songhai.
pattern Ses :: Language
pattern Ses = $(bakeLanguage Nothing "ses")

-- | Sentani.
pattern Set :: Language
pattern Set = $(bakeLanguage Nothing "set")

-- | Serui-Laut.
pattern Seu :: Language
pattern Seu = $(bakeLanguage Nothing "seu")

-- | Nyarafolo Senoufo.
pattern Sev :: Language
pattern Sev = $(bakeLanguage Nothing "sev")

-- | Sewa Bay.
pattern Sew :: Language
pattern Sew = $(bakeLanguage Nothing "sew")

-- | Secoya.
pattern Sey :: Language
pattern Sey = $(bakeLanguage Nothing "sey")

-- | Senthang Chin.
pattern Sez :: Language
pattern Sez = $(bakeLanguage Nothing "sez")

-- | Langue des signes de Belgique Francophone.
pattern Sfb :: Language
pattern Sfb = $(bakeLanguage Nothing "sfb")

-- | Eastern Subanen.
pattern Sfe :: Language
pattern Sfe = $(bakeLanguage Nothing "sfe")

-- | Small Flowery Miao.
pattern Sfm :: Language
pattern Sfm = $(bakeLanguage Nothing "sfm")

-- | South African Sign Language.
pattern Sfs :: Language
pattern Sfs = $(bakeLanguage Nothing "sfs")

-- | Sehwi.
pattern Sfw :: Language
pattern Sfw = $(bakeLanguage Nothing "sfw")

-- | Old Irish (to 900).
pattern Sga :: Language
pattern Sga = $(bakeLanguage Nothing "sga")

-- | Mag-antsi Ayta.
pattern Sgb :: Language
pattern Sgb = $(bakeLanguage Nothing "sgb")

-- | Kipsigis.
pattern Sgc :: Language
pattern Sgc = $(bakeLanguage Nothing "sgc")

-- | Surigaonon.
pattern Sgd :: Language
pattern Sgd = $(bakeLanguage Nothing "sgd")

-- | Segai.
pattern Sge :: Language
pattern Sge = $(bakeLanguage Nothing "sge")

-- | Swiss-German Sign Language.
pattern Sgg :: Language
pattern Sgg = $(bakeLanguage Nothing "sgg")

-- | Shughni.
pattern Sgh :: Language
pattern Sgh = $(bakeLanguage Nothing "sgh")

-- | Suga.
pattern Sgi :: Language
pattern Sgi = $(bakeLanguage Nothing "sgi")

-- | Surgujia.
pattern Sgj :: Language
pattern Sgj = $(bakeLanguage Nothing "sgj")

-- | Sangkong.
pattern Sgk :: Language
pattern Sgk = $(bakeLanguage Nothing "sgk")

-- | Singa.
pattern Sgm :: Language
pattern Sgm = $(bakeLanguage Nothing "sgm")

-- | Singpho.
pattern Sgp :: Language
pattern Sgp = $(bakeLanguage Nothing "sgp")

-- | Sangisari.
pattern Sgr :: Language
pattern Sgr = $(bakeLanguage Nothing "sgr")

-- | Samogitian.
pattern Sgs :: Language
pattern Sgs = $(bakeLanguage Nothing "sgs")

-- | Brokpake.
pattern Sgt :: Language
pattern Sgt = $(bakeLanguage Nothing "sgt")

-- | Salas.
pattern Sgu :: Language
pattern Sgu = $(bakeLanguage Nothing "sgu")

-- | Sebat Bet Gurage.
pattern Sgw :: Language
pattern Sgw = $(bakeLanguage Nothing "sgw")

-- | Sierra Leone Sign Language.
pattern Sgx :: Language
pattern Sgx = $(bakeLanguage Nothing "sgx")

-- | Sanglechi.
pattern Sgy :: Language
pattern Sgy = $(bakeLanguage Nothing "sgy")

-- | Sursurunga.
pattern Sgz :: Language
pattern Sgz = $(bakeLanguage Nothing "sgz")

-- | Shall-Zwall.
pattern Sha :: Language
pattern Sha = $(bakeLanguage Nothing "sha")

-- | Ninam.
pattern Shb :: Language
pattern Shb = $(bakeLanguage Nothing "shb")

-- | Sonde.
pattern Shc :: Language
pattern Shc = $(bakeLanguage Nothing "shc")

-- | Kundal Shahi.
pattern Shd :: Language
pattern Shd = $(bakeLanguage Nothing "shd")

-- | Sheko.
pattern She :: Language
pattern She = $(bakeLanguage Nothing "she")

-- | Shua.
pattern Shg :: Language
pattern Shg = $(bakeLanguage Nothing "shg")

-- | Shoshoni.
pattern Shh :: Language
pattern Shh = $(bakeLanguage Nothing "shh")

-- | Tachelhit.
pattern Shi :: Language
pattern Shi = $(bakeLanguage Nothing "shi")

-- | Shatt.
pattern Shj :: Language
pattern Shj = $(bakeLanguage Nothing "shj")

-- | Shilluk.
pattern Shk :: Language
pattern Shk = $(bakeLanguage Nothing "shk")

-- | Shendu.
pattern Shl :: Language
pattern Shl = $(bakeLanguage Nothing "shl")

-- | Shahrudi.
pattern Shm :: Language
pattern Shm = $(bakeLanguage Nothing "shm")

-- | Shan.
pattern Shn :: Language
pattern Shn = $(bakeLanguage Nothing "shn")

-- | Shanga.
pattern Sho :: Language
pattern Sho = $(bakeLanguage Nothing "sho")

-- | Shipibo-Conibo.
pattern Shp :: Language
pattern Shp = $(bakeLanguage Nothing "shp")

-- | Sala.
pattern Shq :: Language
pattern Shq = $(bakeLanguage Nothing "shq")

-- | Shi.
pattern Shr :: Language
pattern Shr = $(bakeLanguage Nothing "shr")

-- | Shuswap.
pattern Shs :: Language
pattern Shs = $(bakeLanguage Nothing "shs")

-- | Shasta.
pattern Sht :: Language
pattern Sht = $(bakeLanguage Nothing "sht")

-- | Chadian Arabic.
pattern Shu :: Language
pattern Shu = $(bakeLanguage Nothing "shu")

-- | Shehri.
pattern Shv :: Language
pattern Shv = $(bakeLanguage Nothing "shv")

-- | Shwai.
pattern Shw :: Language
pattern Shw = $(bakeLanguage Nothing "shw")

-- | She.
pattern Shx :: Language
pattern Shx = $(bakeLanguage Nothing "shx")

-- | Tachawit.
pattern Shy :: Language
pattern Shy = $(bakeLanguage Nothing "shy")

-- | Syenara Senoufo.
pattern Shz :: Language
pattern Shz = $(bakeLanguage Nothing "shz")

-- | Akkala Sami.
pattern Sia :: Language
pattern Sia = $(bakeLanguage Nothing "sia")

-- | Sebop.
pattern Sib :: Language
pattern Sib = $(bakeLanguage Nothing "sib")

-- | Sidamo.
pattern Sid :: Language
pattern Sid = $(bakeLanguage Nothing "sid")

-- | Simaa.
pattern Sie :: Language
pattern Sie = $(bakeLanguage Nothing "sie")

-- | Siamou.
pattern Sif :: Language
pattern Sif = $(bakeLanguage Nothing "sif")

-- | Paasaal.
pattern Sig :: Language
pattern Sig = $(bakeLanguage Nothing "sig")

-- | Zire.
pattern Sih :: Language
pattern Sih = $(bakeLanguage Nothing "sih")

-- | Shom Peng.
pattern Sii :: Language
pattern Sii = $(bakeLanguage Nothing "sii")

-- | Numbami.
pattern Sij :: Language
pattern Sij = $(bakeLanguage Nothing "sij")

-- | Sikiana.
pattern Sik :: Language
pattern Sik = $(bakeLanguage Nothing "sik")

-- | Tumulung Sisaala.
pattern Sil :: Language
pattern Sil = $(bakeLanguage Nothing "sil")

-- | Mende (Papua New Guinea).
pattern Sim :: Language
pattern Sim = $(bakeLanguage Nothing "sim")

-- | Sikkimese.
pattern Sip :: Language
pattern Sip = $(bakeLanguage Nothing "sip")

-- | Sonia.
pattern Siq :: Language
pattern Siq = $(bakeLanguage Nothing "siq")

-- | Siri.
pattern Sir :: Language
pattern Sir = $(bakeLanguage Nothing "sir")

-- | Siuslaw.
pattern Sis :: Language
pattern Sis = $(bakeLanguage Nothing "sis")

-- | Sinagen.
pattern Siu :: Language
pattern Siu = $(bakeLanguage Nothing "siu")

-- | Sumariup.
pattern Siv :: Language
pattern Siv = $(bakeLanguage Nothing "siv")

-- | Siwai.
pattern Siw :: Language
pattern Siw = $(bakeLanguage Nothing "siw")

-- | Sumau.
pattern Six :: Language
pattern Six = $(bakeLanguage Nothing "six")

-- | Sivandi.
pattern Siy :: Language
pattern Siy = $(bakeLanguage Nothing "siy")

-- | Siwi.
pattern Siz :: Language
pattern Siz = $(bakeLanguage Nothing "siz")

-- | Epena.
pattern Sja :: Language
pattern Sja = $(bakeLanguage Nothing "sja")

-- | Sajau Basap.
pattern Sjb :: Language
pattern Sjb = $(bakeLanguage Nothing "sjb")

-- | Shaojiang Chinese.
pattern Sjc :: Language
pattern Sjc = $(bakeLanguage Nothing "sjc")

-- | Kildin Sami.
pattern Sjd :: Language
pattern Sjd = $(bakeLanguage Nothing "sjd")

-- | Pite Sami.
pattern Sje :: Language
pattern Sje = $(bakeLanguage Nothing "sje")

-- | Assangori.
pattern Sjg :: Language
pattern Sjg = $(bakeLanguage Nothing "sjg")

-- | Kemi Sami.
pattern Sjk :: Language
pattern Sjk = $(bakeLanguage Nothing "sjk")

-- | Sajalong.
pattern Sjl :: Language
pattern Sjl = $(bakeLanguage Nothing "sjl")

-- | Mapun.
pattern Sjm :: Language
pattern Sjm = $(bakeLanguage Nothing "sjm")

-- | Sindarin.
pattern Sjn :: Language
pattern Sjn = $(bakeLanguage Nothing "sjn")

-- | Xibe.
pattern Sjo :: Language
pattern Sjo = $(bakeLanguage Nothing "sjo")

-- | Surjapuri.
pattern Sjp :: Language
pattern Sjp = $(bakeLanguage Nothing "sjp")

-- | Siar-Lak.
pattern Sjr :: Language
pattern Sjr = $(bakeLanguage Nothing "sjr")

-- | Senhaja De Srair.
pattern Sjs :: Language
pattern Sjs = $(bakeLanguage Nothing "sjs")

-- | Ter Sami.
pattern Sjt :: Language
pattern Sjt = $(bakeLanguage Nothing "sjt")

-- | Ume Sami.
pattern Sju :: Language
pattern Sju = $(bakeLanguage Nothing "sju")

-- | Shawnee.
pattern Sjw :: Language
pattern Sjw = $(bakeLanguage Nothing "sjw")

-- | Skagit.
pattern Ska :: Language
pattern Ska = $(bakeLanguage Nothing "ska")

-- | Saek.
pattern Skb :: Language
pattern Skb = $(bakeLanguage Nothing "skb")

-- | Ma Manda.
pattern Skc :: Language
pattern Skc = $(bakeLanguage Nothing "skc")

-- | Southern Sierra Miwok.
pattern Skd :: Language
pattern Skd = $(bakeLanguage Nothing "skd")

-- | Seke (Vanuatu).
pattern Ske :: Language
pattern Ske = $(bakeLanguage Nothing "ske")

-- | Sakirabiá.
pattern Skf :: Language
pattern Skf = $(bakeLanguage Nothing "skf")

-- | Sakalava Malagasy.
pattern Skg :: Language
pattern Skg = $(bakeLanguage Nothing "skg")

-- | Sikule.
pattern Skh :: Language
pattern Skh = $(bakeLanguage Nothing "skh")

-- | Sika.
pattern Ski :: Language
pattern Ski = $(bakeLanguage Nothing "ski")

-- | Seke (Nepal).
pattern Skj :: Language
pattern Skj = $(bakeLanguage Nothing "skj")

-- | Kutong.
pattern Skm :: Language
pattern Skm = $(bakeLanguage Nothing "skm")

-- | Kolibugan Subanon.
pattern Skn :: Language
pattern Skn = $(bakeLanguage Nothing "skn")

-- | Seko Tengah.
pattern Sko :: Language
pattern Sko = $(bakeLanguage Nothing "sko")

-- | Sekapan.
pattern Skp :: Language
pattern Skp = $(bakeLanguage Nothing "skp")

-- | Sininkere.
pattern Skq :: Language
pattern Skq = $(bakeLanguage Nothing "skq")

-- | Saraiki.
pattern Skr :: Language
pattern Skr = $(bakeLanguage Nothing "skr")

-- | Maia.
pattern Sks :: Language
pattern Sks = $(bakeLanguage Nothing "sks")

-- | Sakata.
pattern Skt :: Language
pattern Skt = $(bakeLanguage Nothing "skt")

-- | Sakao.
pattern Sku :: Language
pattern Sku = $(bakeLanguage Nothing "sku")

-- | Skou.
pattern Skv :: Language
pattern Skv = $(bakeLanguage Nothing "skv")

-- | Skepi Creole Dutch.
pattern Skw :: Language
pattern Skw = $(bakeLanguage Nothing "skw")

-- | Seko Padang.
pattern Skx :: Language
pattern Skx = $(bakeLanguage Nothing "skx")

-- | Sikaiana.
pattern Sky :: Language
pattern Sky = $(bakeLanguage Nothing "sky")

-- | Sekar.
pattern Skz :: Language
pattern Skz = $(bakeLanguage Nothing "skz")

-- | Sáliba.
pattern Slc :: Language
pattern Slc = $(bakeLanguage Nothing "slc")

-- | Sissala.
pattern Sld :: Language
pattern Sld = $(bakeLanguage Nothing "sld")

-- | Sholaga.
pattern Sle :: Language
pattern Sle = $(bakeLanguage Nothing "sle")

-- | Swiss-Italian Sign Language.
pattern Slf :: Language
pattern Slf = $(bakeLanguage Nothing "slf")

-- | Selungai Murut.
pattern Slg :: Language
pattern Slg = $(bakeLanguage Nothing "slg")

-- | Southern Puget Sound Salish.
pattern Slh :: Language
pattern Slh = $(bakeLanguage Nothing "slh")

-- | Lower Silesian.
pattern Sli :: Language
pattern Sli = $(bakeLanguage Nothing "sli")

-- | Salumá.
pattern Slj :: Language
pattern Slj = $(bakeLanguage Nothing "slj")

-- | Salt-Yui.
pattern Sll :: Language
pattern Sll = $(bakeLanguage Nothing "sll")

-- | Pangutaran Sama.
pattern Slm :: Language
pattern Slm = $(bakeLanguage Nothing "slm")

-- | Salinan.
pattern Sln :: Language
pattern Sln = $(bakeLanguage Nothing "sln")

-- | Lamaholot.
pattern Slp :: Language
pattern Slp = $(bakeLanguage Nothing "slp")

-- | Salar.
pattern Slr :: Language
pattern Slr = $(bakeLanguage Nothing "slr")

-- | Singapore Sign Language.
pattern Sls :: Language
pattern Sls = $(bakeLanguage Nothing "sls")

-- | Sila.
pattern Slt :: Language
pattern Slt = $(bakeLanguage Nothing "slt")

-- | Selaru.
pattern Slu :: Language
pattern Slu = $(bakeLanguage Nothing "slu")

-- | Sialum.
pattern Slw :: Language
pattern Slw = $(bakeLanguage Nothing "slw")

-- | Salampasu.
pattern Slx :: Language
pattern Slx = $(bakeLanguage Nothing "slx")

-- | Selayar.
pattern Sly :: Language
pattern Sly = $(bakeLanguage Nothing "sly")

-- | Ma'ya.
pattern Slz :: Language
pattern Slz = $(bakeLanguage Nothing "slz")

-- | Southern Sami.
pattern Sma :: Language
pattern Sma = $(bakeLanguage Nothing "sma")

-- | Simbari.
pattern Smb :: Language
pattern Smb = $(bakeLanguage Nothing "smb")

-- | Som.
pattern Smc :: Language
pattern Smc = $(bakeLanguage Nothing "smc")

-- | Auwe.
pattern Smf :: Language
pattern Smf = $(bakeLanguage Nothing "smf")

-- | Simbali.
pattern Smg :: Language
pattern Smg = $(bakeLanguage Nothing "smg")

-- | Samei.
pattern Smh :: Language
pattern Smh = $(bakeLanguage Nothing "smh")

-- | Lule Sami.
pattern Smj :: Language
pattern Smj = $(bakeLanguage Nothing "smj")

-- | Bolinao.
pattern Smk :: Language
pattern Smk = $(bakeLanguage Nothing "smk")

-- | Central Sama.
pattern Sml :: Language
pattern Sml = $(bakeLanguage Nothing "sml")

-- | Musasa.
pattern Smm :: Language
pattern Smm = $(bakeLanguage Nothing "smm")

-- | Inari Sami.
pattern Smn :: Language
pattern Smn = $(bakeLanguage Nothing "smn")

-- | Samaritan.
pattern Smp :: Language
pattern Smp = $(bakeLanguage Nothing "smp")

-- | Samo.
pattern Smq :: Language
pattern Smq = $(bakeLanguage Nothing "smq")

-- | Simeulue.
pattern Smr :: Language
pattern Smr = $(bakeLanguage Nothing "smr")

-- | Skolt Sami.
pattern Sms :: Language
pattern Sms = $(bakeLanguage Nothing "sms")

-- | Simte.
pattern Smt :: Language
pattern Smt = $(bakeLanguage Nothing "smt")

-- | Somray.
pattern Smu :: Language
pattern Smu = $(bakeLanguage Nothing "smu")

-- | Samvedi.
pattern Smv :: Language
pattern Smv = $(bakeLanguage Nothing "smv")

-- | Sumbawa.
pattern Smw :: Language
pattern Smw = $(bakeLanguage Nothing "smw")

-- | Samba.
pattern Smx :: Language
pattern Smx = $(bakeLanguage Nothing "smx")

-- | Semnani.
pattern Smy :: Language
pattern Smy = $(bakeLanguage Nothing "smy")

-- | Simeku.
pattern Smz :: Language
pattern Smz = $(bakeLanguage Nothing "smz")

-- | Sinaugoro.
pattern Snc :: Language
pattern Snc = $(bakeLanguage Nothing "snc")

-- | Bau Bidayuh.
pattern Sne :: Language
pattern Sne = $(bakeLanguage Nothing "sne")

-- | Noon.
pattern Snf :: Language
pattern Snf = $(bakeLanguage Nothing "snf")

-- | Sanga (Democratic Republic of Congo).
pattern Sng :: Language
pattern Sng = $(bakeLanguage Nothing "sng")

-- | Sensi.
pattern Sni :: Language
pattern Sni = $(bakeLanguage Nothing "sni")

-- | Riverain Sango.
pattern Snj :: Language
pattern Snj = $(bakeLanguage Nothing "snj")

-- | Soninke.
pattern Snk :: Language
pattern Snk = $(bakeLanguage Nothing "snk")

-- | Sangil.
pattern Snl :: Language
pattern Snl = $(bakeLanguage Nothing "snl")

-- | Southern Ma'di.
pattern Snm :: Language
pattern Snm = $(bakeLanguage Nothing "snm")

-- | Siona.
pattern Snn :: Language
pattern Snn = $(bakeLanguage Nothing "snn")

-- | Snohomish.
pattern Sno :: Language
pattern Sno = $(bakeLanguage Nothing "sno")

-- | Siane.
pattern Snp :: Language
pattern Snp = $(bakeLanguage Nothing "snp")

-- | Sangu (Gabon).
pattern Snq :: Language
pattern Snq = $(bakeLanguage Nothing "snq")

-- | Sihan.
pattern Snr :: Language
pattern Snr = $(bakeLanguage Nothing "snr")

-- | South West Bay.
pattern Sns :: Language
pattern Sns = $(bakeLanguage Nothing "sns")

-- | Senggi.
pattern Snu :: Language
pattern Snu = $(bakeLanguage Nothing "snu")

-- | Sa'ban.
pattern Snv :: Language
pattern Snv = $(bakeLanguage Nothing "snv")

-- | Selee.
pattern Snw :: Language
pattern Snw = $(bakeLanguage Nothing "snw")

-- | Sam.
pattern Snx :: Language
pattern Snx = $(bakeLanguage Nothing "snx")

-- | Saniyo-Hiyewe.
pattern Sny :: Language
pattern Sny = $(bakeLanguage Nothing "sny")

-- | Kou.
pattern Snz :: Language
pattern Snz = $(bakeLanguage Nothing "snz")

-- | Thai Song.
pattern Soa :: Language
pattern Soa = $(bakeLanguage Nothing "soa")

-- | Sobei.
pattern Sob :: Language
pattern Sob = $(bakeLanguage Nothing "sob")

-- | So (Democratic Republic of Congo).
pattern Soc :: Language
pattern Soc = $(bakeLanguage Nothing "soc")

-- | Songoora.
pattern Sod :: Language
pattern Sod = $(bakeLanguage Nothing "sod")

-- | Songomeno.
pattern Soe :: Language
pattern Soe = $(bakeLanguage Nothing "soe")

-- | Sogdian.
pattern Sog :: Language
pattern Sog = $(bakeLanguage Nothing "sog")

-- | Aka.
pattern Soh :: Language
pattern Soh = $(bakeLanguage Nothing "soh")

-- | Sonha.
pattern Soi :: Language
pattern Soi = $(bakeLanguage Nothing "soi")

-- | Soi.
pattern Soj :: Language
pattern Soj = $(bakeLanguage Nothing "soj")

-- | Sokoro.
pattern Sok :: Language
pattern Sok = $(bakeLanguage Nothing "sok")

-- | Solos.
pattern Sol :: Language
pattern Sol = $(bakeLanguage Nothing "sol")

-- | Songo.
pattern Soo :: Language
pattern Soo = $(bakeLanguage Nothing "soo")

-- | Songe.
pattern Sop :: Language
pattern Sop = $(bakeLanguage Nothing "sop")

-- | Kanasi.
pattern Soq :: Language
pattern Soq = $(bakeLanguage Nothing "soq")

-- | Somrai.
pattern Sor :: Language
pattern Sor = $(bakeLanguage Nothing "sor")

-- | Seeku.
pattern Sos :: Language
pattern Sos = $(bakeLanguage Nothing "sos")

-- | Southern Thai.
pattern Sou :: Language
pattern Sou = $(bakeLanguage Nothing "sou")

-- | Sonsorol.
pattern Sov :: Language
pattern Sov = $(bakeLanguage Nothing "sov")

-- | Sowanda.
pattern Sow :: Language
pattern Sow = $(bakeLanguage Nothing "sow")

-- | Swo.
pattern Sox :: Language
pattern Sox = $(bakeLanguage Nothing "sox")

-- | Miyobe.
pattern Soy :: Language
pattern Soy = $(bakeLanguage Nothing "soy")

-- | Temi.
pattern Soz :: Language
pattern Soz = $(bakeLanguage Nothing "soz")

-- | Sepa (Indonesia).
pattern Spb :: Language
pattern Spb = $(bakeLanguage Nothing "spb")

-- | Sapé.
pattern Spc :: Language
pattern Spc = $(bakeLanguage Nothing "spc")

-- | Saep.
pattern Spd :: Language
pattern Spd = $(bakeLanguage Nothing "spd")

-- | Sepa (Papua New Guinea).
pattern Spe :: Language
pattern Spe = $(bakeLanguage Nothing "spe")

-- | Sian.
pattern Spg :: Language
pattern Spg = $(bakeLanguage Nothing "spg")

-- | Saponi.
pattern Spi :: Language
pattern Spi = $(bakeLanguage Nothing "spi")

-- | Sengo.
pattern Spk :: Language
pattern Spk = $(bakeLanguage Nothing "spk")

-- | Selepet.
pattern Spl :: Language
pattern Spl = $(bakeLanguage Nothing "spl")

-- | Akukem.
pattern Spm :: Language
pattern Spm = $(bakeLanguage Nothing "spm")

-- | Sanapaná.
pattern Spn :: Language
pattern Spn = $(bakeLanguage Nothing "spn")

-- | Spokane.
pattern Spo :: Language
pattern Spo = $(bakeLanguage Nothing "spo")

-- | Supyire Senoufo.
pattern Spp :: Language
pattern Spp = $(bakeLanguage Nothing "spp")

-- | Loreto-Ucayali Spanish.
pattern Spq :: Language
pattern Spq = $(bakeLanguage Nothing "spq")

-- | Saparua.
pattern Spr :: Language
pattern Spr = $(bakeLanguage Nothing "spr")

-- | Saposa.
pattern Sps :: Language
pattern Sps = $(bakeLanguage Nothing "sps")

-- | Spiti Bhoti.
pattern Spt :: Language
pattern Spt = $(bakeLanguage Nothing "spt")

-- | Sapuan.
pattern Spu :: Language
pattern Spu = $(bakeLanguage Nothing "spu")

-- | Sambalpuri.
pattern Spv :: Language
pattern Spv = $(bakeLanguage Nothing "spv")

-- | South Picene.
pattern Spx :: Language
pattern Spx = $(bakeLanguage Nothing "spx")

-- | Sabaot.
pattern Spy :: Language
pattern Spy = $(bakeLanguage Nothing "spy")

-- | Shama-Sambuga.
pattern Sqa :: Language
pattern Sqa = $(bakeLanguage Nothing "sqa")

-- | Shau.
pattern Sqh :: Language
pattern Sqh = $(bakeLanguage Nothing "sqh")

-- | Albanian Sign Language.
pattern Sqk :: Language
pattern Sqk = $(bakeLanguage Nothing "sqk")

-- | Suma.
pattern Sqm :: Language
pattern Sqm = $(bakeLanguage Nothing "sqm")

-- | Susquehannock.
pattern Sqn :: Language
pattern Sqn = $(bakeLanguage Nothing "sqn")

-- | Sorkhei.
pattern Sqo :: Language
pattern Sqo = $(bakeLanguage Nothing "sqo")

-- | Sou.
pattern Sqq :: Language
pattern Sqq = $(bakeLanguage Nothing "sqq")

-- | Siculo Arabic.
pattern Sqr :: Language
pattern Sqr = $(bakeLanguage Nothing "sqr")

-- | Sri Lankan Sign Language.
pattern Sqs :: Language
pattern Sqs = $(bakeLanguage Nothing "sqs")

-- | Soqotri.
pattern Sqt :: Language
pattern Sqt = $(bakeLanguage Nothing "sqt")

-- | Squamish.
pattern Squ :: Language
pattern Squ = $(bakeLanguage Nothing "squ")

-- | Kufr Qassem Sign Language (KQSL).
pattern Sqx :: Language
pattern Sqx = $(bakeLanguage Nothing "sqx")

-- | Saruga.
pattern Sra :: Language
pattern Sra = $(bakeLanguage Nothing "sra")

-- | Sora.
pattern Srb :: Language
pattern Srb = $(bakeLanguage Nothing "srb")

-- | Logudorese Sardinian.
pattern Src :: Language
pattern Src = $(bakeLanguage Nothing "src")

-- | Sara.
pattern Sre :: Language
pattern Sre = $(bakeLanguage Nothing "sre")

-- | Nafi.
pattern Srf :: Language
pattern Srf = $(bakeLanguage Nothing "srf")

-- | Sulod.
pattern Srg :: Language
pattern Srg = $(bakeLanguage Nothing "srg")

-- | Sarikoli.
pattern Srh :: Language
pattern Srh = $(bakeLanguage Nothing "srh")

-- | Siriano.
pattern Sri :: Language
pattern Sri = $(bakeLanguage Nothing "sri")

-- | Serudung Murut.
pattern Srk :: Language
pattern Srk = $(bakeLanguage Nothing "srk")

-- | Isirawa.
pattern Srl :: Language
pattern Srl = $(bakeLanguage Nothing "srl")

-- | Saramaccan.
pattern Srm :: Language
pattern Srm = $(bakeLanguage Nothing "srm")

-- | Sranan Tongo.
pattern Srn :: Language
pattern Srn = $(bakeLanguage Nothing "srn")

-- | Campidanese Sardinian.
pattern Sro :: Language
pattern Sro = $(bakeLanguage Nothing "sro")

-- | Sirionó.
pattern Srq :: Language
pattern Srq = $(bakeLanguage Nothing "srq")

-- | Serer.
pattern Srr :: Language
pattern Srr = $(bakeLanguage Nothing "srr")

-- | Tsuut'ina.
pattern Srs :: Language
pattern Srs = $(bakeLanguage Nothing "srs")

-- | Sauri.
pattern Srt :: Language
pattern Srt = $(bakeLanguage Nothing "srt")

-- | Suruí.
pattern Sru :: Language
pattern Sru = $(bakeLanguage Nothing "sru")

-- | Southern Sorsoganon.
pattern Srv :: Language
pattern Srv = $(bakeLanguage Nothing "srv")

-- | Serua.
pattern Srw :: Language
pattern Srw = $(bakeLanguage Nothing "srw")

-- | Sirmauri.
pattern Srx :: Language
pattern Srx = $(bakeLanguage Nothing "srx")

-- | Sera.
pattern Sry :: Language
pattern Sry = $(bakeLanguage Nothing "sry")

-- | Shahmirzadi.
pattern Srz :: Language
pattern Srz = $(bakeLanguage Nothing "srz")

-- | Southern Sama.
pattern Ssb :: Language
pattern Ssb = $(bakeLanguage Nothing "ssb")

-- | Suba-Simbiti.
pattern Ssc :: Language
pattern Ssc = $(bakeLanguage Nothing "ssc")

-- | Siroi.
pattern Ssd :: Language
pattern Ssd = $(bakeLanguage Nothing "ssd")

-- | Balangingi.
pattern Sse :: Language
pattern Sse = $(bakeLanguage Nothing "sse")

-- | Thao.
pattern Ssf :: Language
pattern Ssf = $(bakeLanguage Nothing "ssf")

-- | Seimat.
pattern Ssg :: Language
pattern Ssg = $(bakeLanguage Nothing "ssg")

-- | Shihhi Arabic.
pattern Ssh :: Language
pattern Ssh = $(bakeLanguage Nothing "ssh")

-- | Sansi.
pattern Ssi :: Language
pattern Ssi = $(bakeLanguage Nothing "ssi")

-- | Sausi.
pattern Ssj :: Language
pattern Ssj = $(bakeLanguage Nothing "ssj")

-- | Sunam.
pattern Ssk :: Language
pattern Ssk = $(bakeLanguage Nothing "ssk")

-- | Western Sisaala.
pattern Ssl :: Language
pattern Ssl = $(bakeLanguage Nothing "ssl")

-- | Semnam.
pattern Ssm :: Language
pattern Ssm = $(bakeLanguage Nothing "ssm")

-- | Waata.
pattern Ssn :: Language
pattern Ssn = $(bakeLanguage Nothing "ssn")

-- | Sissano.
pattern Sso :: Language
pattern Sso = $(bakeLanguage Nothing "sso")

-- | Spanish Sign Language.
pattern Ssp :: Language
pattern Ssp = $(bakeLanguage Nothing "ssp")

-- | So'a.
pattern Ssq :: Language
pattern Ssq = $(bakeLanguage Nothing "ssq")

-- | Swiss-French Sign Language.
pattern Ssr :: Language
pattern Ssr = $(bakeLanguage Nothing "ssr")

-- | Sô.
pattern Sss :: Language
pattern Sss = $(bakeLanguage Nothing "sss")

-- | Sinasina.
pattern Sst :: Language
pattern Sst = $(bakeLanguage Nothing "sst")

-- | Susuami.
pattern Ssu :: Language
pattern Ssu = $(bakeLanguage Nothing "ssu")

-- | Shark Bay.
pattern Ssv :: Language
pattern Ssv = $(bakeLanguage Nothing "ssv")

-- | Samberigi.
pattern Ssx :: Language
pattern Ssx = $(bakeLanguage Nothing "ssx")

-- | Saho.
pattern Ssy :: Language
pattern Ssy = $(bakeLanguage Nothing "ssy")

-- | Sengseng.
pattern Ssz :: Language
pattern Ssz = $(bakeLanguage Nothing "ssz")

-- | Settla.
pattern Sta :: Language
pattern Sta = $(bakeLanguage Nothing "sta")

-- | Northern Subanen.
pattern Stb :: Language
pattern Stb = $(bakeLanguage Nothing "stb")

-- | Sentinel.
pattern Std :: Language
pattern Std = $(bakeLanguage Nothing "std")

-- | Liana-Seti.
pattern Ste :: Language
pattern Ste = $(bakeLanguage Nothing "ste")

-- | Seta.
pattern Stf :: Language
pattern Stf = $(bakeLanguage Nothing "stf")

-- | Trieng.
pattern Stg :: Language
pattern Stg = $(bakeLanguage Nothing "stg")

-- | Shelta.
pattern Sth :: Language
pattern Sth = $(bakeLanguage Nothing "sth")

-- | Bulo Stieng.
pattern Sti :: Language
pattern Sti = $(bakeLanguage Nothing "sti")

-- | Matya Samo.
pattern Stj :: Language
pattern Stj = $(bakeLanguage Nothing "stj")

-- | Arammba.
pattern Stk :: Language
pattern Stk = $(bakeLanguage Nothing "stk")

-- | Stellingwerfs.
pattern Stl :: Language
pattern Stl = $(bakeLanguage Nothing "stl")

-- | Setaman.
pattern Stm :: Language
pattern Stm = $(bakeLanguage Nothing "stm")

-- | Owa.
pattern Stn :: Language
pattern Stn = $(bakeLanguage Nothing "stn")

-- | Stoney.
pattern Sto :: Language
pattern Sto = $(bakeLanguage Nothing "sto")

-- | Southeastern Tepehuan.
pattern Stp :: Language
pattern Stp = $(bakeLanguage Nothing "stp")

-- | Saterfriesisch.
pattern Stq :: Language
pattern Stq = $(bakeLanguage Nothing "stq")

-- | Straits Salish.
pattern Str :: Language
pattern Str = $(bakeLanguage Nothing "str")

-- | Shumashti.
pattern Sts :: Language
pattern Sts = $(bakeLanguage Nothing "sts")

-- | Budeh Stieng.
pattern Stt :: Language
pattern Stt = $(bakeLanguage Nothing "stt")

-- | Samtao.
pattern Stu :: Language
pattern Stu = $(bakeLanguage Nothing "stu")

-- | Silt'e.
pattern Stv :: Language
pattern Stv = $(bakeLanguage Nothing "stv")

-- | Satawalese.
pattern Stw :: Language
pattern Stw = $(bakeLanguage Nothing "stw")

-- | Siberian Tatar.
pattern Sty :: Language
pattern Sty = $(bakeLanguage Nothing "sty")

-- | Sulka.
pattern Sua :: Language
pattern Sua = $(bakeLanguage Nothing "sua")

-- | Suku.
pattern Sub :: Language
pattern Sub = $(bakeLanguage Nothing "sub")

-- | Western Subanon.
pattern Suc :: Language
pattern Suc = $(bakeLanguage Nothing "suc")

-- | Suena.
pattern Sue :: Language
pattern Sue = $(bakeLanguage Nothing "sue")

-- | Suganga.
pattern Sug :: Language
pattern Sug = $(bakeLanguage Nothing "sug")

-- | Suki.
pattern Sui :: Language
pattern Sui = $(bakeLanguage Nothing "sui")

-- | Shubi.
pattern Suj :: Language
pattern Suj = $(bakeLanguage Nothing "suj")

-- | Sukuma.
pattern Suk :: Language
pattern Suk = $(bakeLanguage Nothing "suk")

-- | Bouni.
pattern Suo :: Language
pattern Suo = $(bakeLanguage Nothing "suo")

-- | Tirmaga-Chai Suri.
pattern Suq :: Language
pattern Suq = $(bakeLanguage Nothing "suq")

-- | Mwaghavul.
pattern Sur :: Language
pattern Sur = $(bakeLanguage Nothing "sur")

-- | Susu.
pattern Sus :: Language
pattern Sus = $(bakeLanguage Nothing "sus")

-- | Subtiaba.
pattern Sut :: Language
pattern Sut = $(bakeLanguage Nothing "sut")

-- | Puroik.
pattern Suv :: Language
pattern Suv = $(bakeLanguage Nothing "suv")

-- | Sumbwa.
pattern Suw :: Language
pattern Suw = $(bakeLanguage Nothing "suw")

-- | Sumerian.
pattern Sux :: Language
pattern Sux = $(bakeLanguage Nothing "sux")

-- | Suyá.
pattern Suy :: Language
pattern Suy = $(bakeLanguage Nothing "suy")

-- | Sunwar.
pattern Suz :: Language
pattern Suz = $(bakeLanguage Nothing "suz")

-- | Svan.
pattern Sva :: Language
pattern Sva = $(bakeLanguage Nothing "sva")

-- | Ulau-Suain.
pattern Svb :: Language
pattern Svb = $(bakeLanguage Nothing "svb")

-- | Vincentian Creole English.
pattern Svc :: Language
pattern Svc = $(bakeLanguage Nothing "svc")

-- | Serili.
pattern Sve :: Language
pattern Sve = $(bakeLanguage Nothing "sve")

-- | Slovakian Sign Language.
pattern Svk :: Language
pattern Svk = $(bakeLanguage Nothing "svk")

-- | Slavomolisano.
pattern Svm :: Language
pattern Svm = $(bakeLanguage Nothing "svm")

-- | Savosavo.
pattern Svs :: Language
pattern Svs = $(bakeLanguage Nothing "svs")

-- | Skalvian.
pattern Svx :: Language
pattern Svx = $(bakeLanguage Nothing "svx")

-- | Maore Comorian.
pattern Swb :: Language
pattern Swb = $(bakeLanguage Nothing "swb")

-- | Congo Swahili.
pattern Swc :: Language
pattern Swc = $(bakeLanguage Nothing "swc")

-- | Sere.
pattern Swf :: Language
pattern Swf = $(bakeLanguage Nothing "swf")

-- | Swabian.
pattern Swg :: Language
pattern Swg = $(bakeLanguage Nothing "swg")

-- | Swahili (individual language).
pattern Swh :: Language
pattern Swh = $(bakeLanguage Nothing "swh")

-- | Sui.
pattern Swi :: Language
pattern Swi = $(bakeLanguage Nothing "swi")

-- | Sira.
pattern Swj :: Language
pattern Swj = $(bakeLanguage Nothing "swj")

-- | Malawi Sena.
pattern Swk :: Language
pattern Swk = $(bakeLanguage Nothing "swk")

-- | Swedish Sign Language.
pattern Swl :: Language
pattern Swl = $(bakeLanguage Nothing "swl")

-- | Samosa.
pattern Swm :: Language
pattern Swm = $(bakeLanguage Nothing "swm")

-- | Sawknah.
pattern Swn :: Language
pattern Swn = $(bakeLanguage Nothing "swn")

-- | Shanenawa.
pattern Swo :: Language
pattern Swo = $(bakeLanguage Nothing "swo")

-- | Suau.
pattern Swp :: Language
pattern Swp = $(bakeLanguage Nothing "swp")

-- | Sharwa.
pattern Swq :: Language
pattern Swq = $(bakeLanguage Nothing "swq")

-- | Saweru.
pattern Swr :: Language
pattern Swr = $(bakeLanguage Nothing "swr")

-- | Seluwasan.
pattern Sws :: Language
pattern Sws = $(bakeLanguage Nothing "sws")

-- | Sawila.
pattern Swt :: Language
pattern Swt = $(bakeLanguage Nothing "swt")

-- | Suwawa.
pattern Swu :: Language
pattern Swu = $(bakeLanguage Nothing "swu")

-- | Shekhawati.
pattern Swv :: Language
pattern Swv = $(bakeLanguage Nothing "swv")

-- | Sowa.
pattern Sww :: Language
pattern Sww = $(bakeLanguage Nothing "sww")

-- | Suruahá.
pattern Swx :: Language
pattern Swx = $(bakeLanguage Nothing "swx")

-- | Sarua.
pattern Swy :: Language
pattern Swy = $(bakeLanguage Nothing "swy")

-- | Suba.
pattern Sxb :: Language
pattern Sxb = $(bakeLanguage Nothing "sxb")

-- | Sicanian.
pattern Sxc :: Language
pattern Sxc = $(bakeLanguage Nothing "sxc")

-- | Sighu.
pattern Sxe :: Language
pattern Sxe = $(bakeLanguage Nothing "sxe")

-- | Shuhi.
pattern Sxg :: Language
pattern Sxg = $(bakeLanguage Nothing "sxg")

-- | Southern Kalapuya.
pattern Sxk :: Language
pattern Sxk = $(bakeLanguage Nothing "sxk")

-- | Selian.
pattern Sxl :: Language
pattern Sxl = $(bakeLanguage Nothing "sxl")

-- | Samre.
pattern Sxm :: Language
pattern Sxm = $(bakeLanguage Nothing "sxm")

-- | Sangir.
pattern Sxn :: Language
pattern Sxn = $(bakeLanguage Nothing "sxn")

-- | Sorothaptic.
pattern Sxo :: Language
pattern Sxo = $(bakeLanguage Nothing "sxo")

-- | Saaroa.
pattern Sxr :: Language
pattern Sxr = $(bakeLanguage Nothing "sxr")

-- | Sasaru.
pattern Sxs :: Language
pattern Sxs = $(bakeLanguage Nothing "sxs")

-- | Upper Saxon.
pattern Sxu :: Language
pattern Sxu = $(bakeLanguage Nothing "sxu")

-- | Saxwe Gbe.
pattern Sxw :: Language
pattern Sxw = $(bakeLanguage Nothing "sxw")

-- | Siang.
pattern Sya :: Language
pattern Sya = $(bakeLanguage Nothing "sya")

-- | Central Subanen.
pattern Syb :: Language
pattern Syb = $(bakeLanguage Nothing "syb")

-- | Classical Syriac.
pattern Syc :: Language
pattern Syc = $(bakeLanguage Nothing "syc")

-- | Seki.
pattern Syi :: Language
pattern Syi = $(bakeLanguage Nothing "syi")

-- | Sukur.
pattern Syk :: Language
pattern Syk = $(bakeLanguage Nothing "syk")

-- | Sylheti.
pattern Syl :: Language
pattern Syl = $(bakeLanguage Nothing "syl")

-- | Maya Samo.
pattern Sym :: Language
pattern Sym = $(bakeLanguage Nothing "sym")

-- | Senaya.
pattern Syn :: Language
pattern Syn = $(bakeLanguage Nothing "syn")

-- | Suoy.
pattern Syo :: Language
pattern Syo = $(bakeLanguage Nothing "syo")

-- | Syriac.
pattern Syr :: Language
pattern Syr = $(bakeLanguage Nothing "syr")

-- | Sinyar.
pattern Sys :: Language
pattern Sys = $(bakeLanguage Nothing "sys")

-- | Kagate.
pattern Syw :: Language
pattern Syw = $(bakeLanguage Nothing "syw")

-- | Samay.
pattern Syx :: Language
pattern Syx = $(bakeLanguage Nothing "syx")

-- | Al-Sayyid Bedouin Sign Language.
pattern Syy :: Language
pattern Syy = $(bakeLanguage Nothing "syy")

-- | Semelai.
pattern Sza :: Language
pattern Sza = $(bakeLanguage Nothing "sza")

-- | Ngalum.
pattern Szb :: Language
pattern Szb = $(bakeLanguage Nothing "szb")

-- | Semaq Beri.
pattern Szc :: Language
pattern Szc = $(bakeLanguage Nothing "szc")

-- | Seze.
pattern Sze :: Language
pattern Sze = $(bakeLanguage Nothing "sze")

-- | Sengele.
pattern Szg :: Language
pattern Szg = $(bakeLanguage Nothing "szg")

-- | Silesian.
pattern Szl :: Language
pattern Szl = $(bakeLanguage Nothing "szl")

-- | Sula.
pattern Szn :: Language
pattern Szn = $(bakeLanguage Nothing "szn")

-- | Suabo.
pattern Szp :: Language
pattern Szp = $(bakeLanguage Nothing "szp")

-- | Solomon Islands Sign Language.
pattern Szs :: Language
pattern Szs = $(bakeLanguage Nothing "szs")

-- | Isubu.
pattern Szv :: Language
pattern Szv = $(bakeLanguage Nothing "szv")

-- | Sawai.
pattern Szw :: Language
pattern Szw = $(bakeLanguage Nothing "szw")

-- | Sakizaya.
pattern Szy :: Language
pattern Szy = $(bakeLanguage Nothing "szy")

-- | Lower Tanana.
pattern Taa :: Language
pattern Taa = $(bakeLanguage Nothing "taa")

-- | Tabassaran.
pattern Tab :: Language
pattern Tab = $(bakeLanguage Nothing "tab")

-- | Lowland Tarahumara.
pattern Tac :: Language
pattern Tac = $(bakeLanguage Nothing "tac")

-- | Tause.
pattern Tad :: Language
pattern Tad = $(bakeLanguage Nothing "tad")

-- | Tariana.
pattern Tae :: Language
pattern Tae = $(bakeLanguage Nothing "tae")

-- | Tapirapé.
pattern Taf :: Language
pattern Taf = $(bakeLanguage Nothing "taf")

-- | Tagoi.
pattern Tag :: Language
pattern Tag = $(bakeLanguage Nothing "tag")

-- | Eastern Tamang.
pattern Taj :: Language
pattern Taj = $(bakeLanguage Nothing "taj")

-- | Tala.
pattern Tak :: Language
pattern Tak = $(bakeLanguage Nothing "tak")

-- | Tal.
pattern Tal :: Language
pattern Tal = $(bakeLanguage Nothing "tal")

-- | Tangale.
pattern Tan :: Language
pattern Tan = $(bakeLanguage Nothing "tan")

-- | Yami.
pattern Tao :: Language
pattern Tao = $(bakeLanguage Nothing "tao")

-- | Taabwa.
pattern Tap :: Language
pattern Tap = $(bakeLanguage Nothing "tap")

-- | Tamasheq.
pattern Taq :: Language
pattern Taq = $(bakeLanguage Nothing "taq")

-- | Central Tarahumara.
pattern Tar :: Language
pattern Tar = $(bakeLanguage Nothing "tar")

-- | Tay Boi.
pattern Tas :: Language
pattern Tas = $(bakeLanguage Nothing "tas")

-- | Upper Tanana.
pattern Tau :: Language
pattern Tau = $(bakeLanguage Nothing "tau")

-- | Tatuyo.
pattern Tav :: Language
pattern Tav = $(bakeLanguage Nothing "tav")

-- | Tai.
pattern Taw :: Language
pattern Taw = $(bakeLanguage Nothing "taw")

-- | Tamki.
pattern Tax :: Language
pattern Tax = $(bakeLanguage Nothing "tax")

-- | Atayal.
pattern Tay :: Language
pattern Tay = $(bakeLanguage Nothing "tay")

-- | Tocho.
pattern Taz :: Language
pattern Taz = $(bakeLanguage Nothing "taz")

-- | Aikanã.
pattern Tba :: Language
pattern Tba = $(bakeLanguage Nothing "tba")

-- | Takia.
pattern Tbc :: Language
pattern Tbc = $(bakeLanguage Nothing "tbc")

-- | Kaki Ae.
pattern Tbd :: Language
pattern Tbd = $(bakeLanguage Nothing "tbd")

-- | Tanimbili.
pattern Tbe :: Language
pattern Tbe = $(bakeLanguage Nothing "tbe")

-- | Mandara.
pattern Tbf :: Language
pattern Tbf = $(bakeLanguage Nothing "tbf")

-- | North Tairora.
pattern Tbg :: Language
pattern Tbg = $(bakeLanguage Nothing "tbg")

-- | Dharawal.
pattern Tbh :: Language
pattern Tbh = $(bakeLanguage Nothing "tbh")

-- | Gaam.
pattern Tbi :: Language
pattern Tbi = $(bakeLanguage Nothing "tbi")

-- | Tiang.
pattern Tbj :: Language
pattern Tbj = $(bakeLanguage Nothing "tbj")

-- | Calamian Tagbanwa.
pattern Tbk :: Language
pattern Tbk = $(bakeLanguage Nothing "tbk")

-- | Tboli.
pattern Tbl :: Language
pattern Tbl = $(bakeLanguage Nothing "tbl")

-- | Tagbu.
pattern Tbm :: Language
pattern Tbm = $(bakeLanguage Nothing "tbm")

-- | Barro Negro Tunebo.
pattern Tbn :: Language
pattern Tbn = $(bakeLanguage Nothing "tbn")

-- | Tawala.
pattern Tbo :: Language
pattern Tbo = $(bakeLanguage Nothing "tbo")

-- | Taworta.
pattern Tbp :: Language
pattern Tbp = $(bakeLanguage Nothing "tbp")

-- | Tumtum.
pattern Tbr :: Language
pattern Tbr = $(bakeLanguage Nothing "tbr")

-- | Tanguat.
pattern Tbs :: Language
pattern Tbs = $(bakeLanguage Nothing "tbs")

-- | Tembo (Kitembo).
pattern Tbt :: Language
pattern Tbt = $(bakeLanguage Nothing "tbt")

-- | Tubar.
pattern Tbu :: Language
pattern Tbu = $(bakeLanguage Nothing "tbu")

-- | Tobo.
pattern Tbv :: Language
pattern Tbv = $(bakeLanguage Nothing "tbv")

-- | Tagbanwa.
pattern Tbw :: Language
pattern Tbw = $(bakeLanguage Nothing "tbw")

-- | Kapin.
pattern Tbx :: Language
pattern Tbx = $(bakeLanguage Nothing "tbx")

-- | Tabaru.
pattern Tby :: Language
pattern Tby = $(bakeLanguage Nothing "tby")

-- | Ditammari.
pattern Tbz :: Language
pattern Tbz = $(bakeLanguage Nothing "tbz")

-- | Ticuna.
pattern Tca :: Language
pattern Tca = $(bakeLanguage Nothing "tca")

-- | Tanacross.
pattern Tcb :: Language
pattern Tcb = $(bakeLanguage Nothing "tcb")

-- | Datooga.
pattern Tcc :: Language
pattern Tcc = $(bakeLanguage Nothing "tcc")

-- | Tafi.
pattern Tcd :: Language
pattern Tcd = $(bakeLanguage Nothing "tcd")

-- | Southern Tutchone.
pattern Tce :: Language
pattern Tce = $(bakeLanguage Nothing "tce")

-- | Malinaltepec Me'phaa.
pattern Tcf :: Language
pattern Tcf = $(bakeLanguage Nothing "tcf")

-- | Tamagario.
pattern Tcg :: Language
pattern Tcg = $(bakeLanguage Nothing "tcg")

-- | Turks And Caicos Creole English.
pattern Tch :: Language
pattern Tch = $(bakeLanguage Nothing "tch")

-- | Wára.
pattern Tci :: Language
pattern Tci = $(bakeLanguage Nothing "tci")

-- | Tchitchege.
pattern Tck :: Language
pattern Tck = $(bakeLanguage Nothing "tck")

-- | Taman (Myanmar).
pattern Tcl :: Language
pattern Tcl = $(bakeLanguage Nothing "tcl")

-- | Tanahmerah.
pattern Tcm :: Language
pattern Tcm = $(bakeLanguage Nothing "tcm")

-- | Tichurong.
pattern Tcn :: Language
pattern Tcn = $(bakeLanguage Nothing "tcn")

-- | Taungyo.
pattern Tco :: Language
pattern Tco = $(bakeLanguage Nothing "tco")

-- | Tawr Chin.
pattern Tcp :: Language
pattern Tcp = $(bakeLanguage Nothing "tcp")

-- | Kaiy.
pattern Tcq :: Language
pattern Tcq = $(bakeLanguage Nothing "tcq")

-- | Torres Strait Creole.
pattern Tcs :: Language
pattern Tcs = $(bakeLanguage Nothing "tcs")

-- | T'en.
pattern Tct :: Language
pattern Tct = $(bakeLanguage Nothing "tct")

-- | Southeastern Tarahumara.
pattern Tcu :: Language
pattern Tcu = $(bakeLanguage Nothing "tcu")

-- | Tecpatlán Totonac.
pattern Tcw :: Language
pattern Tcw = $(bakeLanguage Nothing "tcw")

-- | Toda.
pattern Tcx :: Language
pattern Tcx = $(bakeLanguage Nothing "tcx")

-- | Tulu.
pattern Tcy :: Language
pattern Tcy = $(bakeLanguage Nothing "tcy")

-- | Thado Chin.
pattern Tcz :: Language
pattern Tcz = $(bakeLanguage Nothing "tcz")

-- | Tagdal.
pattern Tda :: Language
pattern Tda = $(bakeLanguage Nothing "tda")

-- | Panchpargania.
pattern Tdb :: Language
pattern Tdb = $(bakeLanguage Nothing "tdb")

-- | Emberá-Tadó.
pattern Tdc :: Language
pattern Tdc = $(bakeLanguage Nothing "tdc")

-- | Tai Nüa.
pattern Tdd :: Language
pattern Tdd = $(bakeLanguage Nothing "tdd")

-- | Tiranige Diga Dogon.
pattern Tde :: Language
pattern Tde = $(bakeLanguage Nothing "tde")

-- | Talieng.
pattern Tdf :: Language
pattern Tdf = $(bakeLanguage Nothing "tdf")

-- | Western Tamang.
pattern Tdg :: Language
pattern Tdg = $(bakeLanguage Nothing "tdg")

-- | Thulung.
pattern Tdh :: Language
pattern Tdh = $(bakeLanguage Nothing "tdh")

-- | Tomadino.
pattern Tdi :: Language
pattern Tdi = $(bakeLanguage Nothing "tdi")

-- | Tajio.
pattern Tdj :: Language
pattern Tdj = $(bakeLanguage Nothing "tdj")

-- | Tambas.
pattern Tdk :: Language
pattern Tdk = $(bakeLanguage Nothing "tdk")

-- | Sur.
pattern Tdl :: Language
pattern Tdl = $(bakeLanguage Nothing "tdl")

-- | Taruma.
pattern Tdm :: Language
pattern Tdm = $(bakeLanguage Nothing "tdm")

-- | Tondano.
pattern Tdn :: Language
pattern Tdn = $(bakeLanguage Nothing "tdn")

-- | Teme.
pattern Tdo :: Language
pattern Tdo = $(bakeLanguage Nothing "tdo")

-- | Tita.
pattern Tdq :: Language
pattern Tdq = $(bakeLanguage Nothing "tdq")

-- | Todrah.
pattern Tdr :: Language
pattern Tdr = $(bakeLanguage Nothing "tdr")

-- | Doutai.
pattern Tds :: Language
pattern Tds = $(bakeLanguage Nothing "tds")

-- | Tetun Dili.
pattern Tdt :: Language
pattern Tdt = $(bakeLanguage Nothing "tdt")

-- | Toro.
pattern Tdv :: Language
pattern Tdv = $(bakeLanguage Nothing "tdv")

-- | Tandroy-Mahafaly Malagasy.
pattern Tdx :: Language
pattern Tdx = $(bakeLanguage Nothing "tdx")

-- | Tadyawan.
pattern Tdy :: Language
pattern Tdy = $(bakeLanguage Nothing "tdy")

-- | Temiar.
pattern Tea :: Language
pattern Tea = $(bakeLanguage Nothing "tea")

-- | Tetete.
pattern Teb :: Language
pattern Teb = $(bakeLanguage Nothing "teb")

-- | Terik.
pattern Tec :: Language
pattern Tec = $(bakeLanguage Nothing "tec")

-- | Tepo Krumen.
pattern Ted :: Language
pattern Ted = $(bakeLanguage Nothing "ted")

-- | Huehuetla Tepehua.
pattern Tee :: Language
pattern Tee = $(bakeLanguage Nothing "tee")

-- | Teressa.
pattern Tef :: Language
pattern Tef = $(bakeLanguage Nothing "tef")

-- | Teke-Tege.
pattern Teg :: Language
pattern Teg = $(bakeLanguage Nothing "teg")

-- | Tehuelche.
pattern Teh :: Language
pattern Teh = $(bakeLanguage Nothing "teh")

-- | Torricelli.
pattern Tei :: Language
pattern Tei = $(bakeLanguage Nothing "tei")

-- | Ibali Teke.
pattern Tek :: Language
pattern Tek = $(bakeLanguage Nothing "tek")

-- | Timne.
pattern Tem :: Language
pattern Tem = $(bakeLanguage Nothing "tem")

-- | Tama (Colombia).
pattern Ten :: Language
pattern Ten = $(bakeLanguage Nothing "ten")

-- | Teso.
pattern Teo :: Language
pattern Teo = $(bakeLanguage Nothing "teo")

-- | Tepecano.
pattern Tep :: Language
pattern Tep = $(bakeLanguage Nothing "tep")

-- | Temein.
pattern Teq :: Language
pattern Teq = $(bakeLanguage Nothing "teq")

-- | Tereno.
pattern Ter :: Language
pattern Ter = $(bakeLanguage Nothing "ter")

-- | Tengger.
pattern Tes :: Language
pattern Tes = $(bakeLanguage Nothing "tes")

-- | Tetum.
pattern Tet :: Language
pattern Tet = $(bakeLanguage Nothing "tet")

-- | Soo.
pattern Teu :: Language
pattern Teu = $(bakeLanguage Nothing "teu")

-- | Teor.
pattern Tev :: Language
pattern Tev = $(bakeLanguage Nothing "tev")

-- | Tewa (USA).
pattern Tew :: Language
pattern Tew = $(bakeLanguage Nothing "tew")

-- | Tennet.
pattern Tex :: Language
pattern Tex = $(bakeLanguage Nothing "tex")

-- | Tulishi.
pattern Tey :: Language
pattern Tey = $(bakeLanguage Nothing "tey")

-- | Tetserret.
pattern Tez :: Language
pattern Tez = $(bakeLanguage Nothing "tez")

-- | Tofin Gbe.
pattern Tfi :: Language
pattern Tfi = $(bakeLanguage Nothing "tfi")

-- | Tanaina.
pattern Tfn :: Language
pattern Tfn = $(bakeLanguage Nothing "tfn")

-- | Tefaro.
pattern Tfo :: Language
pattern Tfo = $(bakeLanguage Nothing "tfo")

-- | Teribe.
pattern Tfr :: Language
pattern Tfr = $(bakeLanguage Nothing "tfr")

-- | Ternate.
pattern Tft :: Language
pattern Tft = $(bakeLanguage Nothing "tft")

-- | Sagalla.
pattern Tga :: Language
pattern Tga = $(bakeLanguage Nothing "tga")

-- | Tobilung.
pattern Tgb :: Language
pattern Tgb = $(bakeLanguage Nothing "tgb")

-- | Tigak.
pattern Tgc :: Language
pattern Tgc = $(bakeLanguage Nothing "tgc")

-- | Ciwogai.
pattern Tgd :: Language
pattern Tgd = $(bakeLanguage Nothing "tgd")

-- | Eastern Gorkha Tamang.
pattern Tge :: Language
pattern Tge = $(bakeLanguage Nothing "tge")

-- | Chalikha.
pattern Tgf :: Language
pattern Tgf = $(bakeLanguage Nothing "tgf")

-- | Tobagonian Creole English.
pattern Tgh :: Language
pattern Tgh = $(bakeLanguage Nothing "tgh")

-- | Lawunuia.
pattern Tgi :: Language
pattern Tgi = $(bakeLanguage Nothing "tgi")

-- | Tagin.
pattern Tgj :: Language
pattern Tgj = $(bakeLanguage Nothing "tgj")

-- | Tandaganon.
pattern Tgn :: Language
pattern Tgn = $(bakeLanguage Nothing "tgn")

-- | Sudest.
pattern Tgo :: Language
pattern Tgo = $(bakeLanguage Nothing "tgo")

-- | Tangoa.
pattern Tgp :: Language
pattern Tgp = $(bakeLanguage Nothing "tgp")

-- | Tring.
pattern Tgq :: Language
pattern Tgq = $(bakeLanguage Nothing "tgq")

-- | Tareng.
pattern Tgr :: Language
pattern Tgr = $(bakeLanguage Nothing "tgr")

-- | Nume.
pattern Tgs :: Language
pattern Tgs = $(bakeLanguage Nothing "tgs")

-- | Central Tagbanwa.
pattern Tgt :: Language
pattern Tgt = $(bakeLanguage Nothing "tgt")

-- | Tanggu.
pattern Tgu :: Language
pattern Tgu = $(bakeLanguage Nothing "tgu")

-- | Tingui-Boto.
pattern Tgv :: Language
pattern Tgv = $(bakeLanguage Nothing "tgv")

-- | Tagwana Senoufo.
pattern Tgw :: Language
pattern Tgw = $(bakeLanguage Nothing "tgw")

-- | Tagish.
pattern Tgx :: Language
pattern Tgx = $(bakeLanguage Nothing "tgx")

-- | Togoyo.
pattern Tgy :: Language
pattern Tgy = $(bakeLanguage Nothing "tgy")

-- | Tagalaka.
pattern Tgz :: Language
pattern Tgz = $(bakeLanguage Nothing "tgz")

-- | Kuuk Thaayorre.
pattern Thd :: Language
pattern Thd = $(bakeLanguage Nothing "thd")

-- | Chitwania Tharu.
pattern The :: Language
pattern The = $(bakeLanguage Nothing "the")

-- | Thangmi.
pattern Thf :: Language
pattern Thf = $(bakeLanguage Nothing "thf")

-- | Northern Tarahumara.
pattern Thh :: Language
pattern Thh = $(bakeLanguage Nothing "thh")

-- | Tai Long.
pattern Thi :: Language
pattern Thi = $(bakeLanguage Nothing "thi")

-- | Tharaka.
pattern Thk :: Language
pattern Thk = $(bakeLanguage Nothing "thk")

-- | Dangaura Tharu.
pattern Thl :: Language
pattern Thl = $(bakeLanguage Nothing "thl")

-- | Aheu.
pattern Thm :: Language
pattern Thm = $(bakeLanguage Nothing "thm")

-- | Thachanadan.
pattern Thn :: Language
pattern Thn = $(bakeLanguage Nothing "thn")

-- | Thompson.
pattern Thp :: Language
pattern Thp = $(bakeLanguage Nothing "thp")

-- | Kochila Tharu.
pattern Thq :: Language
pattern Thq = $(bakeLanguage Nothing "thq")

-- | Rana Tharu.
pattern Thr :: Language
pattern Thr = $(bakeLanguage Nothing "thr")

-- | Thakali.
pattern Ths :: Language
pattern Ths = $(bakeLanguage Nothing "ths")

-- | Tahltan.
pattern Tht :: Language
pattern Tht = $(bakeLanguage Nothing "tht")

-- | Thuri.
pattern Thu :: Language
pattern Thu = $(bakeLanguage Nothing "thu")

-- | Tahaggart Tamahaq.
pattern Thv :: Language
pattern Thv = $(bakeLanguage Nothing "thv")

-- | Tha.
pattern Thy :: Language
pattern Thy = $(bakeLanguage Nothing "thy")

-- | Tayart Tamajeq.
pattern Thz :: Language
pattern Thz = $(bakeLanguage Nothing "thz")

-- | Tidikelt Tamazight.
pattern Tia :: Language
pattern Tia = $(bakeLanguage Nothing "tia")

-- | Tira.
pattern Tic :: Language
pattern Tic = $(bakeLanguage Nothing "tic")

-- | Tifal.
pattern Tif :: Language
pattern Tif = $(bakeLanguage Nothing "tif")

-- | Tigre.
pattern Tig :: Language
pattern Tig = $(bakeLanguage Nothing "tig")

-- | Timugon Murut.
pattern Tih :: Language
pattern Tih = $(bakeLanguage Nothing "tih")

-- | Tiene.
pattern Tii :: Language
pattern Tii = $(bakeLanguage Nothing "tii")

-- | Tilung.
pattern Tij :: Language
pattern Tij = $(bakeLanguage Nothing "tij")

-- | Tikar.
pattern Tik :: Language
pattern Tik = $(bakeLanguage Nothing "tik")

-- | Tillamook.
pattern Til :: Language
pattern Til = $(bakeLanguage Nothing "til")

-- | Timbe.
pattern Tim :: Language
pattern Tim = $(bakeLanguage Nothing "tim")

-- | Tindi.
pattern Tin :: Language
pattern Tin = $(bakeLanguage Nothing "tin")

-- | Teop.
pattern Tio :: Language
pattern Tio = $(bakeLanguage Nothing "tio")

-- | Trimuris.
pattern Tip :: Language
pattern Tip = $(bakeLanguage Nothing "tip")

-- | Tiéfo.
pattern Tiq :: Language
pattern Tiq = $(bakeLanguage Nothing "tiq")

-- | Masadiit Itneg.
pattern Tis :: Language
pattern Tis = $(bakeLanguage Nothing "tis")

-- | Tinigua.
pattern Tit :: Language
pattern Tit = $(bakeLanguage Nothing "tit")

-- | Adasen.
pattern Tiu :: Language
pattern Tiu = $(bakeLanguage Nothing "tiu")

-- | Tiv.
pattern Tiv :: Language
pattern Tiv = $(bakeLanguage Nothing "tiv")

-- | Tiwi.
pattern Tiw :: Language
pattern Tiw = $(bakeLanguage Nothing "tiw")

-- | Southern Tiwa.
pattern Tix :: Language
pattern Tix = $(bakeLanguage Nothing "tix")

-- | Tiruray.
pattern Tiy :: Language
pattern Tiy = $(bakeLanguage Nothing "tiy")

-- | Tai Hongjin.
pattern Tiz :: Language
pattern Tiz = $(bakeLanguage Nothing "tiz")

-- | Tajuasohn.
pattern Tja :: Language
pattern Tja = $(bakeLanguage Nothing "tja")

-- | Tunjung.
pattern Tjg :: Language
pattern Tjg = $(bakeLanguage Nothing "tjg")

-- | Northern Tujia.
pattern Tji :: Language
pattern Tji = $(bakeLanguage Nothing "tji")

-- | Tjungundji.
pattern Tjj :: Language
pattern Tjj = $(bakeLanguage Nothing "tjj")

-- | Tai Laing.
pattern Tjl :: Language
pattern Tjl = $(bakeLanguage Nothing "tjl")

-- | Timucua.
pattern Tjm :: Language
pattern Tjm = $(bakeLanguage Nothing "tjm")

-- | Tonjon.
pattern Tjn :: Language
pattern Tjn = $(bakeLanguage Nothing "tjn")

-- | Temacine Tamazight.
pattern Tjo :: Language
pattern Tjo = $(bakeLanguage Nothing "tjo")

-- | Tjupany.
pattern Tjp :: Language
pattern Tjp = $(bakeLanguage Nothing "tjp")

-- | Southern Tujia.
pattern Tjs :: Language
pattern Tjs = $(bakeLanguage Nothing "tjs")

-- | Tjurruru.
pattern Tju :: Language
pattern Tju = $(bakeLanguage Nothing "tju")

-- | Djabwurrung.
pattern Tjw :: Language
pattern Tjw = $(bakeLanguage Nothing "tjw")

-- | Truká.
pattern Tka :: Language
pattern Tka = $(bakeLanguage Nothing "tka")

-- | Buksa.
pattern Tkb :: Language
pattern Tkb = $(bakeLanguage Nothing "tkb")

-- | Tukudede.
pattern Tkd :: Language
pattern Tkd = $(bakeLanguage Nothing "tkd")

-- | Takwane.
pattern Tke :: Language
pattern Tke = $(bakeLanguage Nothing "tke")

-- | Tukumanféd.
pattern Tkf :: Language
pattern Tkf = $(bakeLanguage Nothing "tkf")

-- | Tesaka Malagasy.
pattern Tkg :: Language
pattern Tkg = $(bakeLanguage Nothing "tkg")

-- | Tokelau.
pattern Tkl :: Language
pattern Tkl = $(bakeLanguage Nothing "tkl")

-- | Takelma.
pattern Tkm :: Language
pattern Tkm = $(bakeLanguage Nothing "tkm")

-- | Toku-No-Shima.
pattern Tkn :: Language
pattern Tkn = $(bakeLanguage Nothing "tkn")

-- | Tikopia.
pattern Tkp :: Language
pattern Tkp = $(bakeLanguage Nothing "tkp")

-- | Tee.
pattern Tkq :: Language
pattern Tkq = $(bakeLanguage Nothing "tkq")

-- | Tsakhur.
pattern Tkr :: Language
pattern Tkr = $(bakeLanguage Nothing "tkr")

-- | Takestani.
pattern Tks :: Language
pattern Tks = $(bakeLanguage Nothing "tks")

-- | Kathoriya Tharu.
pattern Tkt :: Language
pattern Tkt = $(bakeLanguage Nothing "tkt")

-- | Upper Necaxa Totonac.
pattern Tku :: Language
pattern Tku = $(bakeLanguage Nothing "tku")

-- | Mur Pano.
pattern Tkv :: Language
pattern Tkv = $(bakeLanguage Nothing "tkv")

-- | Teanu.
pattern Tkw :: Language
pattern Tkw = $(bakeLanguage Nothing "tkw")

-- | Tangko.
pattern Tkx :: Language
pattern Tkx = $(bakeLanguage Nothing "tkx")

-- | Takua.
pattern Tkz :: Language
pattern Tkz = $(bakeLanguage Nothing "tkz")

-- | Southwestern Tepehuan.
pattern Tla :: Language
pattern Tla = $(bakeLanguage Nothing "tla")

-- | Tobelo.
pattern Tlb :: Language
pattern Tlb = $(bakeLanguage Nothing "tlb")

-- | Yecuatla Totonac.
pattern Tlc :: Language
pattern Tlc = $(bakeLanguage Nothing "tlc")

-- | Talaud.
pattern Tld :: Language
pattern Tld = $(bakeLanguage Nothing "tld")

-- | Telefol.
pattern Tlf :: Language
pattern Tlf = $(bakeLanguage Nothing "tlf")

-- | Tofanma.
pattern Tlg :: Language
pattern Tlg = $(bakeLanguage Nothing "tlg")

-- | Klingon.
pattern Tlh :: Language
pattern Tlh = $(bakeLanguage Nothing "tlh")

-- | Tlingit.
pattern Tli :: Language
pattern Tli = $(bakeLanguage Nothing "tli")

-- | Talinga-Bwisi.
pattern Tlj :: Language
pattern Tlj = $(bakeLanguage Nothing "tlj")

-- | Taloki.
pattern Tlk :: Language
pattern Tlk = $(bakeLanguage Nothing "tlk")

-- | Tetela.
pattern Tll :: Language
pattern Tll = $(bakeLanguage Nothing "tll")

-- | Tolomako.
pattern Tlm :: Language
pattern Tlm = $(bakeLanguage Nothing "tlm")

-- | Talondo'.
pattern Tln :: Language
pattern Tln = $(bakeLanguage Nothing "tln")

-- | Talodi.
pattern Tlo :: Language
pattern Tlo = $(bakeLanguage Nothing "tlo")

-- | Filomena Mata-Coahuitlán Totonac.
pattern Tlp :: Language
pattern Tlp = $(bakeLanguage Nothing "tlp")

-- | Tai Loi.
pattern Tlq :: Language
pattern Tlq = $(bakeLanguage Nothing "tlq")

-- | Talise.
pattern Tlr :: Language
pattern Tlr = $(bakeLanguage Nothing "tlr")

-- | Tambotalo.
pattern Tls :: Language
pattern Tls = $(bakeLanguage Nothing "tls")

-- | Sou Nama.
pattern Tlt :: Language
pattern Tlt = $(bakeLanguage Nothing "tlt")

-- | Tulehu.
pattern Tlu :: Language
pattern Tlu = $(bakeLanguage Nothing "tlu")

-- | Taliabu.
pattern Tlv :: Language
pattern Tlv = $(bakeLanguage Nothing "tlv")

-- | Khehek.
pattern Tlx :: Language
pattern Tlx = $(bakeLanguage Nothing "tlx")

-- | Talysh.
pattern Tly :: Language
pattern Tly = $(bakeLanguage Nothing "tly")

-- | Tama (Chad).
pattern Tma :: Language
pattern Tma = $(bakeLanguage Nothing "tma")

-- | Katbol.
pattern Tmb :: Language
pattern Tmb = $(bakeLanguage Nothing "tmb")

-- | Tumak.
pattern Tmc :: Language
pattern Tmc = $(bakeLanguage Nothing "tmc")

-- | Haruai.
pattern Tmd :: Language
pattern Tmd = $(bakeLanguage Nothing "tmd")

-- | Tremembé.
pattern Tme :: Language
pattern Tme = $(bakeLanguage Nothing "tme")

-- | Toba-Maskoy.
pattern Tmf :: Language
pattern Tmf = $(bakeLanguage Nothing "tmf")

-- | Ternateño.
pattern Tmg :: Language
pattern Tmg = $(bakeLanguage Nothing "tmg")

-- | Tamashek.
pattern Tmh :: Language
pattern Tmh = $(bakeLanguage Nothing "tmh")

-- | Tutuba.
pattern Tmi :: Language
pattern Tmi = $(bakeLanguage Nothing "tmi")

-- | Samarokena.
pattern Tmj :: Language
pattern Tmj = $(bakeLanguage Nothing "tmj")

-- | Tamnim Citak.
pattern Tml :: Language
pattern Tml = $(bakeLanguage Nothing "tml")

-- | Tai Thanh.
pattern Tmm :: Language
pattern Tmm = $(bakeLanguage Nothing "tmm")

-- | Taman (Indonesia).
pattern Tmn :: Language
pattern Tmn = $(bakeLanguage Nothing "tmn")

-- | Temoq.
pattern Tmo :: Language
pattern Tmo = $(bakeLanguage Nothing "tmo")

-- | Tumleo.
pattern Tmq :: Language
pattern Tmq = $(bakeLanguage Nothing "tmq")

-- | Jewish Babylonian Aramaic (ca. 200-1200 CE).
pattern Tmr :: Language
pattern Tmr = $(bakeLanguage Nothing "tmr")

-- | Tima.
pattern Tms :: Language
pattern Tms = $(bakeLanguage Nothing "tms")

-- | Tasmate.
pattern Tmt :: Language
pattern Tmt = $(bakeLanguage Nothing "tmt")

-- | Iau.
pattern Tmu :: Language
pattern Tmu = $(bakeLanguage Nothing "tmu")

-- | Tembo (Motembo).
pattern Tmv :: Language
pattern Tmv = $(bakeLanguage Nothing "tmv")

-- | Temuan.
pattern Tmw :: Language
pattern Tmw = $(bakeLanguage Nothing "tmw")

-- | Tami.
pattern Tmy :: Language
pattern Tmy = $(bakeLanguage Nothing "tmy")

-- | Tamanaku.
pattern Tmz :: Language
pattern Tmz = $(bakeLanguage Nothing "tmz")

-- | Tacana.
pattern Tna :: Language
pattern Tna = $(bakeLanguage Nothing "tna")

-- | Western Tunebo.
pattern Tnb :: Language
pattern Tnb = $(bakeLanguage Nothing "tnb")

-- | Tanimuca-Retuarã.
pattern Tnc :: Language
pattern Tnc = $(bakeLanguage Nothing "tnc")

-- | Angosturas Tunebo.
pattern Tnd :: Language
pattern Tnd = $(bakeLanguage Nothing "tnd")

-- | Tobanga.
pattern Tng :: Language
pattern Tng = $(bakeLanguage Nothing "tng")

-- | Maiani.
pattern Tnh :: Language
pattern Tnh = $(bakeLanguage Nothing "tnh")

-- | Tandia.
pattern Tni :: Language
pattern Tni = $(bakeLanguage Nothing "tni")

-- | Kwamera.
pattern Tnk :: Language
pattern Tnk = $(bakeLanguage Nothing "tnk")

-- | Lenakel.
pattern Tnl :: Language
pattern Tnl = $(bakeLanguage Nothing "tnl")

-- | Tabla.
pattern Tnm :: Language
pattern Tnm = $(bakeLanguage Nothing "tnm")

-- | North Tanna.
pattern Tnn :: Language
pattern Tnn = $(bakeLanguage Nothing "tnn")

-- | Toromono.
pattern Tno :: Language
pattern Tno = $(bakeLanguage Nothing "tno")

-- | Whitesands.
pattern Tnp :: Language
pattern Tnp = $(bakeLanguage Nothing "tnp")

-- | Taino.
pattern Tnq :: Language
pattern Tnq = $(bakeLanguage Nothing "tnq")

-- | Ménik.
pattern Tnr :: Language
pattern Tnr = $(bakeLanguage Nothing "tnr")

-- | Tenis.
pattern Tns :: Language
pattern Tns = $(bakeLanguage Nothing "tns")

-- | Tontemboan.
pattern Tnt :: Language
pattern Tnt = $(bakeLanguage Nothing "tnt")

-- | Tay Khang.
pattern Tnu :: Language
pattern Tnu = $(bakeLanguage Nothing "tnu")

-- | Tangchangya.
pattern Tnv :: Language
pattern Tnv = $(bakeLanguage Nothing "tnv")

-- | Tonsawang.
pattern Tnw :: Language
pattern Tnw = $(bakeLanguage Nothing "tnw")

-- | Tanema.
pattern Tnx :: Language
pattern Tnx = $(bakeLanguage Nothing "tnx")

-- | Tongwe.
pattern Tny :: Language
pattern Tny = $(bakeLanguage Nothing "tny")

-- | Ten'edn.
pattern Tnz :: Language
pattern Tnz = $(bakeLanguage Nothing "tnz")

-- | Toba.
pattern Tob :: Language
pattern Tob = $(bakeLanguage Nothing "tob")

-- | Coyutla Totonac.
pattern Toc :: Language
pattern Toc = $(bakeLanguage Nothing "toc")

-- | Toma.
pattern Tod :: Language
pattern Tod = $(bakeLanguage Nothing "tod")

-- | Gizrra.
pattern Tof :: Language
pattern Tof = $(bakeLanguage Nothing "tof")

-- | Tonga (Nyasa).
pattern Tog :: Language
pattern Tog = $(bakeLanguage Nothing "tog")

-- | Gitonga.
pattern Toh :: Language
pattern Toh = $(bakeLanguage Nothing "toh")

-- | Tonga (Zambia).
pattern Toi :: Language
pattern Toi = $(bakeLanguage Nothing "toi")

-- | Tojolabal.
pattern Toj :: Language
pattern Toj = $(bakeLanguage Nothing "toj")

-- | Toki Pona.
pattern Tok :: Language
pattern Tok = $(bakeLanguage Nothing "tok")

-- | Tolowa.
pattern Tol :: Language
pattern Tol = $(bakeLanguage Nothing "tol")

-- | Tombulu.
pattern Tom :: Language
pattern Tom = $(bakeLanguage Nothing "tom")

-- | Xicotepec De Juárez Totonac.
pattern Too :: Language
pattern Too = $(bakeLanguage Nothing "too")

-- | Papantla Totonac.
pattern Top :: Language
pattern Top = $(bakeLanguage Nothing "top")

-- | Toposa.
pattern Toq :: Language
pattern Toq = $(bakeLanguage Nothing "toq")

-- | Togbo-Vara Banda.
pattern Tor :: Language
pattern Tor = $(bakeLanguage Nothing "tor")

-- | Highland Totonac.
pattern Tos :: Language
pattern Tos = $(bakeLanguage Nothing "tos")

-- | Tho.
pattern Tou :: Language
pattern Tou = $(bakeLanguage Nothing "tou")

-- | Upper Taromi.
pattern Tov :: Language
pattern Tov = $(bakeLanguage Nothing "tov")

-- | Jemez.
pattern Tow :: Language
pattern Tow = $(bakeLanguage Nothing "tow")

-- | Tobian.
pattern Tox :: Language
pattern Tox = $(bakeLanguage Nothing "tox")

-- | Topoiyo.
pattern Toy :: Language
pattern Toy = $(bakeLanguage Nothing "toy")

-- | To.
pattern Toz :: Language
pattern Toz = $(bakeLanguage Nothing "toz")

-- | Taupota.
pattern Tpa :: Language
pattern Tpa = $(bakeLanguage Nothing "tpa")

-- | Azoyú Me'phaa.
pattern Tpc :: Language
pattern Tpc = $(bakeLanguage Nothing "tpc")

-- | Tippera.
pattern Tpe :: Language
pattern Tpe = $(bakeLanguage Nothing "tpe")

-- | Tarpia.
pattern Tpf :: Language
pattern Tpf = $(bakeLanguage Nothing "tpf")

-- | Kula.
pattern Tpg :: Language
pattern Tpg = $(bakeLanguage Nothing "tpg")

-- | Tok Pisin.
pattern Tpi :: Language
pattern Tpi = $(bakeLanguage Nothing "tpi")

-- | Tapieté.
pattern Tpj :: Language
pattern Tpj = $(bakeLanguage Nothing "tpj")

-- | Tupinikin.
pattern Tpk :: Language
pattern Tpk = $(bakeLanguage Nothing "tpk")

-- | Tlacoapa Me'phaa.
pattern Tpl :: Language
pattern Tpl = $(bakeLanguage Nothing "tpl")

-- | Tampulma.
pattern Tpm :: Language
pattern Tpm = $(bakeLanguage Nothing "tpm")

-- | Tupinambá.
pattern Tpn :: Language
pattern Tpn = $(bakeLanguage Nothing "tpn")

-- | Tai Pao.
pattern Tpo :: Language
pattern Tpo = $(bakeLanguage Nothing "tpo")

-- | Pisaflores Tepehua.
pattern Tpp :: Language
pattern Tpp = $(bakeLanguage Nothing "tpp")

-- | Tukpa.
pattern Tpq :: Language
pattern Tpq = $(bakeLanguage Nothing "tpq")

-- | Tuparí.
pattern Tpr :: Language
pattern Tpr = $(bakeLanguage Nothing "tpr")

-- | Tlachichilco Tepehua.
pattern Tpt :: Language
pattern Tpt = $(bakeLanguage Nothing "tpt")

-- | Tampuan.
pattern Tpu :: Language
pattern Tpu = $(bakeLanguage Nothing "tpu")

-- | Tanapag.
pattern Tpv :: Language
pattern Tpv = $(bakeLanguage Nothing "tpv")

-- | Acatepec Me'phaa.
pattern Tpx :: Language
pattern Tpx = $(bakeLanguage Nothing "tpx")

-- | Trumai.
pattern Tpy :: Language
pattern Tpy = $(bakeLanguage Nothing "tpy")

-- | Tinputz.
pattern Tpz :: Language
pattern Tpz = $(bakeLanguage Nothing "tpz")

-- | Tembé.
pattern Tqb :: Language
pattern Tqb = $(bakeLanguage Nothing "tqb")

-- | Lehali.
pattern Tql :: Language
pattern Tql = $(bakeLanguage Nothing "tql")

-- | Turumsa.
pattern Tqm :: Language
pattern Tqm = $(bakeLanguage Nothing "tqm")

-- | Tenino.
pattern Tqn :: Language
pattern Tqn = $(bakeLanguage Nothing "tqn")

-- | Toaripi.
pattern Tqo :: Language
pattern Tqo = $(bakeLanguage Nothing "tqo")

-- | Tomoip.
pattern Tqp :: Language
pattern Tqp = $(bakeLanguage Nothing "tqp")

-- | Tunni.
pattern Tqq :: Language
pattern Tqq = $(bakeLanguage Nothing "tqq")

-- | Torona.
pattern Tqr :: Language
pattern Tqr = $(bakeLanguage Nothing "tqr")

-- | Western Totonac.
pattern Tqt :: Language
pattern Tqt = $(bakeLanguage Nothing "tqt")

-- | Touo.
pattern Tqu :: Language
pattern Tqu = $(bakeLanguage Nothing "tqu")

-- | Tonkawa.
pattern Tqw :: Language
pattern Tqw = $(bakeLanguage Nothing "tqw")

-- | Tirahi.
pattern Tra :: Language
pattern Tra = $(bakeLanguage Nothing "tra")

-- | Terebu.
pattern Trb :: Language
pattern Trb = $(bakeLanguage Nothing "trb")

-- | Copala Triqui.
pattern Trc :: Language
pattern Trc = $(bakeLanguage Nothing "trc")

-- | Turi.
pattern Trd :: Language
pattern Trd = $(bakeLanguage Nothing "trd")

-- | East Tarangan.
pattern Tre :: Language
pattern Tre = $(bakeLanguage Nothing "tre")

-- | Trinidadian Creole English.
pattern Trf :: Language
pattern Trf = $(bakeLanguage Nothing "trf")

-- | Lishán Didán.
pattern Trg :: Language
pattern Trg = $(bakeLanguage Nothing "trg")

-- | Turaka.
pattern Trh :: Language
pattern Trh = $(bakeLanguage Nothing "trh")

-- | Trió.
pattern Tri :: Language
pattern Tri = $(bakeLanguage Nothing "tri")

-- | Toram.
pattern Trj :: Language
pattern Trj = $(bakeLanguage Nothing "trj")

-- | Traveller Scottish.
pattern Trl :: Language
pattern Trl = $(bakeLanguage Nothing "trl")

-- | Tregami.
pattern Trm :: Language
pattern Trm = $(bakeLanguage Nothing "trm")

-- | Trinitario.
pattern Trn :: Language
pattern Trn = $(bakeLanguage Nothing "trn")

-- | Tarao Naga.
pattern Tro :: Language
pattern Tro = $(bakeLanguage Nothing "tro")

-- | Kok Borok.
pattern Trp :: Language
pattern Trp = $(bakeLanguage Nothing "trp")

-- | San Martín Itunyoso Triqui.
pattern Trq :: Language
pattern Trq = $(bakeLanguage Nothing "trq")

-- | Taushiro.
pattern Trr :: Language
pattern Trr = $(bakeLanguage Nothing "trr")

-- | Chicahuaxtla Triqui.
pattern Trs :: Language
pattern Trs = $(bakeLanguage Nothing "trs")

-- | Tunggare.
pattern Trt :: Language
pattern Trt = $(bakeLanguage Nothing "trt")

-- | Turoyo.
pattern Tru :: Language
pattern Tru = $(bakeLanguage Nothing "tru")

-- | Sediq.
pattern Trv :: Language
pattern Trv = $(bakeLanguage Nothing "trv")

-- | Torwali.
pattern Trw :: Language
pattern Trw = $(bakeLanguage Nothing "trw")

-- | Tringgus-Sembaan Bidayuh.
pattern Trx :: Language
pattern Trx = $(bakeLanguage Nothing "trx")

-- | Turung.
pattern Try :: Language
pattern Try = $(bakeLanguage Nothing "try")

-- | Torá.
pattern Trz :: Language
pattern Trz = $(bakeLanguage Nothing "trz")

-- | Tsaangi.
pattern Tsa :: Language
pattern Tsa = $(bakeLanguage Nothing "tsa")

-- | Tsamai.
pattern Tsb :: Language
pattern Tsb = $(bakeLanguage Nothing "tsb")

-- | Tswa.
pattern Tsc :: Language
pattern Tsc = $(bakeLanguage Nothing "tsc")

-- | Tsakonian.
pattern Tsd :: Language
pattern Tsd = $(bakeLanguage Nothing "tsd")

-- | Tunisian Sign Language.
pattern Tse :: Language
pattern Tse = $(bakeLanguage Nothing "tse")

-- | Tausug.
pattern Tsg :: Language
pattern Tsg = $(bakeLanguage Nothing "tsg")

-- | Tsuvan.
pattern Tsh :: Language
pattern Tsh = $(bakeLanguage Nothing "tsh")

-- | Tsimshian.
pattern Tsi :: Language
pattern Tsi = $(bakeLanguage Nothing "tsi")

-- | Tshangla.
pattern Tsj :: Language
pattern Tsj = $(bakeLanguage Nothing "tsj")

-- | Tseku.
pattern Tsk :: Language
pattern Tsk = $(bakeLanguage Nothing "tsk")

-- | Ts'ün-Lao.
pattern Tsl :: Language
pattern Tsl = $(bakeLanguage Nothing "tsl")

-- | Turkish Sign Language.
pattern Tsm :: Language
pattern Tsm = $(bakeLanguage Nothing "tsm")

-- | Northern Toussian.
pattern Tsp :: Language
pattern Tsp = $(bakeLanguage Nothing "tsp")

-- | Thai Sign Language.
pattern Tsq :: Language
pattern Tsq = $(bakeLanguage Nothing "tsq")

-- | Akei.
pattern Tsr :: Language
pattern Tsr = $(bakeLanguage Nothing "tsr")

-- | Taiwan Sign Language.
pattern Tss :: Language
pattern Tss = $(bakeLanguage Nothing "tss")

-- | Tondi Songway Kiini.
pattern Tst :: Language
pattern Tst = $(bakeLanguage Nothing "tst")

-- | Tsou.
pattern Tsu :: Language
pattern Tsu = $(bakeLanguage Nothing "tsu")

-- | Tsogo.
pattern Tsv :: Language
pattern Tsv = $(bakeLanguage Nothing "tsv")

-- | Tsishingini.
pattern Tsw :: Language
pattern Tsw = $(bakeLanguage Nothing "tsw")

-- | Mubami.
pattern Tsx :: Language
pattern Tsx = $(bakeLanguage Nothing "tsx")

-- | Tebul Sign Language.
pattern Tsy :: Language
pattern Tsy = $(bakeLanguage Nothing "tsy")

-- | Purepecha.
pattern Tsz :: Language
pattern Tsz = $(bakeLanguage Nothing "tsz")

-- | Tutelo.
pattern Tta :: Language
pattern Tta = $(bakeLanguage Nothing "tta")

-- | Gaa.
pattern Ttb :: Language
pattern Ttb = $(bakeLanguage Nothing "ttb")

-- | Tektiteko.
pattern Ttc :: Language
pattern Ttc = $(bakeLanguage Nothing "ttc")

-- | Tauade.
pattern Ttd :: Language
pattern Ttd = $(bakeLanguage Nothing "ttd")

-- | Bwanabwana.
pattern Tte :: Language
pattern Tte = $(bakeLanguage Nothing "tte")

-- | Tuotomb.
pattern Ttf :: Language
pattern Ttf = $(bakeLanguage Nothing "ttf")

-- | Tutong.
pattern Ttg :: Language
pattern Ttg = $(bakeLanguage Nothing "ttg")

-- | Upper Ta'oih.
pattern Tth :: Language
pattern Tth = $(bakeLanguage Nothing "tth")

-- | Tobati.
pattern Tti :: Language
pattern Tti = $(bakeLanguage Nothing "tti")

-- | Tooro.
pattern Ttj :: Language
pattern Ttj = $(bakeLanguage Nothing "ttj")

-- | Totoro.
pattern Ttk :: Language
pattern Ttk = $(bakeLanguage Nothing "ttk")

-- | Totela.
pattern Ttl :: Language
pattern Ttl = $(bakeLanguage Nothing "ttl")

-- | Northern Tutchone.
pattern Ttm :: Language
pattern Ttm = $(bakeLanguage Nothing "ttm")

-- | Towei.
pattern Ttn :: Language
pattern Ttn = $(bakeLanguage Nothing "ttn")

-- | Lower Ta'oih.
pattern Tto :: Language
pattern Tto = $(bakeLanguage Nothing "tto")

-- | Tombelala.
pattern Ttp :: Language
pattern Ttp = $(bakeLanguage Nothing "ttp")

-- | Tawallammat Tamajaq.
pattern Ttq :: Language
pattern Ttq = $(bakeLanguage Nothing "ttq")

-- | Tera.
pattern Ttr :: Language
pattern Ttr = $(bakeLanguage Nothing "ttr")

-- | Northeastern Thai.
pattern Tts :: Language
pattern Tts = $(bakeLanguage Nothing "tts")

-- | Muslim Tat.
pattern Ttt :: Language
pattern Ttt = $(bakeLanguage Nothing "ttt")

-- | Torau.
pattern Ttu :: Language
pattern Ttu = $(bakeLanguage Nothing "ttu")

-- | Titan.
pattern Ttv :: Language
pattern Ttv = $(bakeLanguage Nothing "ttv")

-- | Long Wat.
pattern Ttw :: Language
pattern Ttw = $(bakeLanguage Nothing "ttw")

-- | Sikaritai.
pattern Tty :: Language
pattern Tty = $(bakeLanguage Nothing "tty")

-- | Tsum.
pattern Ttz :: Language
pattern Ttz = $(bakeLanguage Nothing "ttz")

-- | Wiarumus.
pattern Tua :: Language
pattern Tua = $(bakeLanguage Nothing "tua")

-- | Tübatulabal.
pattern Tub :: Language
pattern Tub = $(bakeLanguage Nothing "tub")

-- | Mutu.
pattern Tuc :: Language
pattern Tuc = $(bakeLanguage Nothing "tuc")

-- | Tuxá.
pattern Tud :: Language
pattern Tud = $(bakeLanguage Nothing "tud")

-- | Tuyuca.
pattern Tue :: Language
pattern Tue = $(bakeLanguage Nothing "tue")

-- | Central Tunebo.
pattern Tuf :: Language
pattern Tuf = $(bakeLanguage Nothing "tuf")

-- | Tunia.
pattern Tug :: Language
pattern Tug = $(bakeLanguage Nothing "tug")

-- | Taulil.
pattern Tuh :: Language
pattern Tuh = $(bakeLanguage Nothing "tuh")

-- | Tupuri.
pattern Tui :: Language
pattern Tui = $(bakeLanguage Nothing "tui")

-- | Tugutil.
pattern Tuj :: Language
pattern Tuj = $(bakeLanguage Nothing "tuj")

-- | Tula.
pattern Tul :: Language
pattern Tul = $(bakeLanguage Nothing "tul")

-- | Tumbuka.
pattern Tum :: Language
pattern Tum = $(bakeLanguage Nothing "tum")

-- | Tunica.
pattern Tun :: Language
pattern Tun = $(bakeLanguage Nothing "tun")

-- | Tucano.
pattern Tuo :: Language
pattern Tuo = $(bakeLanguage Nothing "tuo")

-- | Tedaga.
pattern Tuq :: Language
pattern Tuq = $(bakeLanguage Nothing "tuq")

-- | Tuscarora.
pattern Tus :: Language
pattern Tus = $(bakeLanguage Nothing "tus")

-- | Tututni.
pattern Tuu :: Language
pattern Tuu = $(bakeLanguage Nothing "tuu")

-- | Turkana.
pattern Tuv :: Language
pattern Tuv = $(bakeLanguage Nothing "tuv")

-- | Tuxináwa.
pattern Tux :: Language
pattern Tux = $(bakeLanguage Nothing "tux")

-- | Tugen.
pattern Tuy :: Language
pattern Tuy = $(bakeLanguage Nothing "tuy")

-- | Turka.
pattern Tuz :: Language
pattern Tuz = $(bakeLanguage Nothing "tuz")

-- | Vaghua.
pattern Tva :: Language
pattern Tva = $(bakeLanguage Nothing "tva")

-- | Tsuvadi.
pattern Tvd :: Language
pattern Tvd = $(bakeLanguage Nothing "tvd")

-- | Te'un.
pattern Tve :: Language
pattern Tve = $(bakeLanguage Nothing "tve")

-- | Tugunese.
pattern Tvg :: Language
pattern Tvg = $(bakeLanguage Nothing "tvg")

-- | Tulai.
pattern Tvi :: Language
pattern Tvi = $(bakeLanguage Nothing "tvi")

-- | Southeast Ambrym.
pattern Tvk :: Language
pattern Tvk = $(bakeLanguage Nothing "tvk")

-- | Tuvalu.
pattern Tvl :: Language
pattern Tvl = $(bakeLanguage Nothing "tvl")

-- | Tela-Masbuar.
pattern Tvm :: Language
pattern Tvm = $(bakeLanguage Nothing "tvm")

-- | Tavoyan.
pattern Tvn :: Language
pattern Tvn = $(bakeLanguage Nothing "tvn")

-- | Tidore.
pattern Tvo :: Language
pattern Tvo = $(bakeLanguage Nothing "tvo")

-- | Taveta.
pattern Tvs :: Language
pattern Tvs = $(bakeLanguage Nothing "tvs")

-- | Tutsa Naga.
pattern Tvt :: Language
pattern Tvt = $(bakeLanguage Nothing "tvt")

-- | Tunen.
pattern Tvu :: Language
pattern Tvu = $(bakeLanguage Nothing "tvu")

-- | Sedoa.
pattern Tvw :: Language
pattern Tvw = $(bakeLanguage Nothing "tvw")

-- | Taivoan.
pattern Tvx :: Language
pattern Tvx = $(bakeLanguage Nothing "tvx")

-- | Timor Pidgin.
pattern Tvy :: Language
pattern Tvy = $(bakeLanguage Nothing "tvy")

-- | Twana.
pattern Twa :: Language
pattern Twa = $(bakeLanguage Nothing "twa")

-- | Western Tawbuid.
pattern Twb :: Language
pattern Twb = $(bakeLanguage Nothing "twb")

-- | Teshenawa.
pattern Twc :: Language
pattern Twc = $(bakeLanguage Nothing "twc")

-- | Twents.
pattern Twd :: Language
pattern Twd = $(bakeLanguage Nothing "twd")

-- | Tewa (Indonesia).
pattern Twe :: Language
pattern Twe = $(bakeLanguage Nothing "twe")

-- | Northern Tiwa.
pattern Twf :: Language
pattern Twf = $(bakeLanguage Nothing "twf")

-- | Tereweng.
pattern Twg :: Language
pattern Twg = $(bakeLanguage Nothing "twg")

-- | Tai Dón.
pattern Twh :: Language
pattern Twh = $(bakeLanguage Nothing "twh")

-- | Tawara.
pattern Twl :: Language
pattern Twl = $(bakeLanguage Nothing "twl")

-- | Tawang Monpa.
pattern Twm :: Language
pattern Twm = $(bakeLanguage Nothing "twm")

-- | Twendi.
pattern Twn :: Language
pattern Twn = $(bakeLanguage Nothing "twn")

-- | Tswapong.
pattern Two :: Language
pattern Two = $(bakeLanguage Nothing "two")

-- | Ere.
pattern Twp :: Language
pattern Twp = $(bakeLanguage Nothing "twp")

-- | Tasawaq.
pattern Twq :: Language
pattern Twq = $(bakeLanguage Nothing "twq")

-- | Southwestern Tarahumara.
pattern Twr :: Language
pattern Twr = $(bakeLanguage Nothing "twr")

-- | Turiwára.
pattern Twt :: Language
pattern Twt = $(bakeLanguage Nothing "twt")

-- | Termanu.
pattern Twu :: Language
pattern Twu = $(bakeLanguage Nothing "twu")

-- | Tuwari.
pattern Tww :: Language
pattern Tww = $(bakeLanguage Nothing "tww")

-- | Tewe.
pattern Twx :: Language
pattern Twx = $(bakeLanguage Nothing "twx")

-- | Tawoyan.
pattern Twy :: Language
pattern Twy = $(bakeLanguage Nothing "twy")

-- | Tombonuo.
pattern Txa :: Language
pattern Txa = $(bakeLanguage Nothing "txa")

-- | Tokharian B.
pattern Txb :: Language
pattern Txb = $(bakeLanguage Nothing "txb")

-- | Tsetsaut.
pattern Txc :: Language
pattern Txc = $(bakeLanguage Nothing "txc")

-- | Totoli.
pattern Txe :: Language
pattern Txe = $(bakeLanguage Nothing "txe")

-- | Tangut.
pattern Txg :: Language
pattern Txg = $(bakeLanguage Nothing "txg")

-- | Thracian.
pattern Txh :: Language
pattern Txh = $(bakeLanguage Nothing "txh")

-- | Ikpeng.
pattern Txi :: Language
pattern Txi = $(bakeLanguage Nothing "txi")

-- | Tarjumo.
pattern Txj :: Language
pattern Txj = $(bakeLanguage Nothing "txj")

-- | Tomini.
pattern Txm :: Language
pattern Txm = $(bakeLanguage Nothing "txm")

-- | West Tarangan.
pattern Txn :: Language
pattern Txn = $(bakeLanguage Nothing "txn")

-- | Toto.
pattern Txo :: Language
pattern Txo = $(bakeLanguage Nothing "txo")

-- | Tii.
pattern Txq :: Language
pattern Txq = $(bakeLanguage Nothing "txq")

-- | Tartessian.
pattern Txr :: Language
pattern Txr = $(bakeLanguage Nothing "txr")

-- | Tonsea.
pattern Txs :: Language
pattern Txs = $(bakeLanguage Nothing "txs")

-- | Citak.
pattern Txt :: Language
pattern Txt = $(bakeLanguage Nothing "txt")

-- | Kayapó.
pattern Txu :: Language
pattern Txu = $(bakeLanguage Nothing "txu")

-- | Tatana.
pattern Txx :: Language
pattern Txx = $(bakeLanguage Nothing "txx")

-- | Tanosy Malagasy.
pattern Txy :: Language
pattern Txy = $(bakeLanguage Nothing "txy")

-- | Tauya.
pattern Tya :: Language
pattern Tya = $(bakeLanguage Nothing "tya")

-- | Kyanga.
pattern Tye :: Language
pattern Tye = $(bakeLanguage Nothing "tye")

-- | O'du.
pattern Tyh :: Language
pattern Tyh = $(bakeLanguage Nothing "tyh")

-- | Teke-Tsaayi.
pattern Tyi :: Language
pattern Tyi = $(bakeLanguage Nothing "tyi")

-- | Tai Do.
pattern Tyj :: Language
pattern Tyj = $(bakeLanguage Nothing "tyj")

-- | Thu Lao.
pattern Tyl :: Language
pattern Tyl = $(bakeLanguage Nothing "tyl")

-- | Kombai.
pattern Tyn :: Language
pattern Tyn = $(bakeLanguage Nothing "tyn")

-- | Thaypan.
pattern Typ :: Language
pattern Typ = $(bakeLanguage Nothing "typ")

-- | Tai Daeng.
pattern Tyr :: Language
pattern Tyr = $(bakeLanguage Nothing "tyr")

-- | Tày Sa Pa.
pattern Tys :: Language
pattern Tys = $(bakeLanguage Nothing "tys")

-- | Tày Tac.
pattern Tyt :: Language
pattern Tyt = $(bakeLanguage Nothing "tyt")

-- | Kua.
pattern Tyu :: Language
pattern Tyu = $(bakeLanguage Nothing "tyu")

-- | Tuvinian.
pattern Tyv :: Language
pattern Tyv = $(bakeLanguage Nothing "tyv")

-- | Teke-Tyee.
pattern Tyx :: Language
pattern Tyx = $(bakeLanguage Nothing "tyx")

-- | Tiyaa.
pattern Tyy :: Language
pattern Tyy = $(bakeLanguage Nothing "tyy")

-- | Tày.
pattern Tyz :: Language
pattern Tyz = $(bakeLanguage Nothing "tyz")

-- | Tanzanian Sign Language.
pattern Tza :: Language
pattern Tza = $(bakeLanguage Nothing "tza")

-- | Tzeltal.
pattern Tzh :: Language
pattern Tzh = $(bakeLanguage Nothing "tzh")

-- | Tz'utujil.
pattern Tzj :: Language
pattern Tzj = $(bakeLanguage Nothing "tzj")

-- | Talossan.
pattern Tzl :: Language
pattern Tzl = $(bakeLanguage Nothing "tzl")

-- | Central Atlas Tamazight.
pattern Tzm :: Language
pattern Tzm = $(bakeLanguage Nothing "tzm")

-- | Tugun.
pattern Tzn :: Language
pattern Tzn = $(bakeLanguage Nothing "tzn")

-- | Tzotzil.
pattern Tzo :: Language
pattern Tzo = $(bakeLanguage Nothing "tzo")

-- | Tabriak.
pattern Tzx :: Language
pattern Tzx = $(bakeLanguage Nothing "tzx")

-- | Uamué.
pattern Uam :: Language
pattern Uam = $(bakeLanguage Nothing "uam")

-- | Kuan.
pattern Uan :: Language
pattern Uan = $(bakeLanguage Nothing "uan")

-- | Tairuma.
pattern Uar :: Language
pattern Uar = $(bakeLanguage Nothing "uar")

-- | Ubang.
pattern Uba :: Language
pattern Uba = $(bakeLanguage Nothing "uba")

-- | Ubi.
pattern Ubi :: Language
pattern Ubi = $(bakeLanguage Nothing "ubi")

-- | Buhi'non Bikol.
pattern Ubl :: Language
pattern Ubl = $(bakeLanguage Nothing "ubl")

-- | Ubir.
pattern Ubr :: Language
pattern Ubr = $(bakeLanguage Nothing "ubr")

-- | Umbu-Ungu.
pattern Ubu :: Language
pattern Ubu = $(bakeLanguage Nothing "ubu")

-- | Ubykh.
pattern Uby :: Language
pattern Uby = $(bakeLanguage Nothing "uby")

-- | Uda.
pattern Uda :: Language
pattern Uda = $(bakeLanguage Nothing "uda")

-- | Udihe.
pattern Ude :: Language
pattern Ude = $(bakeLanguage Nothing "ude")

-- | Muduga.
pattern Udg :: Language
pattern Udg = $(bakeLanguage Nothing "udg")

-- | Udi.
pattern Udi :: Language
pattern Udi = $(bakeLanguage Nothing "udi")

-- | Ujir.
pattern Udj :: Language
pattern Udj = $(bakeLanguage Nothing "udj")

-- | Wuzlam.
pattern Udl :: Language
pattern Udl = $(bakeLanguage Nothing "udl")

-- | Udmurt.
pattern Udm :: Language
pattern Udm = $(bakeLanguage Nothing "udm")

-- | Uduk.
pattern Udu :: Language
pattern Udu = $(bakeLanguage Nothing "udu")

-- | Kioko.
pattern Ues :: Language
pattern Ues = $(bakeLanguage Nothing "ues")

-- | Ufim.
pattern Ufi :: Language
pattern Ufi = $(bakeLanguage Nothing "ufi")

-- | Ugaritic.
pattern Uga :: Language
pattern Uga = $(bakeLanguage Nothing "uga")

-- | Kuku-Ugbanh.
pattern Ugb :: Language
pattern Ugb = $(bakeLanguage Nothing "ugb")

-- | Ughele.
pattern Uge :: Language
pattern Uge = $(bakeLanguage Nothing "uge")

-- | Kubachi.
pattern Ugh :: Language
pattern Ugh = $(bakeLanguage Nothing "ugh")

-- | Ugandan Sign Language.
pattern Ugn :: Language
pattern Ugn = $(bakeLanguage Nothing "ugn")

-- | Ugong.
pattern Ugo :: Language
pattern Ugo = $(bakeLanguage Nothing "ugo")

-- | Uruguayan Sign Language.
pattern Ugy :: Language
pattern Ugy = $(bakeLanguage Nothing "ugy")

-- | Uhami.
pattern Uha :: Language
pattern Uha = $(bakeLanguage Nothing "uha")

-- | Damal.
pattern Uhn :: Language
pattern Uhn = $(bakeLanguage Nothing "uhn")

-- | Uisai.
pattern Uis :: Language
pattern Uis = $(bakeLanguage Nothing "uis")

-- | Iyive.
pattern Uiv :: Language
pattern Uiv = $(bakeLanguage Nothing "uiv")

-- | Tanjijili.
pattern Uji :: Language
pattern Uji = $(bakeLanguage Nothing "uji")

-- | Kaburi.
pattern Uka :: Language
pattern Uka = $(bakeLanguage Nothing "uka")

-- | Ukuriguma.
pattern Ukg :: Language
pattern Ukg = $(bakeLanguage Nothing "ukg")

-- | Ukhwejo.
pattern Ukh :: Language
pattern Ukh = $(bakeLanguage Nothing "ukh")

-- | Kui (India).
pattern Uki :: Language
pattern Uki = $(bakeLanguage Nothing "uki")

-- | Muak Sa-aak.
pattern Ukk :: Language
pattern Ukk = $(bakeLanguage Nothing "ukk")

-- | Ukrainian Sign Language.
pattern Ukl :: Language
pattern Ukl = $(bakeLanguage Nothing "ukl")

-- | Ukpe-Bayobiri.
pattern Ukp :: Language
pattern Ukp = $(bakeLanguage Nothing "ukp")

-- | Ukwa.
pattern Ukq :: Language
pattern Ukq = $(bakeLanguage Nothing "ukq")

-- | Urubú-Kaapor Sign Language.
pattern Uks :: Language
pattern Uks = $(bakeLanguage Nothing "uks")

-- | Ukue.
pattern Uku :: Language
pattern Uku = $(bakeLanguage Nothing "uku")

-- | Kuku.
pattern Ukv :: Language
pattern Ukv = $(bakeLanguage Nothing "ukv")

-- | Ukwuani-Aboh-Ndoni.
pattern Ukw :: Language
pattern Ukw = $(bakeLanguage Nothing "ukw")

-- | Kuuk-Yak.
pattern Uky :: Language
pattern Uky = $(bakeLanguage Nothing "uky")

-- | Fungwa.
pattern Ula :: Language
pattern Ula = $(bakeLanguage Nothing "ula")

-- | Ulukwumi.
pattern Ulb :: Language
pattern Ulb = $(bakeLanguage Nothing "ulb")

-- | Ulch.
pattern Ulc :: Language
pattern Ulc = $(bakeLanguage Nothing "ulc")

-- | Lule.
pattern Ule :: Language
pattern Ule = $(bakeLanguage Nothing "ule")

-- | Usku.
pattern Ulf :: Language
pattern Ulf = $(bakeLanguage Nothing "ulf")

-- | Ulithian.
pattern Uli :: Language
pattern Uli = $(bakeLanguage Nothing "uli")

-- | Meriam Mir.
pattern Ulk :: Language
pattern Ulk = $(bakeLanguage Nothing "ulk")

-- | Ullatan.
pattern Ull :: Language
pattern Ull = $(bakeLanguage Nothing "ull")

-- | Ulumanda'.
pattern Ulm :: Language
pattern Ulm = $(bakeLanguage Nothing "ulm")

-- | Unserdeutsch.
pattern Uln :: Language
pattern Uln = $(bakeLanguage Nothing "uln")

-- | Uma' Lung.
pattern Ulu :: Language
pattern Ulu = $(bakeLanguage Nothing "ulu")

-- | Ulwa.
pattern Ulw :: Language
pattern Ulw = $(bakeLanguage Nothing "ulw")

-- | Buli.
pattern Uly :: Language
pattern Uly = $(bakeLanguage Nothing "uly")

-- | Umatilla.
pattern Uma :: Language
pattern Uma = $(bakeLanguage Nothing "uma")

-- | Umbundu.
pattern Umb :: Language
pattern Umb = $(bakeLanguage Nothing "umb")

-- | Marrucinian.
pattern Umc :: Language
pattern Umc = $(bakeLanguage Nothing "umc")

-- | Umbindhamu.
pattern Umd :: Language
pattern Umd = $(bakeLanguage Nothing "umd")

-- | Morrobalama.
pattern Umg :: Language
pattern Umg = $(bakeLanguage Nothing "umg")

-- | Ukit.
pattern Umi :: Language
pattern Umi = $(bakeLanguage Nothing "umi")

-- | Umon.
pattern Umm :: Language
pattern Umm = $(bakeLanguage Nothing "umm")

-- | Makyan Naga.
pattern Umn :: Language
pattern Umn = $(bakeLanguage Nothing "umn")

-- | Umotína.
pattern Umo :: Language
pattern Umo = $(bakeLanguage Nothing "umo")

-- | Umpila.
pattern Ump :: Language
pattern Ump = $(bakeLanguage Nothing "ump")

-- | Umbugarla.
pattern Umr :: Language
pattern Umr = $(bakeLanguage Nothing "umr")

-- | Pendau.
pattern Ums :: Language
pattern Ums = $(bakeLanguage Nothing "ums")

-- | Munsee.
pattern Umu :: Language
pattern Umu = $(bakeLanguage Nothing "umu")

-- | North Watut.
pattern Una :: Language
pattern Una = $(bakeLanguage Nothing "una")

-- | Undetermined.
pattern Und :: Language
pattern Und = $(bakeLanguage Nothing "und")

-- | Uneme.
pattern Une :: Language
pattern Une = $(bakeLanguage Nothing "une")

-- | Ngarinyin.
pattern Ung :: Language
pattern Ung = $(bakeLanguage Nothing "ung")

-- | Uni.
pattern Uni :: Language
pattern Uni = $(bakeLanguage Nothing "uni")

-- | Enawené-Nawé.
pattern Unk :: Language
pattern Unk = $(bakeLanguage Nothing "unk")

-- | Unami.
pattern Unm :: Language
pattern Unm = $(bakeLanguage Nothing "unm")

-- | Kurnai.
pattern Unn :: Language
pattern Unn = $(bakeLanguage Nothing "unn")

-- | Mundari.
pattern Unr :: Language
pattern Unr = $(bakeLanguage Nothing "unr")

-- | Unubahe.
pattern Unu :: Language
pattern Unu = $(bakeLanguage Nothing "unu")

-- | Munda.
pattern Unx :: Language
pattern Unx = $(bakeLanguage Nothing "unx")

-- | Unde Kaili.
pattern Unz :: Language
pattern Unz = $(bakeLanguage Nothing "unz")

-- | Kulon.
pattern Uon :: Language
pattern Uon = $(bakeLanguage Nothing "uon")

-- | Umeda.
pattern Upi :: Language
pattern Upi = $(bakeLanguage Nothing "upi")

-- | Uripiv-Wala-Rano-Atchin.
pattern Upv :: Language
pattern Upv = $(bakeLanguage Nothing "upv")

-- | Urarina.
pattern Ura :: Language
pattern Ura = $(bakeLanguage Nothing "ura")

-- | Urubú-Kaapor.
pattern Urb :: Language
pattern Urb = $(bakeLanguage Nothing "urb")

-- | Urningangg.
pattern Urc :: Language
pattern Urc = $(bakeLanguage Nothing "urc")

-- | Uru.
pattern Ure :: Language
pattern Ure = $(bakeLanguage Nothing "ure")

-- | Uradhi.
pattern Urf :: Language
pattern Urf = $(bakeLanguage Nothing "urf")

-- | Urigina.
pattern Urg :: Language
pattern Urg = $(bakeLanguage Nothing "urg")

-- | Urhobo.
pattern Urh :: Language
pattern Urh = $(bakeLanguage Nothing "urh")

-- | Urim.
pattern Uri :: Language
pattern Uri = $(bakeLanguage Nothing "uri")

-- | Urak Lawoi'.
pattern Urk :: Language
pattern Urk = $(bakeLanguage Nothing "urk")

-- | Urali.
pattern Url :: Language
pattern Url = $(bakeLanguage Nothing "url")

-- | Urapmin.
pattern Urm :: Language
pattern Urm = $(bakeLanguage Nothing "urm")

-- | Uruangnirin.
pattern Urn :: Language
pattern Urn = $(bakeLanguage Nothing "urn")

-- | Ura (Papua New Guinea).
pattern Uro :: Language
pattern Uro = $(bakeLanguage Nothing "uro")

-- | Uru-Pa-In.
pattern Urp :: Language
pattern Urp = $(bakeLanguage Nothing "urp")

-- | Lehalurup.
pattern Urr :: Language
pattern Urr = $(bakeLanguage Nothing "urr")

-- | Urat.
pattern Urt :: Language
pattern Urt = $(bakeLanguage Nothing "urt")

-- | Urumi.
pattern Uru :: Language
pattern Uru = $(bakeLanguage Nothing "uru")

-- | Uruava.
pattern Urv :: Language
pattern Urv = $(bakeLanguage Nothing "urv")

-- | Sop.
pattern Urw :: Language
pattern Urw = $(bakeLanguage Nothing "urw")

-- | Urimo.
pattern Urx :: Language
pattern Urx = $(bakeLanguage Nothing "urx")

-- | Orya.
pattern Ury :: Language
pattern Ury = $(bakeLanguage Nothing "ury")

-- | Uru-Eu-Wau-Wau.
pattern Urz :: Language
pattern Urz = $(bakeLanguage Nothing "urz")

-- | Usarufa.
pattern Usa :: Language
pattern Usa = $(bakeLanguage Nothing "usa")

-- | Ushojo.
pattern Ush :: Language
pattern Ush = $(bakeLanguage Nothing "ush")

-- | Usui.
pattern Usi :: Language
pattern Usi = $(bakeLanguage Nothing "usi")

-- | Usaghade.
pattern Usk :: Language
pattern Usk = $(bakeLanguage Nothing "usk")

-- | Uspanteco.
pattern Usp :: Language
pattern Usp = $(bakeLanguage Nothing "usp")

-- | us-Saare.
pattern Uss :: Language
pattern Uss = $(bakeLanguage Nothing "uss")

-- | Uya.
pattern Usu :: Language
pattern Usu = $(bakeLanguage Nothing "usu")

-- | Otank.
pattern Uta :: Language
pattern Uta = $(bakeLanguage Nothing "uta")

-- | Ute-Southern Paiute.
pattern Ute :: Language
pattern Ute = $(bakeLanguage Nothing "ute")

-- | ut-Hun.
pattern Uth :: Language
pattern Uth = $(bakeLanguage Nothing "uth")

-- | Amba (Solomon Islands).
pattern Utp :: Language
pattern Utp = $(bakeLanguage Nothing "utp")

-- | Etulo.
pattern Utr :: Language
pattern Utr = $(bakeLanguage Nothing "utr")

-- | Utu.
pattern Utu :: Language
pattern Utu = $(bakeLanguage Nothing "utu")

-- | Urum.
pattern Uum :: Language
pattern Uum = $(bakeLanguage Nothing "uum")

-- | Ura (Vanuatu).
pattern Uur :: Language
pattern Uur = $(bakeLanguage Nothing "uur")

-- | U.
pattern Uuu :: Language
pattern Uuu = $(bakeLanguage Nothing "uuu")

-- | West Uvean.
pattern Uve :: Language
pattern Uve = $(bakeLanguage Nothing "uve")

-- | Uri.
pattern Uvh :: Language
pattern Uvh = $(bakeLanguage Nothing "uvh")

-- | Lote.
pattern Uvl :: Language
pattern Uvl = $(bakeLanguage Nothing "uvl")

-- | Kuku-Uwanh.
pattern Uwa :: Language
pattern Uwa = $(bakeLanguage Nothing "uwa")

-- | Doko-Uyanga.
pattern Uya :: Language
pattern Uya = $(bakeLanguage Nothing "uya")

-- | Northern Uzbek.
pattern Uzn :: Language
pattern Uzn = $(bakeLanguage Nothing "uzn")

-- | Southern Uzbek.
pattern Uzs :: Language
pattern Uzs = $(bakeLanguage Nothing "uzs")

-- | Vaagri Booli.
pattern Vaa :: Language
pattern Vaa = $(bakeLanguage Nothing "vaa")

-- | Vale.
pattern Vae :: Language
pattern Vae = $(bakeLanguage Nothing "vae")

-- | Vafsi.
pattern Vaf :: Language
pattern Vaf = $(bakeLanguage Nothing "vaf")

-- | Vagla.
pattern Vag :: Language
pattern Vag = $(bakeLanguage Nothing "vag")

-- | Varhadi-Nagpuri.
pattern Vah :: Language
pattern Vah = $(bakeLanguage Nothing "vah")

-- | Vai.
pattern Vai :: Language
pattern Vai = $(bakeLanguage Nothing "vai")

-- | Sekele.
pattern Vaj :: Language
pattern Vaj = $(bakeLanguage Nothing "vaj")

-- | Vehes.
pattern Val :: Language
pattern Val = $(bakeLanguage Nothing "val")

-- | Vanimo.
pattern Vam :: Language
pattern Vam = $(bakeLanguage Nothing "vam")

-- | Valman.
pattern Van :: Language
pattern Van = $(bakeLanguage Nothing "van")

-- | Vao.
pattern Vao :: Language
pattern Vao = $(bakeLanguage Nothing "vao")

-- | Vaiphei.
pattern Vap :: Language
pattern Vap = $(bakeLanguage Nothing "vap")

-- | Huarijio.
pattern Var :: Language
pattern Var = $(bakeLanguage Nothing "var")

-- | Vasavi.
pattern Vas :: Language
pattern Vas = $(bakeLanguage Nothing "vas")

-- | Vanuma.
pattern Vau :: Language
pattern Vau = $(bakeLanguage Nothing "vau")

-- | Varli.
pattern Vav :: Language
pattern Vav = $(bakeLanguage Nothing "vav")

-- | Wayu.
pattern Vay :: Language
pattern Vay = $(bakeLanguage Nothing "vay")

-- | Southeast Babar.
pattern Vbb :: Language
pattern Vbb = $(bakeLanguage Nothing "vbb")

-- | Southwestern Bontok.
pattern Vbk :: Language
pattern Vbk = $(bakeLanguage Nothing "vbk")

-- | Venetian.
pattern Vec :: Language
pattern Vec = $(bakeLanguage Nothing "vec")

-- | Veddah.
pattern Ved :: Language
pattern Ved = $(bakeLanguage Nothing "ved")

-- | Veluws.
pattern Vel :: Language
pattern Vel = $(bakeLanguage Nothing "vel")

-- | Vemgo-Mabas.
pattern Vem :: Language
pattern Vem = $(bakeLanguage Nothing "vem")

-- | Ventureño.
pattern Veo :: Language
pattern Veo = $(bakeLanguage Nothing "veo")

-- | Veps.
pattern Vep :: Language
pattern Vep = $(bakeLanguage Nothing "vep")

-- | Mom Jango.
pattern Ver :: Language
pattern Ver = $(bakeLanguage Nothing "ver")

-- | Vaghri.
pattern Vgr :: Language
pattern Vgr = $(bakeLanguage Nothing "vgr")

-- | Vlaamse Gebarentaal.
pattern Vgt :: Language
pattern Vgt = $(bakeLanguage Nothing "vgt")

-- | Virgin Islands Creole English.
pattern Vic :: Language
pattern Vic = $(bakeLanguage Nothing "vic")

-- | Vidunda.
pattern Vid :: Language
pattern Vid = $(bakeLanguage Nothing "vid")

-- | Vili.
pattern Vif :: Language
pattern Vif = $(bakeLanguage Nothing "vif")

-- | Viemo.
pattern Vig :: Language
pattern Vig = $(bakeLanguage Nothing "vig")

-- | Vilela.
pattern Vil :: Language
pattern Vil = $(bakeLanguage Nothing "vil")

-- | Vinza.
pattern Vin :: Language
pattern Vin = $(bakeLanguage Nothing "vin")

-- | Vishavan.
pattern Vis :: Language
pattern Vis = $(bakeLanguage Nothing "vis")

-- | Viti.
pattern Vit :: Language
pattern Vit = $(bakeLanguage Nothing "vit")

-- | Iduna.
pattern Viv :: Language
pattern Viv = $(bakeLanguage Nothing "viv")

-- | Bajjika.
pattern Vjk :: Language
pattern Vjk = $(bakeLanguage Nothing "vjk")

-- | Kariyarra.
pattern Vka :: Language
pattern Vka = $(bakeLanguage Nothing "vka")

-- | Kujarge.
pattern Vkj :: Language
pattern Vkj = $(bakeLanguage Nothing "vkj")

-- | Kaur.
pattern Vkk :: Language
pattern Vkk = $(bakeLanguage Nothing "vkk")

-- | Kulisusu.
pattern Vkl :: Language
pattern Vkl = $(bakeLanguage Nothing "vkl")

-- | Kamakan.
pattern Vkm :: Language
pattern Vkm = $(bakeLanguage Nothing "vkm")

-- | Koro Nulu.
pattern Vkn :: Language
pattern Vkn = $(bakeLanguage Nothing "vkn")

-- | Kodeoha.
pattern Vko :: Language
pattern Vko = $(bakeLanguage Nothing "vko")

-- | Korlai Creole Portuguese.
pattern Vkp :: Language
pattern Vkp = $(bakeLanguage Nothing "vkp")

-- | Tenggarong Kutai Malay.
pattern Vkt :: Language
pattern Vkt = $(bakeLanguage Nothing "vkt")

-- | Kurrama.
pattern Vku :: Language
pattern Vku = $(bakeLanguage Nothing "vku")

-- | Koro Zuba.
pattern Vkz :: Language
pattern Vkz = $(bakeLanguage Nothing "vkz")

-- | Valpei.
pattern Vlp :: Language
pattern Vlp = $(bakeLanguage Nothing "vlp")

-- | Vlaams.
pattern Vls :: Language
pattern Vls = $(bakeLanguage Nothing "vls")

-- | Martuyhunira.
pattern Vma :: Language
pattern Vma = $(bakeLanguage Nothing "vma")

-- | Barbaram.
pattern Vmb :: Language
pattern Vmb = $(bakeLanguage Nothing "vmb")

-- | Juxtlahuaca Mixtec.
pattern Vmc :: Language
pattern Vmc = $(bakeLanguage Nothing "vmc")

-- | Mudu Koraga.
pattern Vmd :: Language
pattern Vmd = $(bakeLanguage Nothing "vmd")

-- | East Masela.
pattern Vme :: Language
pattern Vme = $(bakeLanguage Nothing "vme")

-- | Mainfränkisch.
pattern Vmf :: Language
pattern Vmf = $(bakeLanguage Nothing "vmf")

-- | Lungalunga.
pattern Vmg :: Language
pattern Vmg = $(bakeLanguage Nothing "vmg")

-- | Maraghei.
pattern Vmh :: Language
pattern Vmh = $(bakeLanguage Nothing "vmh")

-- | Miwa.
pattern Vmi :: Language
pattern Vmi = $(bakeLanguage Nothing "vmi")

-- | Ixtayutla Mixtec.
pattern Vmj :: Language
pattern Vmj = $(bakeLanguage Nothing "vmj")

-- | Makhuwa-Shirima.
pattern Vmk :: Language
pattern Vmk = $(bakeLanguage Nothing "vmk")

-- | Malgana.
pattern Vml :: Language
pattern Vml = $(bakeLanguage Nothing "vml")

-- | Mitlatongo Mixtec.
pattern Vmm :: Language
pattern Vmm = $(bakeLanguage Nothing "vmm")

-- | Soyaltepec Mazatec.
pattern Vmp :: Language
pattern Vmp = $(bakeLanguage Nothing "vmp")

-- | Soyaltepec Mixtec.
pattern Vmq :: Language
pattern Vmq = $(bakeLanguage Nothing "vmq")

-- | Marenje.
pattern Vmr :: Language
pattern Vmr = $(bakeLanguage Nothing "vmr")

-- | Moksela.
pattern Vms :: Language
pattern Vms = $(bakeLanguage Nothing "vms")

-- | Muluridyi.
pattern Vmu :: Language
pattern Vmu = $(bakeLanguage Nothing "vmu")

-- | Valley Maidu.
pattern Vmv :: Language
pattern Vmv = $(bakeLanguage Nothing "vmv")

-- | Makhuwa.
pattern Vmw :: Language
pattern Vmw = $(bakeLanguage Nothing "vmw")

-- | Tamazola Mixtec.
pattern Vmx :: Language
pattern Vmx = $(bakeLanguage Nothing "vmx")

-- | Ayautla Mazatec.
pattern Vmy :: Language
pattern Vmy = $(bakeLanguage Nothing "vmy")

-- | Mazatlán Mazatec.
pattern Vmz :: Language
pattern Vmz = $(bakeLanguage Nothing "vmz")

-- | Vano.
pattern Vnk :: Language
pattern Vnk = $(bakeLanguage Nothing "vnk")

-- | Vinmavis.
pattern Vnm :: Language
pattern Vnm = $(bakeLanguage Nothing "vnm")

-- | Vunapu.
pattern Vnp :: Language
pattern Vnp = $(bakeLanguage Nothing "vnp")

-- | Voro.
pattern Vor :: Language
pattern Vor = $(bakeLanguage Nothing "vor")

-- | Votic.
pattern Vot :: Language
pattern Vot = $(bakeLanguage Nothing "vot")

-- | Vera'a.
pattern Vra :: Language
pattern Vra = $(bakeLanguage Nothing "vra")

-- | Võro.
pattern Vro :: Language
pattern Vro = $(bakeLanguage Nothing "vro")

-- | Varisi.
pattern Vrs :: Language
pattern Vrs = $(bakeLanguage Nothing "vrs")

-- | Burmbar.
pattern Vrt :: Language
pattern Vrt = $(bakeLanguage Nothing "vrt")

-- | Moldova Sign Language.
pattern Vsi :: Language
pattern Vsi = $(bakeLanguage Nothing "vsi")

-- | Venezuelan Sign Language.
pattern Vsl :: Language
pattern Vsl = $(bakeLanguage Nothing "vsl")

-- | Vedic Sanskrit.
pattern Vsn :: Language
pattern Vsn = $(bakeLanguage Nothing "vsn")

-- | Valencian Sign Language.
pattern Vsv :: Language
pattern Vsv = $(bakeLanguage Nothing "vsv")

-- | Vitou.
pattern Vto :: Language
pattern Vto = $(bakeLanguage Nothing "vto")

-- | Vumbu.
pattern Vum :: Language
pattern Vum = $(bakeLanguage Nothing "vum")

-- | Vunjo.
pattern Vun :: Language
pattern Vun = $(bakeLanguage Nothing "vun")

-- | Vute.
pattern Vut :: Language
pattern Vut = $(bakeLanguage Nothing "vut")

-- | Awa (China).
pattern Vwa :: Language
pattern Vwa = $(bakeLanguage Nothing "vwa")

-- | Walla Walla.
pattern Waa :: Language
pattern Waa = $(bakeLanguage Nothing "waa")

-- | Yote.
pattern Wab :: Language
pattern Wab = $(bakeLanguage Nothing "wab")

-- | Wasco-Wishram.
pattern Wac :: Language
pattern Wac = $(bakeLanguage Nothing "wac")

-- | Wamesa.
pattern Wad :: Language
pattern Wad = $(bakeLanguage Nothing "wad")

-- | Walser.
pattern Wae :: Language
pattern Wae = $(bakeLanguage Nothing "wae")

-- | Wakoná.
pattern Waf :: Language
pattern Waf = $(bakeLanguage Nothing "waf")

-- | Wa'ema.
pattern Wag :: Language
pattern Wag = $(bakeLanguage Nothing "wag")

-- | Watubela.
pattern Wah :: Language
pattern Wah = $(bakeLanguage Nothing "wah")

-- | Wares.
pattern Wai :: Language
pattern Wai = $(bakeLanguage Nothing "wai")

-- | Waffa.
pattern Waj :: Language
pattern Waj = $(bakeLanguage Nothing "waj")

-- | Wolaytta.
pattern Wal :: Language
pattern Wal = $(bakeLanguage Nothing "wal")

-- | Wampanoag.
pattern Wam :: Language
pattern Wam = $(bakeLanguage Nothing "wam")

-- | Wan.
pattern Wan :: Language
pattern Wan = $(bakeLanguage Nothing "wan")

-- | Wappo.
pattern Wao :: Language
pattern Wao = $(bakeLanguage Nothing "wao")

-- | Wapishana.
pattern Wap :: Language
pattern Wap = $(bakeLanguage Nothing "wap")

-- | Wagiman.
pattern Waq :: Language
pattern Waq = $(bakeLanguage Nothing "waq")

-- | Waray (Philippines).
pattern War :: Language
pattern War = $(bakeLanguage Nothing "war")

-- | Washo.
pattern Was :: Language
pattern Was = $(bakeLanguage Nothing "was")

-- | Kaninuwa.
pattern Wat :: Language
pattern Wat = $(bakeLanguage Nothing "wat")

-- | Waurá.
pattern Wau :: Language
pattern Wau = $(bakeLanguage Nothing "wau")

-- | Waka.
pattern Wav :: Language
pattern Wav = $(bakeLanguage Nothing "wav")

-- | Waiwai.
pattern Waw :: Language
pattern Waw = $(bakeLanguage Nothing "waw")

-- | Watam.
pattern Wax :: Language
pattern Wax = $(bakeLanguage Nothing "wax")

-- | Wayana.
pattern Way :: Language
pattern Way = $(bakeLanguage Nothing "way")

-- | Wampur.
pattern Waz :: Language
pattern Waz = $(bakeLanguage Nothing "waz")

-- | Warao.
pattern Wba :: Language
pattern Wba = $(bakeLanguage Nothing "wba")

-- | Wabo.
pattern Wbb :: Language
pattern Wbb = $(bakeLanguage Nothing "wbb")

-- | Waritai.
pattern Wbe :: Language
pattern Wbe = $(bakeLanguage Nothing "wbe")

-- | Wara.
pattern Wbf :: Language
pattern Wbf = $(bakeLanguage Nothing "wbf")

-- | Wanda.
pattern Wbh :: Language
pattern Wbh = $(bakeLanguage Nothing "wbh")

-- | Vwanji.
pattern Wbi :: Language
pattern Wbi = $(bakeLanguage Nothing "wbi")

-- | Alagwa.
pattern Wbj :: Language
pattern Wbj = $(bakeLanguage Nothing "wbj")

-- | Waigali.
pattern Wbk :: Language
pattern Wbk = $(bakeLanguage Nothing "wbk")

-- | Wakhi.
pattern Wbl :: Language
pattern Wbl = $(bakeLanguage Nothing "wbl")

-- | Wa.
pattern Wbm :: Language
pattern Wbm = $(bakeLanguage Nothing "wbm")

-- | Warlpiri.
pattern Wbp :: Language
pattern Wbp = $(bakeLanguage Nothing "wbp")

-- | Waddar.
pattern Wbq :: Language
pattern Wbq = $(bakeLanguage Nothing "wbq")

-- | Wagdi.
pattern Wbr :: Language
pattern Wbr = $(bakeLanguage Nothing "wbr")

-- | West Bengal Sign Language.
pattern Wbs :: Language
pattern Wbs = $(bakeLanguage Nothing "wbs")

-- | Warnman.
pattern Wbt :: Language
pattern Wbt = $(bakeLanguage Nothing "wbt")

-- | Wajarri.
pattern Wbv :: Language
pattern Wbv = $(bakeLanguage Nothing "wbv")

-- | Woi.
pattern Wbw :: Language
pattern Wbw = $(bakeLanguage Nothing "wbw")

-- | Yanomámi.
pattern Wca :: Language
pattern Wca = $(bakeLanguage Nothing "wca")

-- | Waci Gbe.
pattern Wci :: Language
pattern Wci = $(bakeLanguage Nothing "wci")

-- | Wandji.
pattern Wdd :: Language
pattern Wdd = $(bakeLanguage Nothing "wdd")

-- | Wadaginam.
pattern Wdg :: Language
pattern Wdg = $(bakeLanguage Nothing "wdg")

-- | Wadjiginy.
pattern Wdj :: Language
pattern Wdj = $(bakeLanguage Nothing "wdj")

-- | Wadikali.
pattern Wdk :: Language
pattern Wdk = $(bakeLanguage Nothing "wdk")

-- | Wendat.
pattern Wdt :: Language
pattern Wdt = $(bakeLanguage Nothing "wdt")

-- | Wadjigu.
pattern Wdu :: Language
pattern Wdu = $(bakeLanguage Nothing "wdu")

-- | Wadjabangayi.
pattern Wdy :: Language
pattern Wdy = $(bakeLanguage Nothing "wdy")

-- | Wewaw.
pattern Wea :: Language
pattern Wea = $(bakeLanguage Nothing "wea")

-- | Wè Western.
pattern Wec :: Language
pattern Wec = $(bakeLanguage Nothing "wec")

-- | Wedau.
pattern Wed :: Language
pattern Wed = $(bakeLanguage Nothing "wed")

-- | Wergaia.
pattern Weg :: Language
pattern Weg = $(bakeLanguage Nothing "weg")

-- | Weh.
pattern Weh :: Language
pattern Weh = $(bakeLanguage Nothing "weh")

-- | Kiunum.
pattern Wei :: Language
pattern Wei = $(bakeLanguage Nothing "wei")

-- | Weme Gbe.
pattern Wem :: Language
pattern Wem = $(bakeLanguage Nothing "wem")

-- | Wemale.
pattern Weo :: Language
pattern Weo = $(bakeLanguage Nothing "weo")

-- | Westphalien.
pattern Wep :: Language
pattern Wep = $(bakeLanguage Nothing "wep")

-- | Weri.
pattern Wer :: Language
pattern Wer = $(bakeLanguage Nothing "wer")

-- | Cameroon Pidgin.
pattern Wes :: Language
pattern Wes = $(bakeLanguage Nothing "wes")

-- | Perai.
pattern Wet :: Language
pattern Wet = $(bakeLanguage Nothing "wet")

-- | Rawngtu Chin.
pattern Weu :: Language
pattern Weu = $(bakeLanguage Nothing "weu")

-- | Wejewa.
pattern Wew :: Language
pattern Wew = $(bakeLanguage Nothing "wew")

-- | Yafi.
pattern Wfg :: Language
pattern Wfg = $(bakeLanguage Nothing "wfg")

-- | Wagaya.
pattern Wga :: Language
pattern Wga = $(bakeLanguage Nothing "wga")

-- | Wagawaga.
pattern Wgb :: Language
pattern Wgb = $(bakeLanguage Nothing "wgb")

-- | Wangkangurru.
pattern Wgg :: Language
pattern Wgg = $(bakeLanguage Nothing "wgg")

-- | Wahgi.
pattern Wgi :: Language
pattern Wgi = $(bakeLanguage Nothing "wgi")

-- | Waigeo.
pattern Wgo :: Language
pattern Wgo = $(bakeLanguage Nothing "wgo")

-- | Wirangu.
pattern Wgu :: Language
pattern Wgu = $(bakeLanguage Nothing "wgu")

-- | Warrgamay.
pattern Wgy :: Language
pattern Wgy = $(bakeLanguage Nothing "wgy")

-- | Sou Upaa.
pattern Wha :: Language
pattern Wha = $(bakeLanguage Nothing "wha")

-- | North Wahgi.
pattern Whg :: Language
pattern Whg = $(bakeLanguage Nothing "whg")

-- | Wahau Kenyah.
pattern Whk :: Language
pattern Whk = $(bakeLanguage Nothing "whk")

-- | Wahau Kayan.
pattern Whu :: Language
pattern Whu = $(bakeLanguage Nothing "whu")

-- | Southern Toussian.
pattern Wib :: Language
pattern Wib = $(bakeLanguage Nothing "wib")

-- | Wichita.
pattern Wic :: Language
pattern Wic = $(bakeLanguage Nothing "wic")

-- | Wik-Epa.
pattern Wie :: Language
pattern Wie = $(bakeLanguage Nothing "wie")

-- | Wik-Keyangan.
pattern Wif :: Language
pattern Wif = $(bakeLanguage Nothing "wif")

-- | Wik Ngathan.
pattern Wig :: Language
pattern Wig = $(bakeLanguage Nothing "wig")

-- | Wik-Me'anha.
pattern Wih :: Language
pattern Wih = $(bakeLanguage Nothing "wih")

-- | Minidien.
pattern Wii :: Language
pattern Wii = $(bakeLanguage Nothing "wii")

-- | Wik-Iiyanh.
pattern Wij :: Language
pattern Wij = $(bakeLanguage Nothing "wij")

-- | Wikalkan.
pattern Wik :: Language
pattern Wik = $(bakeLanguage Nothing "wik")

-- | Wilawila.
pattern Wil :: Language
pattern Wil = $(bakeLanguage Nothing "wil")

-- | Wik-Mungkan.
pattern Wim :: Language
pattern Wim = $(bakeLanguage Nothing "wim")

-- | Ho-Chunk.
pattern Win :: Language
pattern Win = $(bakeLanguage Nothing "win")

-- | Wiraféd.
pattern Wir :: Language
pattern Wir = $(bakeLanguage Nothing "wir")

-- | Wiru.
pattern Wiu :: Language
pattern Wiu = $(bakeLanguage Nothing "wiu")

-- | Vitu.
pattern Wiv :: Language
pattern Wiv = $(bakeLanguage Nothing "wiv")

-- | Wiyot.
pattern Wiy :: Language
pattern Wiy = $(bakeLanguage Nothing "wiy")

-- | Waja.
pattern Wja :: Language
pattern Wja = $(bakeLanguage Nothing "wja")

-- | Warji.
pattern Wji :: Language
pattern Wji = $(bakeLanguage Nothing "wji")

-- | Kw'adza.
pattern Wka :: Language
pattern Wka = $(bakeLanguage Nothing "wka")

-- | Kumbaran.
pattern Wkb :: Language
pattern Wkb = $(bakeLanguage Nothing "wkb")

-- | Wakde.
pattern Wkd :: Language
pattern Wkd = $(bakeLanguage Nothing "wkd")

-- | Kalanadi.
pattern Wkl :: Language
pattern Wkl = $(bakeLanguage Nothing "wkl")

-- | Keerray-Woorroong.
pattern Wkr :: Language
pattern Wkr = $(bakeLanguage Nothing "wkr")

-- | Kunduvadi.
pattern Wku :: Language
pattern Wku = $(bakeLanguage Nothing "wku")

-- | Wakawaka.
pattern Wkw :: Language
pattern Wkw = $(bakeLanguage Nothing "wkw")

-- | Wangkayutyuru.
pattern Wky :: Language
pattern Wky = $(bakeLanguage Nothing "wky")

-- | Walio.
pattern Wla :: Language
pattern Wla = $(bakeLanguage Nothing "wla")

-- | Mwali Comorian.
pattern Wlc :: Language
pattern Wlc = $(bakeLanguage Nothing "wlc")

-- | Wolane.
pattern Wle :: Language
pattern Wle = $(bakeLanguage Nothing "wle")

-- | Kunbarlang.
pattern Wlg :: Language
pattern Wlg = $(bakeLanguage Nothing "wlg")

-- | Welaun.
pattern Wlh :: Language
pattern Wlh = $(bakeLanguage Nothing "wlh")

-- | Waioli.
pattern Wli :: Language
pattern Wli = $(bakeLanguage Nothing "wli")

-- | Wailaki.
pattern Wlk :: Language
pattern Wlk = $(bakeLanguage Nothing "wlk")

-- | Wali (Sudan).
pattern Wll :: Language
pattern Wll = $(bakeLanguage Nothing "wll")

-- | Middle Welsh.
pattern Wlm :: Language
pattern Wlm = $(bakeLanguage Nothing "wlm")

-- | Wolio.
pattern Wlo :: Language
pattern Wlo = $(bakeLanguage Nothing "wlo")

-- | Wailapa.
pattern Wlr :: Language
pattern Wlr = $(bakeLanguage Nothing "wlr")

-- | Wallisian.
pattern Wls :: Language
pattern Wls = $(bakeLanguage Nothing "wls")

-- | Wuliwuli.
pattern Wlu :: Language
pattern Wlu = $(bakeLanguage Nothing "wlu")

-- | Wichí Lhamtés Vejoz.
pattern Wlv :: Language
pattern Wlv = $(bakeLanguage Nothing "wlv")

-- | Walak.
pattern Wlw :: Language
pattern Wlw = $(bakeLanguage Nothing "wlw")

-- | Wali (Ghana).
pattern Wlx :: Language
pattern Wlx = $(bakeLanguage Nothing "wlx")

-- | Waling.
pattern Wly :: Language
pattern Wly = $(bakeLanguage Nothing "wly")

-- | Mawa (Nigeria).
pattern Wma :: Language
pattern Wma = $(bakeLanguage Nothing "wma")

-- | Wambaya.
pattern Wmb :: Language
pattern Wmb = $(bakeLanguage Nothing "wmb")

-- | Wamas.
pattern Wmc :: Language
pattern Wmc = $(bakeLanguage Nothing "wmc")

-- | Mamaindé.
pattern Wmd :: Language
pattern Wmd = $(bakeLanguage Nothing "wmd")

-- | Wambule.
pattern Wme :: Language
pattern Wme = $(bakeLanguage Nothing "wme")

-- | Western Minyag.
pattern Wmg :: Language
pattern Wmg = $(bakeLanguage Nothing "wmg")

-- | Waima'a.
pattern Wmh :: Language
pattern Wmh = $(bakeLanguage Nothing "wmh")

-- | Wamin.
pattern Wmi :: Language
pattern Wmi = $(bakeLanguage Nothing "wmi")

-- | Maiwa (Indonesia).
pattern Wmm :: Language
pattern Wmm = $(bakeLanguage Nothing "wmm")

-- | Waamwang.
pattern Wmn :: Language
pattern Wmn = $(bakeLanguage Nothing "wmn")

-- | Wom (Papua New Guinea).
pattern Wmo :: Language
pattern Wmo = $(bakeLanguage Nothing "wmo")

-- | Wambon.
pattern Wms :: Language
pattern Wms = $(bakeLanguage Nothing "wms")

-- | Walmajarri.
pattern Wmt :: Language
pattern Wmt = $(bakeLanguage Nothing "wmt")

-- | Mwani.
pattern Wmw :: Language
pattern Wmw = $(bakeLanguage Nothing "wmw")

-- | Womo.
pattern Wmx :: Language
pattern Wmx = $(bakeLanguage Nothing "wmx")

-- | Mokati.
pattern Wnb :: Language
pattern Wnb = $(bakeLanguage Nothing "wnb")

-- | Wantoat.
pattern Wnc :: Language
pattern Wnc = $(bakeLanguage Nothing "wnc")

-- | Wandarang.
pattern Wnd :: Language
pattern Wnd = $(bakeLanguage Nothing "wnd")

-- | Waneci.
pattern Wne :: Language
pattern Wne = $(bakeLanguage Nothing "wne")

-- | Wanggom.
pattern Wng :: Language
pattern Wng = $(bakeLanguage Nothing "wng")

-- | Ndzwani Comorian.
pattern Wni :: Language
pattern Wni = $(bakeLanguage Nothing "wni")

-- | Wanukaka.
pattern Wnk :: Language
pattern Wnk = $(bakeLanguage Nothing "wnk")

-- | Wanggamala.
pattern Wnm :: Language
pattern Wnm = $(bakeLanguage Nothing "wnm")

-- | Wunumara.
pattern Wnn :: Language
pattern Wnn = $(bakeLanguage Nothing "wnn")

-- | Wano.
pattern Wno :: Language
pattern Wno = $(bakeLanguage Nothing "wno")

-- | Wanap.
pattern Wnp :: Language
pattern Wnp = $(bakeLanguage Nothing "wnp")

-- | Usan.
pattern Wnu :: Language
pattern Wnu = $(bakeLanguage Nothing "wnu")

-- | Wintu.
pattern Wnw :: Language
pattern Wnw = $(bakeLanguage Nothing "wnw")

-- | Wanyi.
pattern Wny :: Language
pattern Wny = $(bakeLanguage Nothing "wny")

-- | Kuwema.
pattern Woa :: Language
pattern Woa = $(bakeLanguage Nothing "woa")

-- | Wè Northern.
pattern Wob :: Language
pattern Wob = $(bakeLanguage Nothing "wob")

-- | Wogeo.
pattern Woc :: Language
pattern Woc = $(bakeLanguage Nothing "woc")

-- | Wolani.
pattern Wod :: Language
pattern Wod = $(bakeLanguage Nothing "wod")

-- | Woleaian.
pattern Woe :: Language
pattern Woe = $(bakeLanguage Nothing "woe")

-- | Gambian Wolof.
pattern Wof :: Language
pattern Wof = $(bakeLanguage Nothing "wof")

-- | Wogamusin.
pattern Wog :: Language
pattern Wog = $(bakeLanguage Nothing "wog")

-- | Kamang.
pattern Woi :: Language
pattern Woi = $(bakeLanguage Nothing "woi")

-- | Longto.
pattern Wok :: Language
pattern Wok = $(bakeLanguage Nothing "wok")

-- | Wom (Nigeria).
pattern Wom :: Language
pattern Wom = $(bakeLanguage Nothing "wom")

-- | Wongo.
pattern Won :: Language
pattern Won = $(bakeLanguage Nothing "won")

-- | Manombai.
pattern Woo :: Language
pattern Woo = $(bakeLanguage Nothing "woo")

-- | Woria.
pattern Wor :: Language
pattern Wor = $(bakeLanguage Nothing "wor")

-- | Hanga Hundi.
pattern Wos :: Language
pattern Wos = $(bakeLanguage Nothing "wos")

-- | Wawonii.
pattern Wow :: Language
pattern Wow = $(bakeLanguage Nothing "wow")

-- | Weyto.
pattern Woy :: Language
pattern Woy = $(bakeLanguage Nothing "woy")

-- | Maco.
pattern Wpc :: Language
pattern Wpc = $(bakeLanguage Nothing "wpc")

-- | Waluwarra.
pattern Wrb :: Language
pattern Wrb = $(bakeLanguage Nothing "wrb")

-- | Warungu.
pattern Wrg :: Language
pattern Wrg = $(bakeLanguage Nothing "wrg")

-- | Wiradjuri.
pattern Wrh :: Language
pattern Wrh = $(bakeLanguage Nothing "wrh")

-- | Wariyangga.
pattern Wri :: Language
pattern Wri = $(bakeLanguage Nothing "wri")

-- | Garrwa.
pattern Wrk :: Language
pattern Wrk = $(bakeLanguage Nothing "wrk")

-- | Warlmanpa.
pattern Wrl :: Language
pattern Wrl = $(bakeLanguage Nothing "wrl")

-- | Warumungu.
pattern Wrm :: Language
pattern Wrm = $(bakeLanguage Nothing "wrm")

-- | Warnang.
pattern Wrn :: Language
pattern Wrn = $(bakeLanguage Nothing "wrn")

-- | Worrorra.
pattern Wro :: Language
pattern Wro = $(bakeLanguage Nothing "wro")

-- | Waropen.
pattern Wrp :: Language
pattern Wrp = $(bakeLanguage Nothing "wrp")

-- | Wardaman.
pattern Wrr :: Language
pattern Wrr = $(bakeLanguage Nothing "wrr")

-- | Waris.
pattern Wrs :: Language
pattern Wrs = $(bakeLanguage Nothing "wrs")

-- | Waru.
pattern Wru :: Language
pattern Wru = $(bakeLanguage Nothing "wru")

-- | Waruna.
pattern Wrv :: Language
pattern Wrv = $(bakeLanguage Nothing "wrv")

-- | Gugu Warra.
pattern Wrw :: Language
pattern Wrw = $(bakeLanguage Nothing "wrw")

-- | Wae Rana.
pattern Wrx :: Language
pattern Wrx = $(bakeLanguage Nothing "wrx")

-- | Merwari.
pattern Wry :: Language
pattern Wry = $(bakeLanguage Nothing "wry")

-- | Waray (Australia).
pattern Wrz :: Language
pattern Wrz = $(bakeLanguage Nothing "wrz")

-- | Warembori.
pattern Wsa :: Language
pattern Wsa = $(bakeLanguage Nothing "wsa")

-- | Adilabad Gondi.
pattern Wsg :: Language
pattern Wsg = $(bakeLanguage Nothing "wsg")

-- | Wusi.
pattern Wsi :: Language
pattern Wsi = $(bakeLanguage Nothing "wsi")

-- | Waskia.
pattern Wsk :: Language
pattern Wsk = $(bakeLanguage Nothing "wsk")

-- | Owenia.
pattern Wsr :: Language
pattern Wsr = $(bakeLanguage Nothing "wsr")

-- | Wasa.
pattern Wss :: Language
pattern Wss = $(bakeLanguage Nothing "wss")

-- | Wasu.
pattern Wsu :: Language
pattern Wsu = $(bakeLanguage Nothing "wsu")

-- | Wotapuri-Katarqalai.
pattern Wsv :: Language
pattern Wsv = $(bakeLanguage Nothing "wsv")

-- | Matambwe.
pattern Wtb :: Language
pattern Wtb = $(bakeLanguage Nothing "wtb")

-- | Watiwa.
pattern Wtf :: Language
pattern Wtf = $(bakeLanguage Nothing "wtf")

-- | Wathawurrung.
pattern Wth :: Language
pattern Wth = $(bakeLanguage Nothing "wth")

-- | Berta.
pattern Wti :: Language
pattern Wti = $(bakeLanguage Nothing "wti")

-- | Watakataui.
pattern Wtk :: Language
pattern Wtk = $(bakeLanguage Nothing "wtk")

-- | Mewati.
pattern Wtm :: Language
pattern Wtm = $(bakeLanguage Nothing "wtm")

-- | Wotu.
pattern Wtw :: Language
pattern Wtw = $(bakeLanguage Nothing "wtw")

-- | Wikngenchera.
pattern Wua :: Language
pattern Wua = $(bakeLanguage Nothing "wua")

-- | Wunambal.
pattern Wub :: Language
pattern Wub = $(bakeLanguage Nothing "wub")

-- | Wudu.
pattern Wud :: Language
pattern Wud = $(bakeLanguage Nothing "wud")

-- | Wutunhua.
pattern Wuh :: Language
pattern Wuh = $(bakeLanguage Nothing "wuh")

-- | Silimo.
pattern Wul :: Language
pattern Wul = $(bakeLanguage Nothing "wul")

-- | Wumbvu.
pattern Wum :: Language
pattern Wum = $(bakeLanguage Nothing "wum")

-- | Bungu.
pattern Wun :: Language
pattern Wun = $(bakeLanguage Nothing "wun")

-- | Wurrugu.
pattern Wur :: Language
pattern Wur = $(bakeLanguage Nothing "wur")

-- | Wutung.
pattern Wut :: Language
pattern Wut = $(bakeLanguage Nothing "wut")

-- | Wu Chinese.
pattern Wuu :: Language
pattern Wuu = $(bakeLanguage Nothing "wuu")

-- | Wuvulu-Aua.
pattern Wuv :: Language
pattern Wuv = $(bakeLanguage Nothing "wuv")

-- | Wulna.
pattern Wux :: Language
pattern Wux = $(bakeLanguage Nothing "wux")

-- | Wauyai.
pattern Wuy :: Language
pattern Wuy = $(bakeLanguage Nothing "wuy")

-- | Waama.
pattern Wwa :: Language
pattern Wwa = $(bakeLanguage Nothing "wwa")

-- | Wakabunga.
pattern Wwb :: Language
pattern Wwb = $(bakeLanguage Nothing "wwb")

-- | Wetamut.
pattern Wwo :: Language
pattern Wwo = $(bakeLanguage Nothing "wwo")

-- | Warrwa.
pattern Wwr :: Language
pattern Wwr = $(bakeLanguage Nothing "wwr")

-- | Wawa.
pattern Www :: Language
pattern Www = $(bakeLanguage Nothing "www")

-- | Waxianghua.
pattern Wxa :: Language
pattern Wxa = $(bakeLanguage Nothing "wxa")

-- | Wardandi.
pattern Wxw :: Language
pattern Wxw = $(bakeLanguage Nothing "wxw")

-- | Wangaaybuwan-Ngiyambaa.
pattern Wyb :: Language
pattern Wyb = $(bakeLanguage Nothing "wyb")

-- | Woiwurrung.
pattern Wyi :: Language
pattern Wyi = $(bakeLanguage Nothing "wyi")

-- | Wymysorys.
pattern Wym :: Language
pattern Wym = $(bakeLanguage Nothing "wym")

-- | Wyandot.
pattern Wyn :: Language
pattern Wyn = $(bakeLanguage Nothing "wyn")

-- | Wayoró.
pattern Wyr :: Language
pattern Wyr = $(bakeLanguage Nothing "wyr")

-- | Western Fijian.
pattern Wyy :: Language
pattern Wyy = $(bakeLanguage Nothing "wyy")

-- | Andalusian Arabic.
pattern Xaa :: Language
pattern Xaa = $(bakeLanguage Nothing "xaa")

-- | Sambe.
pattern Xab :: Language
pattern Xab = $(bakeLanguage Nothing "xab")

-- | Kachari.
pattern Xac :: Language
pattern Xac = $(bakeLanguage Nothing "xac")

-- | Adai.
pattern Xad :: Language
pattern Xad = $(bakeLanguage Nothing "xad")

-- | Aequian.
pattern Xae :: Language
pattern Xae = $(bakeLanguage Nothing "xae")

-- | Aghwan.
pattern Xag :: Language
pattern Xag = $(bakeLanguage Nothing "xag")

-- | Kaimbé.
pattern Xai :: Language
pattern Xai = $(bakeLanguage Nothing "xai")

-- | Ararandewára.
pattern Xaj :: Language
pattern Xaj = $(bakeLanguage Nothing "xaj")

-- | Máku.
pattern Xak :: Language
pattern Xak = $(bakeLanguage Nothing "xak")

-- | Kalmyk.
pattern Xal :: Language
pattern Xal = $(bakeLanguage Nothing "xal")

-- | ǀXam.
pattern Xam :: Language
pattern Xam = $(bakeLanguage Nothing "xam")

-- | Xamtanga.
pattern Xan :: Language
pattern Xan = $(bakeLanguage Nothing "xan")

-- | Khao.
pattern Xao :: Language
pattern Xao = $(bakeLanguage Nothing "xao")

-- | Apalachee.
pattern Xap :: Language
pattern Xap = $(bakeLanguage Nothing "xap")

-- | Aquitanian.
pattern Xaq :: Language
pattern Xaq = $(bakeLanguage Nothing "xaq")

-- | Karami.
pattern Xar :: Language
pattern Xar = $(bakeLanguage Nothing "xar")

-- | Kamas.
pattern Xas :: Language
pattern Xas = $(bakeLanguage Nothing "xas")

-- | Katawixi.
pattern Xat :: Language
pattern Xat = $(bakeLanguage Nothing "xat")

-- | Kauwera.
pattern Xau :: Language
pattern Xau = $(bakeLanguage Nothing "xau")

-- | Xavánte.
pattern Xav :: Language
pattern Xav = $(bakeLanguage Nothing "xav")

-- | Kawaiisu.
pattern Xaw :: Language
pattern Xaw = $(bakeLanguage Nothing "xaw")

-- | Kayan Mahakam.
pattern Xay :: Language
pattern Xay = $(bakeLanguage Nothing "xay")

-- | Lower Burdekin.
pattern Xbb :: Language
pattern Xbb = $(bakeLanguage Nothing "xbb")

-- | Bactrian.
pattern Xbc :: Language
pattern Xbc = $(bakeLanguage Nothing "xbc")

-- | Bindal.
pattern Xbd :: Language
pattern Xbd = $(bakeLanguage Nothing "xbd")

-- | Bigambal.
pattern Xbe :: Language
pattern Xbe = $(bakeLanguage Nothing "xbe")

-- | Bunganditj.
pattern Xbg :: Language
pattern Xbg = $(bakeLanguage Nothing "xbg")

-- | Kombio.
pattern Xbi :: Language
pattern Xbi = $(bakeLanguage Nothing "xbi")

-- | Birrpayi.
pattern Xbj :: Language
pattern Xbj = $(bakeLanguage Nothing "xbj")

-- | Middle Breton.
pattern Xbm :: Language
pattern Xbm = $(bakeLanguage Nothing "xbm")

-- | Kenaboi.
pattern Xbn :: Language
pattern Xbn = $(bakeLanguage Nothing "xbn")

-- | Bolgarian.
pattern Xbo :: Language
pattern Xbo = $(bakeLanguage Nothing "xbo")

-- | Bibbulman.
pattern Xbp :: Language
pattern Xbp = $(bakeLanguage Nothing "xbp")

-- | Kambera.
pattern Xbr :: Language
pattern Xbr = $(bakeLanguage Nothing "xbr")

-- | Kambiwá.
pattern Xbw :: Language
pattern Xbw = $(bakeLanguage Nothing "xbw")

-- | Batjala.
pattern Xby :: Language
pattern Xby = $(bakeLanguage Nothing "xby")

-- | Cumbric.
pattern Xcb :: Language
pattern Xcb = $(bakeLanguage Nothing "xcb")

-- | Camunic.
pattern Xcc :: Language
pattern Xcc = $(bakeLanguage Nothing "xcc")

-- | Celtiberian.
pattern Xce :: Language
pattern Xce = $(bakeLanguage Nothing "xce")

-- | Cisalpine Gaulish.
pattern Xcg :: Language
pattern Xcg = $(bakeLanguage Nothing "xcg")

-- | Chemakum.
pattern Xch :: Language
pattern Xch = $(bakeLanguage Nothing "xch")

-- | Classical Armenian.
pattern Xcl :: Language
pattern Xcl = $(bakeLanguage Nothing "xcl")

-- | Comecrudo.
pattern Xcm :: Language
pattern Xcm = $(bakeLanguage Nothing "xcm")

-- | Cotoname.
pattern Xcn :: Language
pattern Xcn = $(bakeLanguage Nothing "xcn")

-- | Chorasmian.
pattern Xco :: Language
pattern Xco = $(bakeLanguage Nothing "xco")

-- | Carian.
pattern Xcr :: Language
pattern Xcr = $(bakeLanguage Nothing "xcr")

-- | Classical Tibetan.
pattern Xct :: Language
pattern Xct = $(bakeLanguage Nothing "xct")

-- | Curonian.
pattern Xcu :: Language
pattern Xcu = $(bakeLanguage Nothing "xcu")

-- | Chuvantsy.
pattern Xcv :: Language
pattern Xcv = $(bakeLanguage Nothing "xcv")

-- | Coahuilteco.
pattern Xcw :: Language
pattern Xcw = $(bakeLanguage Nothing "xcw")

-- | Cayuse.
pattern Xcy :: Language
pattern Xcy = $(bakeLanguage Nothing "xcy")

-- | Darkinyung.
pattern Xda :: Language
pattern Xda = $(bakeLanguage Nothing "xda")

-- | Dacian.
pattern Xdc :: Language
pattern Xdc = $(bakeLanguage Nothing "xdc")

-- | Dharuk.
pattern Xdk :: Language
pattern Xdk = $(bakeLanguage Nothing "xdk")

-- | Edomite.
pattern Xdm :: Language
pattern Xdm = $(bakeLanguage Nothing "xdm")

-- | Kwandu.
pattern Xdo :: Language
pattern Xdo = $(bakeLanguage Nothing "xdo")

-- | Kaitag.
pattern Xdq :: Language
pattern Xdq = $(bakeLanguage Nothing "xdq")

-- | Malayic Dayak.
pattern Xdy :: Language
pattern Xdy = $(bakeLanguage Nothing "xdy")

-- | Eblan.
pattern Xeb :: Language
pattern Xeb = $(bakeLanguage Nothing "xeb")

-- | Hdi.
pattern Xed :: Language
pattern Xed = $(bakeLanguage Nothing "xed")

-- | ǁXegwi.
pattern Xeg :: Language
pattern Xeg = $(bakeLanguage Nothing "xeg")

-- | Kelo.
pattern Xel :: Language
pattern Xel = $(bakeLanguage Nothing "xel")

-- | Kembayan.
pattern Xem :: Language
pattern Xem = $(bakeLanguage Nothing "xem")

-- | Epi-Olmec.
pattern Xep :: Language
pattern Xep = $(bakeLanguage Nothing "xep")

-- | Xerénte.
pattern Xer :: Language
pattern Xer = $(bakeLanguage Nothing "xer")

-- | Kesawai.
pattern Xes :: Language
pattern Xes = $(bakeLanguage Nothing "xes")

-- | Xetá.
pattern Xet :: Language
pattern Xet = $(bakeLanguage Nothing "xet")

-- | Keoru-Ahia.
pattern Xeu :: Language
pattern Xeu = $(bakeLanguage Nothing "xeu")

-- | Faliscan.
pattern Xfa :: Language
pattern Xfa = $(bakeLanguage Nothing "xfa")

-- | Galatian.
pattern Xga :: Language
pattern Xga = $(bakeLanguage Nothing "xga")

-- | Gbin.
pattern Xgb :: Language
pattern Xgb = $(bakeLanguage Nothing "xgb")

-- | Gudang.
pattern Xgd :: Language
pattern Xgd = $(bakeLanguage Nothing "xgd")

-- | Gabrielino-Fernandeño.
pattern Xgf :: Language
pattern Xgf = $(bakeLanguage Nothing "xgf")

-- | Goreng.
pattern Xgg :: Language
pattern Xgg = $(bakeLanguage Nothing "xgg")

-- | Garingbal.
pattern Xgi :: Language
pattern Xgi = $(bakeLanguage Nothing "xgi")

-- | Galindan.
pattern Xgl :: Language
pattern Xgl = $(bakeLanguage Nothing "xgl")

-- | Dharumbal.
pattern Xgm :: Language
pattern Xgm = $(bakeLanguage Nothing "xgm")

-- | Garza.
pattern Xgr :: Language
pattern Xgr = $(bakeLanguage Nothing "xgr")

-- | Unggumi.
pattern Xgu :: Language
pattern Xgu = $(bakeLanguage Nothing "xgu")

-- | Guwa.
pattern Xgw :: Language
pattern Xgw = $(bakeLanguage Nothing "xgw")

-- | Harami.
pattern Xha :: Language
pattern Xha = $(bakeLanguage Nothing "xha")

-- | Hunnic.
pattern Xhc :: Language
pattern Xhc = $(bakeLanguage Nothing "xhc")

-- | Hadrami.
pattern Xhd :: Language
pattern Xhd = $(bakeLanguage Nothing "xhd")

-- | Khetrani.
pattern Xhe :: Language
pattern Xhe = $(bakeLanguage Nothing "xhe")

-- | Middle Khmer (1400 to 1850 CE).
pattern Xhm :: Language
pattern Xhm = $(bakeLanguage Nothing "xhm")

-- | Hernican.
pattern Xhr :: Language
pattern Xhr = $(bakeLanguage Nothing "xhr")

-- | Hattic.
pattern Xht :: Language
pattern Xht = $(bakeLanguage Nothing "xht")

-- | Hurrian.
pattern Xhu :: Language
pattern Xhu = $(bakeLanguage Nothing "xhu")

-- | Khua.
pattern Xhv :: Language
pattern Xhv = $(bakeLanguage Nothing "xhv")

-- | Iberian.
pattern Xib :: Language
pattern Xib = $(bakeLanguage Nothing "xib")

-- | Xiri.
pattern Xii :: Language
pattern Xii = $(bakeLanguage Nothing "xii")

-- | Illyrian.
pattern Xil :: Language
pattern Xil = $(bakeLanguage Nothing "xil")

-- | Xinca.
pattern Xin :: Language
pattern Xin = $(bakeLanguage Nothing "xin")

-- | Xiriâna.
pattern Xir :: Language
pattern Xir = $(bakeLanguage Nothing "xir")

-- | Kisan.
pattern Xis :: Language
pattern Xis = $(bakeLanguage Nothing "xis")

-- | Indus Valley Language.
pattern Xiv :: Language
pattern Xiv = $(bakeLanguage Nothing "xiv")

-- | Xipaya.
pattern Xiy :: Language
pattern Xiy = $(bakeLanguage Nothing "xiy")

-- | Minjungbal.
pattern Xjb :: Language
pattern Xjb = $(bakeLanguage Nothing "xjb")

-- | Jaitmatang.
pattern Xjt :: Language
pattern Xjt = $(bakeLanguage Nothing "xjt")

-- | Kalkoti.
pattern Xka :: Language
pattern Xka = $(bakeLanguage Nothing "xka")

-- | Northern Nago.
pattern Xkb :: Language
pattern Xkb = $(bakeLanguage Nothing "xkb")

-- | Kho'ini.
pattern Xkc :: Language
pattern Xkc = $(bakeLanguage Nothing "xkc")

-- | Mendalam Kayan.
pattern Xkd :: Language
pattern Xkd = $(bakeLanguage Nothing "xkd")

-- | Kereho.
pattern Xke :: Language
pattern Xke = $(bakeLanguage Nothing "xke")

-- | Khengkha.
pattern Xkf :: Language
pattern Xkf = $(bakeLanguage Nothing "xkf")

-- | Kagoro.
pattern Xkg :: Language
pattern Xkg = $(bakeLanguage Nothing "xkg")

-- | Kenyan Sign Language.
pattern Xki :: Language
pattern Xki = $(bakeLanguage Nothing "xki")

-- | Kajali.
pattern Xkj :: Language
pattern Xkj = $(bakeLanguage Nothing "xkj")

-- | Kachok.
pattern Xkk :: Language
pattern Xkk = $(bakeLanguage Nothing "xkk")

-- | Mainstream Kenyah.
pattern Xkl :: Language
pattern Xkl = $(bakeLanguage Nothing "xkl")

-- | Kayan River Kayan.
pattern Xkn :: Language
pattern Xkn = $(bakeLanguage Nothing "xkn")

-- | Kiorr.
pattern Xko :: Language
pattern Xko = $(bakeLanguage Nothing "xko")

-- | Kabatei.
pattern Xkp :: Language
pattern Xkp = $(bakeLanguage Nothing "xkp")

-- | Koroni.
pattern Xkq :: Language
pattern Xkq = $(bakeLanguage Nothing "xkq")

-- | Xakriabá.
pattern Xkr :: Language
pattern Xkr = $(bakeLanguage Nothing "xkr")

-- | Kumbewaha.
pattern Xks :: Language
pattern Xks = $(bakeLanguage Nothing "xks")

-- | Kantosi.
pattern Xkt :: Language
pattern Xkt = $(bakeLanguage Nothing "xkt")

-- | Kaamba.
pattern Xku :: Language
pattern Xku = $(bakeLanguage Nothing "xku")

-- | Kgalagadi.
pattern Xkv :: Language
pattern Xkv = $(bakeLanguage Nothing "xkv")

-- | Kembra.
pattern Xkw :: Language
pattern Xkw = $(bakeLanguage Nothing "xkw")

-- | Karore.
pattern Xkx :: Language
pattern Xkx = $(bakeLanguage Nothing "xkx")

-- | Uma' Lasan.
pattern Xky :: Language
pattern Xky = $(bakeLanguage Nothing "xky")

-- | Kurtokha.
pattern Xkz :: Language
pattern Xkz = $(bakeLanguage Nothing "xkz")

-- | Kamula.
pattern Xla :: Language
pattern Xla = $(bakeLanguage Nothing "xla")

-- | Loup B.
pattern Xlb :: Language
pattern Xlb = $(bakeLanguage Nothing "xlb")

-- | Lycian.
pattern Xlc :: Language
pattern Xlc = $(bakeLanguage Nothing "xlc")

-- | Lydian.
pattern Xld :: Language
pattern Xld = $(bakeLanguage Nothing "xld")

-- | Lemnian.
pattern Xle :: Language
pattern Xle = $(bakeLanguage Nothing "xle")

-- | Ligurian (Ancient).
pattern Xlg :: Language
pattern Xlg = $(bakeLanguage Nothing "xlg")

-- | Liburnian.
pattern Xli :: Language
pattern Xli = $(bakeLanguage Nothing "xli")

-- | Alanic.
pattern Xln :: Language
pattern Xln = $(bakeLanguage Nothing "xln")

-- | Loup A.
pattern Xlo :: Language
pattern Xlo = $(bakeLanguage Nothing "xlo")

-- | Lepontic.
pattern Xlp :: Language
pattern Xlp = $(bakeLanguage Nothing "xlp")

-- | Lusitanian.
pattern Xls :: Language
pattern Xls = $(bakeLanguage Nothing "xls")

-- | Cuneiform Luwian.
pattern Xlu :: Language
pattern Xlu = $(bakeLanguage Nothing "xlu")

-- | Elymian.
pattern Xly :: Language
pattern Xly = $(bakeLanguage Nothing "xly")

-- | Mushungulu.
pattern Xma :: Language
pattern Xma = $(bakeLanguage Nothing "xma")

-- | Mbonga.
pattern Xmb :: Language
pattern Xmb = $(bakeLanguage Nothing "xmb")

-- | Makhuwa-Marrevone.
pattern Xmc :: Language
pattern Xmc = $(bakeLanguage Nothing "xmc")

-- | Mbudum.
pattern Xmd :: Language
pattern Xmd = $(bakeLanguage Nothing "xmd")

-- | Median.
pattern Xme :: Language
pattern Xme = $(bakeLanguage Nothing "xme")

-- | Mingrelian.
pattern Xmf :: Language
pattern Xmf = $(bakeLanguage Nothing "xmf")

-- | Mengaka.
pattern Xmg :: Language
pattern Xmg = $(bakeLanguage Nothing "xmg")

-- | Kugu-Muminh.
pattern Xmh :: Language
pattern Xmh = $(bakeLanguage Nothing "xmh")

-- | Majera.
pattern Xmj :: Language
pattern Xmj = $(bakeLanguage Nothing "xmj")

-- | Ancient Macedonian.
pattern Xmk :: Language
pattern Xmk = $(bakeLanguage Nothing "xmk")

-- | Malaysian Sign Language.
pattern Xml :: Language
pattern Xml = $(bakeLanguage Nothing "xml")

-- | Manado Malay.
pattern Xmm :: Language
pattern Xmm = $(bakeLanguage Nothing "xmm")

-- | Manichaean Middle Persian.
pattern Xmn :: Language
pattern Xmn = $(bakeLanguage Nothing "xmn")

-- | Morerebi.
pattern Xmo :: Language
pattern Xmo = $(bakeLanguage Nothing "xmo")

-- | Kuku-Mu'inh.
pattern Xmp :: Language
pattern Xmp = $(bakeLanguage Nothing "xmp")

-- | Kuku-Mangk.
pattern Xmq :: Language
pattern Xmq = $(bakeLanguage Nothing "xmq")

-- | Meroitic.
pattern Xmr :: Language
pattern Xmr = $(bakeLanguage Nothing "xmr")

-- | Moroccan Sign Language.
pattern Xms :: Language
pattern Xms = $(bakeLanguage Nothing "xms")

-- | Matbat.
pattern Xmt :: Language
pattern Xmt = $(bakeLanguage Nothing "xmt")

-- | Kamu.
pattern Xmu :: Language
pattern Xmu = $(bakeLanguage Nothing "xmu")

-- | Antankarana Malagasy.
pattern Xmv :: Language
pattern Xmv = $(bakeLanguage Nothing "xmv")

-- | Tsimihety Malagasy.
pattern Xmw :: Language
pattern Xmw = $(bakeLanguage Nothing "xmw")

-- | Salawati.
pattern Xmx :: Language
pattern Xmx = $(bakeLanguage Nothing "xmx")

-- | Mayaguduna.
pattern Xmy :: Language
pattern Xmy = $(bakeLanguage Nothing "xmy")

-- | Mori Bawah.
pattern Xmz :: Language
pattern Xmz = $(bakeLanguage Nothing "xmz")

-- | Ancient North Arabian.
pattern Xna :: Language
pattern Xna = $(bakeLanguage Nothing "xna")

-- | Kanakanabu.
pattern Xnb :: Language
pattern Xnb = $(bakeLanguage Nothing "xnb")

-- | Middle Mongolian.
pattern Xng :: Language
pattern Xng = $(bakeLanguage Nothing "xng")

-- | Kuanhua.
pattern Xnh :: Language
pattern Xnh = $(bakeLanguage Nothing "xnh")

-- | Ngarigu.
pattern Xni :: Language
pattern Xni = $(bakeLanguage Nothing "xni")

-- | Ngoni (Tanzania).
pattern Xnj :: Language
pattern Xnj = $(bakeLanguage Nothing "xnj")

-- | Nganakarti.
pattern Xnk :: Language
pattern Xnk = $(bakeLanguage Nothing "xnk")

-- | Ngumbarl.
pattern Xnm :: Language
pattern Xnm = $(bakeLanguage Nothing "xnm")

-- | Northern Kankanay.
pattern Xnn :: Language
pattern Xnn = $(bakeLanguage Nothing "xnn")

-- | Anglo-Norman.
pattern Xno :: Language
pattern Xno = $(bakeLanguage Nothing "xno")

-- | Ngoni (Mozambique).
pattern Xnq :: Language
pattern Xnq = $(bakeLanguage Nothing "xnq")

-- | Kangri.
pattern Xnr :: Language
pattern Xnr = $(bakeLanguage Nothing "xnr")

-- | Kanashi.
pattern Xns :: Language
pattern Xns = $(bakeLanguage Nothing "xns")

-- | Narragansett.
pattern Xnt :: Language
pattern Xnt = $(bakeLanguage Nothing "xnt")

-- | Nukunul.
pattern Xnu :: Language
pattern Xnu = $(bakeLanguage Nothing "xnu")

-- | Nyiyaparli.
pattern Xny :: Language
pattern Xny = $(bakeLanguage Nothing "xny")

-- | Kenzi.
pattern Xnz :: Language
pattern Xnz = $(bakeLanguage Nothing "xnz")

-- | O\'chi\'chi'.
pattern Xoc :: Language
pattern Xoc = $(bakeLanguage Nothing "xoc")

-- | Kokoda.
pattern Xod :: Language
pattern Xod = $(bakeLanguage Nothing "xod")

-- | Soga.
pattern Xog :: Language
pattern Xog = $(bakeLanguage Nothing "xog")

-- | Kominimung.
pattern Xoi :: Language
pattern Xoi = $(bakeLanguage Nothing "xoi")

-- | Xokleng.
pattern Xok :: Language
pattern Xok = $(bakeLanguage Nothing "xok")

-- | Komo (Sudan).
pattern Xom :: Language
pattern Xom = $(bakeLanguage Nothing "xom")

-- | Konkomba.
pattern Xon :: Language
pattern Xon = $(bakeLanguage Nothing "xon")

-- | Xukurú.
pattern Xoo :: Language
pattern Xoo = $(bakeLanguage Nothing "xoo")

-- | Kopar.
pattern Xop :: Language
pattern Xop = $(bakeLanguage Nothing "xop")

-- | Korubo.
pattern Xor :: Language
pattern Xor = $(bakeLanguage Nothing "xor")

-- | Kowaki.
pattern Xow :: Language
pattern Xow = $(bakeLanguage Nothing "xow")

-- | Pirriya.
pattern Xpa :: Language
pattern Xpa = $(bakeLanguage Nothing "xpa")

-- | Northeastern Tasmanian.
pattern Xpb :: Language
pattern Xpb = $(bakeLanguage Nothing "xpb")

-- | Pecheneg.
pattern Xpc :: Language
pattern Xpc = $(bakeLanguage Nothing "xpc")

-- | Oyster Bay Tasmanian.
pattern Xpd :: Language
pattern Xpd = $(bakeLanguage Nothing "xpd")

-- | Liberia Kpelle.
pattern Xpe :: Language
pattern Xpe = $(bakeLanguage Nothing "xpe")

-- | Southeast Tasmanian.
pattern Xpf :: Language
pattern Xpf = $(bakeLanguage Nothing "xpf")

-- | Phrygian.
pattern Xpg :: Language
pattern Xpg = $(bakeLanguage Nothing "xpg")

-- | North Midlands Tasmanian.
pattern Xph :: Language
pattern Xph = $(bakeLanguage Nothing "xph")

-- | Pictish.
pattern Xpi :: Language
pattern Xpi = $(bakeLanguage Nothing "xpi")

-- | Mpalitjanh.
pattern Xpj :: Language
pattern Xpj = $(bakeLanguage Nothing "xpj")

-- | Kulina Pano.
pattern Xpk :: Language
pattern Xpk = $(bakeLanguage Nothing "xpk")

-- | Port Sorell Tasmanian.
pattern Xpl :: Language
pattern Xpl = $(bakeLanguage Nothing "xpl")

-- | Pumpokol.
pattern Xpm :: Language
pattern Xpm = $(bakeLanguage Nothing "xpm")

-- | Kapinawá.
pattern Xpn :: Language
pattern Xpn = $(bakeLanguage Nothing "xpn")

-- | Pochutec.
pattern Xpo :: Language
pattern Xpo = $(bakeLanguage Nothing "xpo")

-- | Puyo-Paekche.
pattern Xpp :: Language
pattern Xpp = $(bakeLanguage Nothing "xpp")

-- | Mohegan-Pequot.
pattern Xpq :: Language
pattern Xpq = $(bakeLanguage Nothing "xpq")

-- | Parthian.
pattern Xpr :: Language
pattern Xpr = $(bakeLanguage Nothing "xpr")

-- | Pisidian.
pattern Xps :: Language
pattern Xps = $(bakeLanguage Nothing "xps")

-- | Punthamara.
pattern Xpt :: Language
pattern Xpt = $(bakeLanguage Nothing "xpt")

-- | Punic.
pattern Xpu :: Language
pattern Xpu = $(bakeLanguage Nothing "xpu")

-- | Northern Tasmanian.
pattern Xpv :: Language
pattern Xpv = $(bakeLanguage Nothing "xpv")

-- | Northwestern Tasmanian.
pattern Xpw :: Language
pattern Xpw = $(bakeLanguage Nothing "xpw")

-- | Southwestern Tasmanian.
pattern Xpx :: Language
pattern Xpx = $(bakeLanguage Nothing "xpx")

-- | Puyo.
pattern Xpy :: Language
pattern Xpy = $(bakeLanguage Nothing "xpy")

-- | Bruny Island Tasmanian.
pattern Xpz :: Language
pattern Xpz = $(bakeLanguage Nothing "xpz")

-- | Karakhanid.
pattern Xqa :: Language
pattern Xqa = $(bakeLanguage Nothing "xqa")

-- | Qatabanian.
pattern Xqt :: Language
pattern Xqt = $(bakeLanguage Nothing "xqt")

-- | Krahô.
pattern Xra :: Language
pattern Xra = $(bakeLanguage Nothing "xra")

-- | Eastern Karaboro.
pattern Xrb :: Language
pattern Xrb = $(bakeLanguage Nothing "xrb")

-- | Gundungurra.
pattern Xrd :: Language
pattern Xrd = $(bakeLanguage Nothing "xrd")

-- | Kreye.
pattern Xre :: Language
pattern Xre = $(bakeLanguage Nothing "xre")

-- | Minang.
pattern Xrg :: Language
pattern Xrg = $(bakeLanguage Nothing "xrg")

-- | Krikati-Timbira.
pattern Xri :: Language
pattern Xri = $(bakeLanguage Nothing "xri")

-- | Armazic.
pattern Xrm :: Language
pattern Xrm = $(bakeLanguage Nothing "xrm")

-- | Arin.
pattern Xrn :: Language
pattern Xrn = $(bakeLanguage Nothing "xrn")

-- | Raetic.
pattern Xrr :: Language
pattern Xrr = $(bakeLanguage Nothing "xrr")

-- | Aranama-Tamique.
pattern Xrt :: Language
pattern Xrt = $(bakeLanguage Nothing "xrt")

-- | Marriammu.
pattern Xru :: Language
pattern Xru = $(bakeLanguage Nothing "xru")

-- | Karawa.
pattern Xrw :: Language
pattern Xrw = $(bakeLanguage Nothing "xrw")

-- | Sabaean.
pattern Xsa :: Language
pattern Xsa = $(bakeLanguage Nothing "xsa")

-- | Sambal.
pattern Xsb :: Language
pattern Xsb = $(bakeLanguage Nothing "xsb")

-- | Scythian.
pattern Xsc :: Language
pattern Xsc = $(bakeLanguage Nothing "xsc")

-- | Sidetic.
pattern Xsd :: Language
pattern Xsd = $(bakeLanguage Nothing "xsd")

-- | Sempan.
pattern Xse :: Language
pattern Xse = $(bakeLanguage Nothing "xse")

-- | Shamang.
pattern Xsh :: Language
pattern Xsh = $(bakeLanguage Nothing "xsh")

-- | Sio.
pattern Xsi :: Language
pattern Xsi = $(bakeLanguage Nothing "xsi")

-- | Subi.
pattern Xsj :: Language
pattern Xsj = $(bakeLanguage Nothing "xsj")

-- | South Slavey.
pattern Xsl :: Language
pattern Xsl = $(bakeLanguage Nothing "xsl")

-- | Kasem.
pattern Xsm :: Language
pattern Xsm = $(bakeLanguage Nothing "xsm")

-- | Sanga (Nigeria).
pattern Xsn :: Language
pattern Xsn = $(bakeLanguage Nothing "xsn")

-- | Solano.
pattern Xso :: Language
pattern Xso = $(bakeLanguage Nothing "xso")

-- | Silopi.
pattern Xsp :: Language
pattern Xsp = $(bakeLanguage Nothing "xsp")

-- | Makhuwa-Saka.
pattern Xsq :: Language
pattern Xsq = $(bakeLanguage Nothing "xsq")

-- | Sherpa.
pattern Xsr :: Language
pattern Xsr = $(bakeLanguage Nothing "xsr")

-- | Sanumá.
pattern Xsu :: Language
pattern Xsu = $(bakeLanguage Nothing "xsu")

-- | Sudovian.
pattern Xsv :: Language
pattern Xsv = $(bakeLanguage Nothing "xsv")

-- | Saisiyat.
pattern Xsy :: Language
pattern Xsy = $(bakeLanguage Nothing "xsy")

-- | Alcozauca Mixtec.
pattern Xta :: Language
pattern Xta = $(bakeLanguage Nothing "xta")

-- | Chazumba Mixtec.
pattern Xtb :: Language
pattern Xtb = $(bakeLanguage Nothing "xtb")

-- | Katcha-Kadugli-Miri.
pattern Xtc :: Language
pattern Xtc = $(bakeLanguage Nothing "xtc")

-- | Diuxi-Tilantongo Mixtec.
pattern Xtd :: Language
pattern Xtd = $(bakeLanguage Nothing "xtd")

-- | Ketengban.
pattern Xte :: Language
pattern Xte = $(bakeLanguage Nothing "xte")

-- | Transalpine Gaulish.
pattern Xtg :: Language
pattern Xtg = $(bakeLanguage Nothing "xtg")

-- | Yitha Yitha.
pattern Xth :: Language
pattern Xth = $(bakeLanguage Nothing "xth")

-- | Sinicahua Mixtec.
pattern Xti :: Language
pattern Xti = $(bakeLanguage Nothing "xti")

-- | San Juan Teita Mixtec.
pattern Xtj :: Language
pattern Xtj = $(bakeLanguage Nothing "xtj")

-- | Tijaltepec Mixtec.
pattern Xtl :: Language
pattern Xtl = $(bakeLanguage Nothing "xtl")

-- | Magdalena Peñasco Mixtec.
pattern Xtm :: Language
pattern Xtm = $(bakeLanguage Nothing "xtm")

-- | Northern Tlaxiaco Mixtec.
pattern Xtn :: Language
pattern Xtn = $(bakeLanguage Nothing "xtn")

-- | Tokharian A.
pattern Xto :: Language
pattern Xto = $(bakeLanguage Nothing "xto")

-- | San Miguel Piedras Mixtec.
pattern Xtp :: Language
pattern Xtp = $(bakeLanguage Nothing "xtp")

-- | Tumshuqese.
pattern Xtq :: Language
pattern Xtq = $(bakeLanguage Nothing "xtq")

-- | Early Tripuri.
pattern Xtr :: Language
pattern Xtr = $(bakeLanguage Nothing "xtr")

-- | Sindihui Mixtec.
pattern Xts :: Language
pattern Xts = $(bakeLanguage Nothing "xts")

-- | Tacahua Mixtec.
pattern Xtt :: Language
pattern Xtt = $(bakeLanguage Nothing "xtt")

-- | Cuyamecalco Mixtec.
pattern Xtu :: Language
pattern Xtu = $(bakeLanguage Nothing "xtu")

-- | Thawa.
pattern Xtv :: Language
pattern Xtv = $(bakeLanguage Nothing "xtv")

-- | Tawandê.
pattern Xtw :: Language
pattern Xtw = $(bakeLanguage Nothing "xtw")

-- | Yoloxochitl Mixtec.
pattern Xty :: Language
pattern Xty = $(bakeLanguage Nothing "xty")

-- | Alu Kurumba.
pattern Xua :: Language
pattern Xua = $(bakeLanguage Nothing "xua")

-- | Betta Kurumba.
pattern Xub :: Language
pattern Xub = $(bakeLanguage Nothing "xub")

-- | Umiida.
pattern Xud :: Language
pattern Xud = $(bakeLanguage Nothing "xud")

-- | Kunigami.
pattern Xug :: Language
pattern Xug = $(bakeLanguage Nothing "xug")

-- | Jennu Kurumba.
pattern Xuj :: Language
pattern Xuj = $(bakeLanguage Nothing "xuj")

-- | Ngunawal.
pattern Xul :: Language
pattern Xul = $(bakeLanguage Nothing "xul")

-- | Umbrian.
pattern Xum :: Language
pattern Xum = $(bakeLanguage Nothing "xum")

-- | Unggaranggu.
pattern Xun :: Language
pattern Xun = $(bakeLanguage Nothing "xun")

-- | Kuo.
pattern Xuo :: Language
pattern Xuo = $(bakeLanguage Nothing "xuo")

-- | Upper Umpqua.
pattern Xup :: Language
pattern Xup = $(bakeLanguage Nothing "xup")

-- | Urartian.
pattern Xur :: Language
pattern Xur = $(bakeLanguage Nothing "xur")

-- | Kuthant.
pattern Xut :: Language
pattern Xut = $(bakeLanguage Nothing "xut")

-- | Kxoe.
pattern Xuu :: Language
pattern Xuu = $(bakeLanguage Nothing "xuu")

-- | Venetic.
pattern Xve :: Language
pattern Xve = $(bakeLanguage Nothing "xve")

-- | Kamviri.
pattern Xvi :: Language
pattern Xvi = $(bakeLanguage Nothing "xvi")

-- | Vandalic.
pattern Xvn :: Language
pattern Xvn = $(bakeLanguage Nothing "xvn")

-- | Volscian.
pattern Xvo :: Language
pattern Xvo = $(bakeLanguage Nothing "xvo")

-- | Vestinian.
pattern Xvs :: Language
pattern Xvs = $(bakeLanguage Nothing "xvs")

-- | Kwaza.
pattern Xwa :: Language
pattern Xwa = $(bakeLanguage Nothing "xwa")

-- | Woccon.
pattern Xwc :: Language
pattern Xwc = $(bakeLanguage Nothing "xwc")

-- | Wadi Wadi.
pattern Xwd :: Language
pattern Xwd = $(bakeLanguage Nothing "xwd")

-- | Xwela Gbe.
pattern Xwe :: Language
pattern Xwe = $(bakeLanguage Nothing "xwe")

-- | Kwegu.
pattern Xwg :: Language
pattern Xwg = $(bakeLanguage Nothing "xwg")

-- | Wajuk.
pattern Xwj :: Language
pattern Xwj = $(bakeLanguage Nothing "xwj")

-- | Wangkumara.
pattern Xwk :: Language
pattern Xwk = $(bakeLanguage Nothing "xwk")

-- | Western Xwla Gbe.
pattern Xwl :: Language
pattern Xwl = $(bakeLanguage Nothing "xwl")

-- | Written Oirat.
pattern Xwo :: Language
pattern Xwo = $(bakeLanguage Nothing "xwo")

-- | Kwerba Mamberamo.
pattern Xwr :: Language
pattern Xwr = $(bakeLanguage Nothing "xwr")

-- | Wotjobaluk.
pattern Xwt :: Language
pattern Xwt = $(bakeLanguage Nothing "xwt")

-- | Wemba Wemba.
pattern Xww :: Language
pattern Xww = $(bakeLanguage Nothing "xww")

-- | Boro (Ghana).
pattern Xxb :: Language
pattern Xxb = $(bakeLanguage Nothing "xxb")

-- | Ke'o.
pattern Xxk :: Language
pattern Xxk = $(bakeLanguage Nothing "xxk")

-- | Minkin.
pattern Xxm :: Language
pattern Xxm = $(bakeLanguage Nothing "xxm")

-- | Koropó.
pattern Xxr :: Language
pattern Xxr = $(bakeLanguage Nothing "xxr")

-- | Tambora.
pattern Xxt :: Language
pattern Xxt = $(bakeLanguage Nothing "xxt")

-- | Yaygir.
pattern Xya :: Language
pattern Xya = $(bakeLanguage Nothing "xya")

-- | Yandjibara.
pattern Xyb :: Language
pattern Xyb = $(bakeLanguage Nothing "xyb")

-- | Mayi-Yapi.
pattern Xyj :: Language
pattern Xyj = $(bakeLanguage Nothing "xyj")

-- | Mayi-Kulan.
pattern Xyk :: Language
pattern Xyk = $(bakeLanguage Nothing "xyk")

-- | Yalakalore.
pattern Xyl :: Language
pattern Xyl = $(bakeLanguage Nothing "xyl")

-- | Mayi-Thakurti.
pattern Xyt :: Language
pattern Xyt = $(bakeLanguage Nothing "xyt")

-- | Yorta Yorta.
pattern Xyy :: Language
pattern Xyy = $(bakeLanguage Nothing "xyy")

-- | Zhang-Zhung.
pattern Xzh :: Language
pattern Xzh = $(bakeLanguage Nothing "xzh")

-- | Zemgalian.
pattern Xzm :: Language
pattern Xzm = $(bakeLanguage Nothing "xzm")

-- | Ancient Zapotec.
pattern Xzp :: Language
pattern Xzp = $(bakeLanguage Nothing "xzp")

-- | Yaminahua.
pattern Yaa :: Language
pattern Yaa = $(bakeLanguage Nothing "yaa")

-- | Yuhup.
pattern Yab :: Language
pattern Yab = $(bakeLanguage Nothing "yab")

-- | Pass Valley Yali.
pattern Yac :: Language
pattern Yac = $(bakeLanguage Nothing "yac")

-- | Yagua.
pattern Yad :: Language
pattern Yad = $(bakeLanguage Nothing "yad")

-- | Pumé.
pattern Yae :: Language
pattern Yae = $(bakeLanguage Nothing "yae")

-- | Yaka (Democratic Republic of Congo).
pattern Yaf :: Language
pattern Yaf = $(bakeLanguage Nothing "yaf")

-- | Yámana.
pattern Yag :: Language
pattern Yag = $(bakeLanguage Nothing "yag")

-- | Yazgulyam.
pattern Yah :: Language
pattern Yah = $(bakeLanguage Nothing "yah")

-- | Yagnobi.
pattern Yai :: Language
pattern Yai = $(bakeLanguage Nothing "yai")

-- | Banda-Yangere.
pattern Yaj :: Language
pattern Yaj = $(bakeLanguage Nothing "yaj")

-- | Yakama.
pattern Yak :: Language
pattern Yak = $(bakeLanguage Nothing "yak")

-- | Yalunka.
pattern Yal :: Language
pattern Yal = $(bakeLanguage Nothing "yal")

-- | Yamba.
pattern Yam :: Language
pattern Yam = $(bakeLanguage Nothing "yam")

-- | Mayangna.
pattern Yan :: Language
pattern Yan = $(bakeLanguage Nothing "yan")

-- | Yao.
pattern Yao :: Language
pattern Yao = $(bakeLanguage Nothing "yao")

-- | Yapese.
pattern Yap :: Language
pattern Yap = $(bakeLanguage Nothing "yap")

-- | Yaqui.
pattern Yaq :: Language
pattern Yaq = $(bakeLanguage Nothing "yaq")

-- | Yabarana.
pattern Yar :: Language
pattern Yar = $(bakeLanguage Nothing "yar")

-- | Nugunu (Cameroon).
pattern Yas :: Language
pattern Yas = $(bakeLanguage Nothing "yas")

-- | Yambeta.
pattern Yat :: Language
pattern Yat = $(bakeLanguage Nothing "yat")

-- | Yuwana.
pattern Yau :: Language
pattern Yau = $(bakeLanguage Nothing "yau")

-- | Yangben.
pattern Yav :: Language
pattern Yav = $(bakeLanguage Nothing "yav")

-- | Yawalapití.
pattern Yaw :: Language
pattern Yaw = $(bakeLanguage Nothing "yaw")

-- | Yauma.
pattern Yax :: Language
pattern Yax = $(bakeLanguage Nothing "yax")

-- | Agwagwune.
pattern Yay :: Language
pattern Yay = $(bakeLanguage Nothing "yay")

-- | Lokaa.
pattern Yaz :: Language
pattern Yaz = $(bakeLanguage Nothing "yaz")

-- | Yala.
pattern Yba :: Language
pattern Yba = $(bakeLanguage Nothing "yba")

-- | Yemba.
pattern Ybb :: Language
pattern Ybb = $(bakeLanguage Nothing "ybb")

-- | West Yugur.
pattern Ybe :: Language
pattern Ybe = $(bakeLanguage Nothing "ybe")

-- | Yakha.
pattern Ybh :: Language
pattern Ybh = $(bakeLanguage Nothing "ybh")

-- | Yamphu.
pattern Ybi :: Language
pattern Ybi = $(bakeLanguage Nothing "ybi")

-- | Hasha.
pattern Ybj :: Language
pattern Ybj = $(bakeLanguage Nothing "ybj")

-- | Bokha.
pattern Ybk :: Language
pattern Ybk = $(bakeLanguage Nothing "ybk")

-- | Yukuben.
pattern Ybl :: Language
pattern Ybl = $(bakeLanguage Nothing "ybl")

-- | Yaben.
pattern Ybm :: Language
pattern Ybm = $(bakeLanguage Nothing "ybm")

-- | Yabaâna.
pattern Ybn :: Language
pattern Ybn = $(bakeLanguage Nothing "ybn")

-- | Yabong.
pattern Ybo :: Language
pattern Ybo = $(bakeLanguage Nothing "ybo")

-- | Yawiyo.
pattern Ybx :: Language
pattern Ybx = $(bakeLanguage Nothing "ybx")

-- | Yaweyuha.
pattern Yby :: Language
pattern Yby = $(bakeLanguage Nothing "yby")

-- | Chesu.
pattern Ych :: Language
pattern Ych = $(bakeLanguage Nothing "ych")

-- | Lolopo.
pattern Ycl :: Language
pattern Ycl = $(bakeLanguage Nothing "ycl")

-- | Yucuna.
pattern Ycn :: Language
pattern Ycn = $(bakeLanguage Nothing "ycn")

-- | Chepya.
pattern Ycp :: Language
pattern Ycp = $(bakeLanguage Nothing "ycp")

-- | Yilan Creole.
pattern Ycr :: Language
pattern Ycr = $(bakeLanguage Nothing "ycr")

-- | Yanda.
pattern Yda :: Language
pattern Yda = $(bakeLanguage Nothing "yda")

-- | Eastern Yiddish.
pattern Ydd :: Language
pattern Ydd = $(bakeLanguage Nothing "ydd")

-- | Yangum Dey.
pattern Yde :: Language
pattern Yde = $(bakeLanguage Nothing "yde")

-- | Yidgha.
pattern Ydg :: Language
pattern Ydg = $(bakeLanguage Nothing "ydg")

-- | Yoidik.
pattern Ydk :: Language
pattern Ydk = $(bakeLanguage Nothing "ydk")

-- | Ravula.
pattern Yea :: Language
pattern Yea = $(bakeLanguage Nothing "yea")

-- | Yeniche.
pattern Yec :: Language
pattern Yec = $(bakeLanguage Nothing "yec")

-- | Yimas.
pattern Yee :: Language
pattern Yee = $(bakeLanguage Nothing "yee")

-- | Yeni.
pattern Yei :: Language
pattern Yei = $(bakeLanguage Nothing "yei")

-- | Yevanic.
pattern Yej :: Language
pattern Yej = $(bakeLanguage Nothing "yej")

-- | Yela.
pattern Yel :: Language
pattern Yel = $(bakeLanguage Nothing "yel")

-- | Tarok.
pattern Yer :: Language
pattern Yer = $(bakeLanguage Nothing "yer")

-- | Nyankpa.
pattern Yes :: Language
pattern Yes = $(bakeLanguage Nothing "yes")

-- | Yetfa.
pattern Yet :: Language
pattern Yet = $(bakeLanguage Nothing "yet")

-- | Yerukula.
pattern Yeu :: Language
pattern Yeu = $(bakeLanguage Nothing "yeu")

-- | Yapunda.
pattern Yev :: Language
pattern Yev = $(bakeLanguage Nothing "yev")

-- | Yeyi.
pattern Yey :: Language
pattern Yey = $(bakeLanguage Nothing "yey")

-- | Malyangapa.
pattern Yga :: Language
pattern Yga = $(bakeLanguage Nothing "yga")

-- | Yiningayi.
pattern Ygi :: Language
pattern Ygi = $(bakeLanguage Nothing "ygi")

-- | Yangum Gel.
pattern Ygl :: Language
pattern Ygl = $(bakeLanguage Nothing "ygl")

-- | Yagomi.
pattern Ygm :: Language
pattern Ygm = $(bakeLanguage Nothing "ygm")

-- | Gepo.
pattern Ygp :: Language
pattern Ygp = $(bakeLanguage Nothing "ygp")

-- | Yagaria.
pattern Ygr :: Language
pattern Ygr = $(bakeLanguage Nothing "ygr")

-- | Yolŋu Sign Language.
pattern Ygs :: Language
pattern Ygs = $(bakeLanguage Nothing "ygs")

-- | Yugul.
pattern Ygu :: Language
pattern Ygu = $(bakeLanguage Nothing "ygu")

-- | Yagwoia.
pattern Ygw :: Language
pattern Ygw = $(bakeLanguage Nothing "ygw")

-- | Baha Buyang.
pattern Yha :: Language
pattern Yha = $(bakeLanguage Nothing "yha")

-- | Judeo-Iraqi Arabic.
pattern Yhd :: Language
pattern Yhd = $(bakeLanguage Nothing "yhd")

-- | Hlepho Phowa.
pattern Yhl :: Language
pattern Yhl = $(bakeLanguage Nothing "yhl")

-- | Yan-nhaŋu Sign Language.
pattern Yhs :: Language
pattern Yhs = $(bakeLanguage Nothing "yhs")

-- | Yinggarda.
pattern Yia :: Language
pattern Yia = $(bakeLanguage Nothing "yia")

-- | Ache.
pattern Yif :: Language
pattern Yif = $(bakeLanguage Nothing "yif")

-- | Wusa Nasu.
pattern Yig :: Language
pattern Yig = $(bakeLanguage Nothing "yig")

-- | Western Yiddish.
pattern Yih :: Language
pattern Yih = $(bakeLanguage Nothing "yih")

-- | Yidiny.
pattern Yii :: Language
pattern Yii = $(bakeLanguage Nothing "yii")

-- | Yindjibarndi.
pattern Yij :: Language
pattern Yij = $(bakeLanguage Nothing "yij")

-- | Dongshanba Lalo.
pattern Yik :: Language
pattern Yik = $(bakeLanguage Nothing "yik")

-- | Yindjilandji.
pattern Yil :: Language
pattern Yil = $(bakeLanguage Nothing "yil")

-- | Yimchungru Naga.
pattern Yim :: Language
pattern Yim = $(bakeLanguage Nothing "yim")

-- | Riang Lai.
pattern Yin :: Language
pattern Yin = $(bakeLanguage Nothing "yin")

-- | Pholo.
pattern Yip :: Language
pattern Yip = $(bakeLanguage Nothing "yip")

-- | Miqie.
pattern Yiq :: Language
pattern Yiq = $(bakeLanguage Nothing "yiq")

-- | North Awyu.
pattern Yir :: Language
pattern Yir = $(bakeLanguage Nothing "yir")

-- | Yis.
pattern Yis :: Language
pattern Yis = $(bakeLanguage Nothing "yis")

-- | Eastern Lalu.
pattern Yit :: Language
pattern Yit = $(bakeLanguage Nothing "yit")

-- | Awu.
pattern Yiu :: Language
pattern Yiu = $(bakeLanguage Nothing "yiu")

-- | Northern Nisu.
pattern Yiv :: Language
pattern Yiv = $(bakeLanguage Nothing "yiv")

-- | Axi Yi.
pattern Yix :: Language
pattern Yix = $(bakeLanguage Nothing "yix")

-- | Azhe.
pattern Yiz :: Language
pattern Yiz = $(bakeLanguage Nothing "yiz")

-- | Yakan.
pattern Yka :: Language
pattern Yka = $(bakeLanguage Nothing "yka")

-- | Northern Yukaghir.
pattern Ykg :: Language
pattern Ykg = $(bakeLanguage Nothing "ykg")

-- | Khamnigan Mongol.
pattern Ykh :: Language
pattern Ykh = $(bakeLanguage Nothing "ykh")

-- | Yoke.
pattern Yki :: Language
pattern Yki = $(bakeLanguage Nothing "yki")

-- | Yakaikeke.
pattern Ykk :: Language
pattern Ykk = $(bakeLanguage Nothing "ykk")

-- | Khlula.
pattern Ykl :: Language
pattern Ykl = $(bakeLanguage Nothing "ykl")

-- | Kap.
pattern Ykm :: Language
pattern Ykm = $(bakeLanguage Nothing "ykm")

-- | Kua-nsi.
pattern Ykn :: Language
pattern Ykn = $(bakeLanguage Nothing "ykn")

-- | Iyasa.
pattern Yko :: Language
pattern Yko = $(bakeLanguage Nothing "yko")

-- | Yekora.
pattern Ykr :: Language
pattern Ykr = $(bakeLanguage Nothing "ykr")

-- | Kathu.
pattern Ykt :: Language
pattern Ykt = $(bakeLanguage Nothing "ykt")

-- | Kuamasi.
pattern Yku :: Language
pattern Yku = $(bakeLanguage Nothing "yku")

-- | Yakoma.
pattern Yky :: Language
pattern Yky = $(bakeLanguage Nothing "yky")

-- | Yaul.
pattern Yla :: Language
pattern Yla = $(bakeLanguage Nothing "yla")

-- | Yaleba.
pattern Ylb :: Language
pattern Ylb = $(bakeLanguage Nothing "ylb")

-- | Yele.
pattern Yle :: Language
pattern Yle = $(bakeLanguage Nothing "yle")

-- | Yelogu.
pattern Ylg :: Language
pattern Ylg = $(bakeLanguage Nothing "ylg")

-- | Angguruk Yali.
pattern Yli :: Language
pattern Yli = $(bakeLanguage Nothing "yli")

-- | Yil.
pattern Yll :: Language
pattern Yll = $(bakeLanguage Nothing "yll")

-- | Limi.
pattern Ylm :: Language
pattern Ylm = $(bakeLanguage Nothing "ylm")

-- | Langnian Buyang.
pattern Yln :: Language
pattern Yln = $(bakeLanguage Nothing "yln")

-- | Naluo Yi.
pattern Ylo :: Language
pattern Ylo = $(bakeLanguage Nothing "ylo")

-- | Yalarnnga.
pattern Ylr :: Language
pattern Ylr = $(bakeLanguage Nothing "ylr")

-- | Aribwaung.
pattern Ylu :: Language
pattern Ylu = $(bakeLanguage Nothing "ylu")

-- | Nyâlayu.
pattern Yly :: Language
pattern Yly = $(bakeLanguage Nothing "yly")

-- | Yambes.
pattern Ymb :: Language
pattern Ymb = $(bakeLanguage Nothing "ymb")

-- | Southern Muji.
pattern Ymc :: Language
pattern Ymc = $(bakeLanguage Nothing "ymc")

-- | Muda.
pattern Ymd :: Language
pattern Ymd = $(bakeLanguage Nothing "ymd")

-- | Yameo.
pattern Yme :: Language
pattern Yme = $(bakeLanguage Nothing "yme")

-- | Yamongeri.
pattern Ymg :: Language
pattern Ymg = $(bakeLanguage Nothing "ymg")

-- | Mili.
pattern Ymh :: Language
pattern Ymh = $(bakeLanguage Nothing "ymh")

-- | Moji.
pattern Ymi :: Language
pattern Ymi = $(bakeLanguage Nothing "ymi")

-- | Makwe.
pattern Ymk :: Language
pattern Ymk = $(bakeLanguage Nothing "ymk")

-- | Iamalele.
pattern Yml :: Language
pattern Yml = $(bakeLanguage Nothing "yml")

-- | Maay.
pattern Ymm :: Language
pattern Ymm = $(bakeLanguage Nothing "ymm")

-- | Yamna.
pattern Ymn :: Language
pattern Ymn = $(bakeLanguage Nothing "ymn")

-- | Yangum Mon.
pattern Ymo :: Language
pattern Ymo = $(bakeLanguage Nothing "ymo")

-- | Yamap.
pattern Ymp :: Language
pattern Ymp = $(bakeLanguage Nothing "ymp")

-- | Qila Muji.
pattern Ymq :: Language
pattern Ymq = $(bakeLanguage Nothing "ymq")

-- | Malasar.
pattern Ymr :: Language
pattern Ymr = $(bakeLanguage Nothing "ymr")

-- | Mysian.
pattern Yms :: Language
pattern Yms = $(bakeLanguage Nothing "yms")

-- | Northern Muji.
pattern Ymx :: Language
pattern Ymx = $(bakeLanguage Nothing "ymx")

-- | Muzi.
pattern Ymz :: Language
pattern Ymz = $(bakeLanguage Nothing "ymz")

-- | Aluo.
pattern Yna :: Language
pattern Yna = $(bakeLanguage Nothing "yna")

-- | Yamben.
pattern Ynb :: Language
pattern Ynb = $(bakeLanguage Nothing "ynb")

-- | Yandruwandha.
pattern Ynd :: Language
pattern Ynd = $(bakeLanguage Nothing "ynd")

-- | Lang'e.
pattern Yne :: Language
pattern Yne = $(bakeLanguage Nothing "yne")

-- | Yango.
pattern Yng :: Language
pattern Yng = $(bakeLanguage Nothing "yng")

-- | Naukan Yupik.
pattern Ynk :: Language
pattern Ynk = $(bakeLanguage Nothing "ynk")

-- | Yangulam.
pattern Ynl :: Language
pattern Ynl = $(bakeLanguage Nothing "ynl")

-- | Yana.
pattern Ynn :: Language
pattern Ynn = $(bakeLanguage Nothing "ynn")

-- | Yong.
pattern Yno :: Language
pattern Yno = $(bakeLanguage Nothing "yno")

-- | Yendang.
pattern Ynq :: Language
pattern Ynq = $(bakeLanguage Nothing "ynq")

-- | Yansi.
pattern Yns :: Language
pattern Yns = $(bakeLanguage Nothing "yns")

-- | Yahuna.
pattern Ynu :: Language
pattern Ynu = $(bakeLanguage Nothing "ynu")

-- | Yoba.
pattern Yob :: Language
pattern Yob = $(bakeLanguage Nothing "yob")

-- | Yogad.
pattern Yog :: Language
pattern Yog = $(bakeLanguage Nothing "yog")

-- | Yonaguni.
pattern Yoi :: Language
pattern Yoi = $(bakeLanguage Nothing "yoi")

-- | Yokuts.
pattern Yok :: Language
pattern Yok = $(bakeLanguage Nothing "yok")

-- | Yombe.
pattern Yom :: Language
pattern Yom = $(bakeLanguage Nothing "yom")

-- | Yongkom.
pattern Yon :: Language
pattern Yon = $(bakeLanguage Nothing "yon")

-- | Yotti.
pattern Yot :: Language
pattern Yot = $(bakeLanguage Nothing "yot")

-- | Yoron.
pattern Yox :: Language
pattern Yox = $(bakeLanguage Nothing "yox")

-- | Yoy.
pattern Yoy :: Language
pattern Yoy = $(bakeLanguage Nothing "yoy")

-- | Phala.
pattern Ypa :: Language
pattern Ypa = $(bakeLanguage Nothing "ypa")

-- | Labo Phowa.
pattern Ypb :: Language
pattern Ypb = $(bakeLanguage Nothing "ypb")

-- | Phola.
pattern Ypg :: Language
pattern Ypg = $(bakeLanguage Nothing "ypg")

-- | Phupha.
pattern Yph :: Language
pattern Yph = $(bakeLanguage Nothing "yph")

-- | Phuma.
pattern Ypm :: Language
pattern Ypm = $(bakeLanguage Nothing "ypm")

-- | Ani Phowa.
pattern Ypn :: Language
pattern Ypn = $(bakeLanguage Nothing "ypn")

-- | Alo Phola.
pattern Ypo :: Language
pattern Ypo = $(bakeLanguage Nothing "ypo")

-- | Phupa.
pattern Ypp :: Language
pattern Ypp = $(bakeLanguage Nothing "ypp")

-- | Phuza.
pattern Ypz :: Language
pattern Ypz = $(bakeLanguage Nothing "ypz")

-- | Yerakai.
pattern Yra :: Language
pattern Yra = $(bakeLanguage Nothing "yra")

-- | Yareba.
pattern Yrb :: Language
pattern Yrb = $(bakeLanguage Nothing "yrb")

-- | Yaouré.
pattern Yre :: Language
pattern Yre = $(bakeLanguage Nothing "yre")

-- | Nenets.
pattern Yrk :: Language
pattern Yrk = $(bakeLanguage Nothing "yrk")

-- | Nhengatu.
pattern Yrl :: Language
pattern Yrl = $(bakeLanguage Nothing "yrl")

-- | Yirrk-Mel.
pattern Yrm :: Language
pattern Yrm = $(bakeLanguage Nothing "yrm")

-- | Yerong.
pattern Yrn :: Language
pattern Yrn = $(bakeLanguage Nothing "yrn")

-- | Yaroamë.
pattern Yro :: Language
pattern Yro = $(bakeLanguage Nothing "yro")

-- | Yarsun.
pattern Yrs :: Language
pattern Yrs = $(bakeLanguage Nothing "yrs")

-- | Yarawata.
pattern Yrw :: Language
pattern Yrw = $(bakeLanguage Nothing "yrw")

-- | Yarluyandi.
pattern Yry :: Language
pattern Yry = $(bakeLanguage Nothing "yry")

-- | Yassic.
pattern Ysc :: Language
pattern Ysc = $(bakeLanguage Nothing "ysc")

-- | Samatao.
pattern Ysd :: Language
pattern Ysd = $(bakeLanguage Nothing "ysd")

-- | Sonaga.
pattern Ysg :: Language
pattern Ysg = $(bakeLanguage Nothing "ysg")

-- | Yugoslavian Sign Language.
pattern Ysl :: Language
pattern Ysl = $(bakeLanguage Nothing "ysl")

-- | Myanmar Sign Language.
pattern Ysm :: Language
pattern Ysm = $(bakeLanguage Nothing "ysm")

-- | Sani.
pattern Ysn :: Language
pattern Ysn = $(bakeLanguage Nothing "ysn")

-- | Nisi (China).
pattern Yso :: Language
pattern Yso = $(bakeLanguage Nothing "yso")

-- | Southern Lolopo.
pattern Ysp :: Language
pattern Ysp = $(bakeLanguage Nothing "ysp")

-- | Sirenik Yupik.
pattern Ysr :: Language
pattern Ysr = $(bakeLanguage Nothing "ysr")

-- | Yessan-Mayo.
pattern Yss :: Language
pattern Yss = $(bakeLanguage Nothing "yss")

-- | Sanie.
pattern Ysy :: Language
pattern Ysy = $(bakeLanguage Nothing "ysy")

-- | Talu.
pattern Yta :: Language
pattern Yta = $(bakeLanguage Nothing "yta")

-- | Tanglang.
pattern Ytl :: Language
pattern Ytl = $(bakeLanguage Nothing "ytl")

-- | Thopho.
pattern Ytp :: Language
pattern Ytp = $(bakeLanguage Nothing "ytp")

-- | Yout Wam.
pattern Ytw :: Language
pattern Ytw = $(bakeLanguage Nothing "ytw")

-- | Yatay.
pattern Yty :: Language
pattern Yty = $(bakeLanguage Nothing "yty")

-- | Yucateco.
pattern Yua :: Language
pattern Yua = $(bakeLanguage Nothing "yua")

-- | Yugambal.
pattern Yub :: Language
pattern Yub = $(bakeLanguage Nothing "yub")

-- | Yuchi.
pattern Yuc :: Language
pattern Yuc = $(bakeLanguage Nothing "yuc")

-- | Judeo-Tripolitanian Arabic.
pattern Yud :: Language
pattern Yud = $(bakeLanguage Nothing "yud")

-- | Yue Chinese.
pattern Yue :: Language
pattern Yue = $(bakeLanguage Nothing "yue")

-- | Havasupai-Walapai-Yavapai.
pattern Yuf :: Language
pattern Yuf = $(bakeLanguage Nothing "yuf")

-- | Yug.
pattern Yug :: Language
pattern Yug = $(bakeLanguage Nothing "yug")

-- | Yurutí.
pattern Yui :: Language
pattern Yui = $(bakeLanguage Nothing "yui")

-- | Karkar-Yuri.
pattern Yuj :: Language
pattern Yuj = $(bakeLanguage Nothing "yuj")

-- | Yuki.
pattern Yuk :: Language
pattern Yuk = $(bakeLanguage Nothing "yuk")

-- | Yulu.
pattern Yul :: Language
pattern Yul = $(bakeLanguage Nothing "yul")

-- | Quechan.
pattern Yum :: Language
pattern Yum = $(bakeLanguage Nothing "yum")

-- | Bena (Nigeria).
pattern Yun :: Language
pattern Yun = $(bakeLanguage Nothing "yun")

-- | Yukpa.
pattern Yup :: Language
pattern Yup = $(bakeLanguage Nothing "yup")

-- | Yuqui.
pattern Yuq :: Language
pattern Yuq = $(bakeLanguage Nothing "yuq")

-- | Yurok.
pattern Yur :: Language
pattern Yur = $(bakeLanguage Nothing "yur")

-- | Yopno.
pattern Yut :: Language
pattern Yut = $(bakeLanguage Nothing "yut")

-- | Yau (Morobe Province).
pattern Yuw :: Language
pattern Yuw = $(bakeLanguage Nothing "yuw")

-- | Southern Yukaghir.
pattern Yux :: Language
pattern Yux = $(bakeLanguage Nothing "yux")

-- | East Yugur.
pattern Yuy :: Language
pattern Yuy = $(bakeLanguage Nothing "yuy")

-- | Yuracare.
pattern Yuz :: Language
pattern Yuz = $(bakeLanguage Nothing "yuz")

-- | Yawa.
pattern Yva :: Language
pattern Yva = $(bakeLanguage Nothing "yva")

-- | Yavitero.
pattern Yvt :: Language
pattern Yvt = $(bakeLanguage Nothing "yvt")

-- | Kalou.
pattern Ywa :: Language
pattern Ywa = $(bakeLanguage Nothing "ywa")

-- | Yinhawangka.
pattern Ywg :: Language
pattern Ywg = $(bakeLanguage Nothing "ywg")

-- | Western Lalu.
pattern Ywl :: Language
pattern Ywl = $(bakeLanguage Nothing "ywl")

-- | Yawanawa.
pattern Ywn :: Language
pattern Ywn = $(bakeLanguage Nothing "ywn")

-- | Wuding-Luquan Yi.
pattern Ywq :: Language
pattern Ywq = $(bakeLanguage Nothing "ywq")

-- | Yawuru.
pattern Ywr :: Language
pattern Ywr = $(bakeLanguage Nothing "ywr")

-- | Xishanba Lalo.
pattern Ywt :: Language
pattern Ywt = $(bakeLanguage Nothing "ywt")

-- | Wumeng Nasu.
pattern Ywu :: Language
pattern Ywu = $(bakeLanguage Nothing "ywu")

-- | Yawarawarga.
pattern Yww :: Language
pattern Yww = $(bakeLanguage Nothing "yww")

-- | Mayawali.
pattern Yxa :: Language
pattern Yxa = $(bakeLanguage Nothing "yxa")

-- | Yagara.
pattern Yxg :: Language
pattern Yxg = $(bakeLanguage Nothing "yxg")

-- | Yardliyawarra.
pattern Yxl :: Language
pattern Yxl = $(bakeLanguage Nothing "yxl")

-- | Yinwum.
pattern Yxm :: Language
pattern Yxm = $(bakeLanguage Nothing "yxm")

-- | Yuyu.
pattern Yxu :: Language
pattern Yxu = $(bakeLanguage Nothing "yxu")

-- | Yabula Yabula.
pattern Yxy :: Language
pattern Yxy = $(bakeLanguage Nothing "yxy")

-- | Yir Yoront.
pattern Yyr :: Language
pattern Yyr = $(bakeLanguage Nothing "yyr")

-- | Yau (Sandaun Province).
pattern Yyu :: Language
pattern Yyu = $(bakeLanguage Nothing "yyu")

-- | Ayizi.
pattern Yyz :: Language
pattern Yyz = $(bakeLanguage Nothing "yyz")

-- | E'ma Buyang.
pattern Yzg :: Language
pattern Yzg = $(bakeLanguage Nothing "yzg")

-- | Zokhuo.
pattern Yzk :: Language
pattern Yzk = $(bakeLanguage Nothing "yzk")

-- | Sierra de Juárez Zapotec.
pattern Zaa :: Language
pattern Zaa = $(bakeLanguage Nothing "zaa")

-- | Western Tlacolula Valley Zapotec.
pattern Zab :: Language
pattern Zab = $(bakeLanguage Nothing "zab")

-- | Ocotlán Zapotec.
pattern Zac :: Language
pattern Zac = $(bakeLanguage Nothing "zac")

-- | Cajonos Zapotec.
pattern Zad :: Language
pattern Zad = $(bakeLanguage Nothing "zad")

-- | Yareni Zapotec.
pattern Zae :: Language
pattern Zae = $(bakeLanguage Nothing "zae")

-- | Ayoquesco Zapotec.
pattern Zaf :: Language
pattern Zaf = $(bakeLanguage Nothing "zaf")

-- | Zaghawa.
pattern Zag :: Language
pattern Zag = $(bakeLanguage Nothing "zag")

-- | Zangwal.
pattern Zah :: Language
pattern Zah = $(bakeLanguage Nothing "zah")

-- | Isthmus Zapotec.
pattern Zai :: Language
pattern Zai = $(bakeLanguage Nothing "zai")

-- | Zaramo.
pattern Zaj :: Language
pattern Zaj = $(bakeLanguage Nothing "zaj")

-- | Zanaki.
pattern Zak :: Language
pattern Zak = $(bakeLanguage Nothing "zak")

-- | Zauzou.
pattern Zal :: Language
pattern Zal = $(bakeLanguage Nothing "zal")

-- | Miahuatlán Zapotec.
pattern Zam :: Language
pattern Zam = $(bakeLanguage Nothing "zam")

-- | Ozolotepec Zapotec.
pattern Zao :: Language
pattern Zao = $(bakeLanguage Nothing "zao")

-- | Zapotec.
pattern Zap :: Language
pattern Zap = $(bakeLanguage Nothing "zap")

-- | Aloápam Zapotec.
pattern Zaq :: Language
pattern Zaq = $(bakeLanguage Nothing "zaq")

-- | Rincón Zapotec.
pattern Zar :: Language
pattern Zar = $(bakeLanguage Nothing "zar")

-- | Santo Domingo Albarradas Zapotec.
pattern Zas :: Language
pattern Zas = $(bakeLanguage Nothing "zas")

-- | Tabaa Zapotec.
pattern Zat :: Language
pattern Zat = $(bakeLanguage Nothing "zat")

-- | Zangskari.
pattern Zau :: Language
pattern Zau = $(bakeLanguage Nothing "zau")

-- | Yatzachi Zapotec.
pattern Zav :: Language
pattern Zav = $(bakeLanguage Nothing "zav")

-- | Mitla Zapotec.
pattern Zaw :: Language
pattern Zaw = $(bakeLanguage Nothing "zaw")

-- | Xadani Zapotec.
pattern Zax :: Language
pattern Zax = $(bakeLanguage Nothing "zax")

-- | Zayse-Zergulla.
pattern Zay :: Language
pattern Zay = $(bakeLanguage Nothing "zay")

-- | Zari.
pattern Zaz :: Language
pattern Zaz = $(bakeLanguage Nothing "zaz")

-- | Balaibalan.
pattern Zba :: Language
pattern Zba = $(bakeLanguage Nothing "zba")

-- | Central Berawan.
pattern Zbc :: Language
pattern Zbc = $(bakeLanguage Nothing "zbc")

-- | East Berawan.
pattern Zbe :: Language
pattern Zbe = $(bakeLanguage Nothing "zbe")

-- | Blissymbols.
pattern Zbl :: Language
pattern Zbl = $(bakeLanguage Nothing "zbl")

-- | Batui.
pattern Zbt :: Language
pattern Zbt = $(bakeLanguage Nothing "zbt")

-- | Bu (Bauchi State).
pattern Zbu :: Language
pattern Zbu = $(bakeLanguage Nothing "zbu")

-- | West Berawan.
pattern Zbw :: Language
pattern Zbw = $(bakeLanguage Nothing "zbw")

-- | Coatecas Altas Zapotec.
pattern Zca :: Language
pattern Zca = $(bakeLanguage Nothing "zca")

-- | Las Delicias Zapotec.
pattern Zcd :: Language
pattern Zcd = $(bakeLanguage Nothing "zcd")

-- | Central Hongshuihe Zhuang.
pattern Zch :: Language
pattern Zch = $(bakeLanguage Nothing "zch")

-- | Ngazidja Comorian.
pattern Zdj :: Language
pattern Zdj = $(bakeLanguage Nothing "zdj")

-- | Zeeuws.
pattern Zea :: Language
pattern Zea = $(bakeLanguage Nothing "zea")

-- | Zenag.
pattern Zeg :: Language
pattern Zeg = $(bakeLanguage Nothing "zeg")

-- | Eastern Hongshuihe Zhuang.
pattern Zeh :: Language
pattern Zeh = $(bakeLanguage Nothing "zeh")

-- | Zeem.
pattern Zem :: Language
pattern Zem = $(bakeLanguage Nothing "zem")

-- | Zenaga.
pattern Zen :: Language
pattern Zen = $(bakeLanguage Nothing "zen")

-- | Kinga.
pattern Zga :: Language
pattern Zga = $(bakeLanguage Nothing "zga")

-- | Guibei Zhuang.
pattern Zgb :: Language
pattern Zgb = $(bakeLanguage Nothing "zgb")

-- | Standard Moroccan Tamazight.
pattern Zgh :: Language
pattern Zgh = $(bakeLanguage Nothing "zgh")

-- | Minz Zhuang.
pattern Zgm :: Language
pattern Zgm = $(bakeLanguage Nothing "zgm")

-- | Guibian Zhuang.
pattern Zgn :: Language
pattern Zgn = $(bakeLanguage Nothing "zgn")

-- | Magori.
pattern Zgr :: Language
pattern Zgr = $(bakeLanguage Nothing "zgr")

-- | Zhaba.
pattern Zhb :: Language
pattern Zhb = $(bakeLanguage Nothing "zhb")

-- | Dai Zhuang.
pattern Zhd :: Language
pattern Zhd = $(bakeLanguage Nothing "zhd")

-- | Zhire.
pattern Zhi :: Language
pattern Zhi = $(bakeLanguage Nothing "zhi")

-- | Kurdish Sign Language.
pattern Zhk :: Language
pattern Zhk = $(bakeLanguage Nothing "zhk")

-- | Nong Zhuang.
pattern Zhn :: Language
pattern Zhn = $(bakeLanguage Nothing "zhn")

-- | Zhoa.
pattern Zhw :: Language
pattern Zhw = $(bakeLanguage Nothing "zhw")

-- | Zia.
pattern Zia :: Language
pattern Zia = $(bakeLanguage Nothing "zia")

-- | Zimbabwe Sign Language.
pattern Zib :: Language
pattern Zib = $(bakeLanguage Nothing "zib")

-- | Zimakani.
pattern Zik :: Language
pattern Zik = $(bakeLanguage Nothing "zik")

-- | Zialo.
pattern Zil :: Language
pattern Zil = $(bakeLanguage Nothing "zil")

-- | Mesme.
pattern Zim :: Language
pattern Zim = $(bakeLanguage Nothing "zim")

-- | Zinza.
pattern Zin :: Language
pattern Zin = $(bakeLanguage Nothing "zin")

-- | Zigula.
pattern Ziw :: Language
pattern Ziw = $(bakeLanguage Nothing "ziw")

-- | Zizilivakan.
pattern Ziz :: Language
pattern Ziz = $(bakeLanguage Nothing "ziz")

-- | Kaimbulawa.
pattern Zka :: Language
pattern Zka = $(bakeLanguage Nothing "zka")

-- | Kadu.
pattern Zkd :: Language
pattern Zkd = $(bakeLanguage Nothing "zkd")

-- | Koguryo.
pattern Zkg :: Language
pattern Zkg = $(bakeLanguage Nothing "zkg")

-- | Khorezmian.
pattern Zkh :: Language
pattern Zkh = $(bakeLanguage Nothing "zkh")

-- | Karankawa.
pattern Zkk :: Language
pattern Zkk = $(bakeLanguage Nothing "zkk")

-- | Kanan.
pattern Zkn :: Language
pattern Zkn = $(bakeLanguage Nothing "zkn")

-- | Kott.
pattern Zko :: Language
pattern Zko = $(bakeLanguage Nothing "zko")

-- | São Paulo Kaingáng.
pattern Zkp :: Language
pattern Zkp = $(bakeLanguage Nothing "zkp")

-- | Zakhring.
pattern Zkr :: Language
pattern Zkr = $(bakeLanguage Nothing "zkr")

-- | Kitan.
pattern Zkt :: Language
pattern Zkt = $(bakeLanguage Nothing "zkt")

-- | Kaurna.
pattern Zku :: Language
pattern Zku = $(bakeLanguage Nothing "zku")

-- | Krevinian.
pattern Zkv :: Language
pattern Zkv = $(bakeLanguage Nothing "zkv")

-- | Khazar.
pattern Zkz :: Language
pattern Zkz = $(bakeLanguage Nothing "zkz")

-- | Zula.
pattern Zla :: Language
pattern Zla = $(bakeLanguage Nothing "zla")

-- | Liujiang Zhuang.
pattern Zlj :: Language
pattern Zlj = $(bakeLanguage Nothing "zlj")

-- | Malay (individual language).
pattern Zlm :: Language
pattern Zlm = $(bakeLanguage Nothing "zlm")

-- | Lianshan Zhuang.
pattern Zln :: Language
pattern Zln = $(bakeLanguage Nothing "zln")

-- | Liuqian Zhuang.
pattern Zlq :: Language
pattern Zlq = $(bakeLanguage Nothing "zlq")

-- | Zul.
pattern Zlu :: Language
pattern Zlu = $(bakeLanguage Nothing "zlu")

-- | Manda (Australia).
pattern Zma :: Language
pattern Zma = $(bakeLanguage Nothing "zma")

-- | Zimba.
pattern Zmb :: Language
pattern Zmb = $(bakeLanguage Nothing "zmb")

-- | Margany.
pattern Zmc :: Language
pattern Zmc = $(bakeLanguage Nothing "zmc")

-- | Maridan.
pattern Zmd :: Language
pattern Zmd = $(bakeLanguage Nothing "zmd")

-- | Mangerr.
pattern Zme :: Language
pattern Zme = $(bakeLanguage Nothing "zme")

-- | Mfinu.
pattern Zmf :: Language
pattern Zmf = $(bakeLanguage Nothing "zmf")

-- | Marti Ke.
pattern Zmg :: Language
pattern Zmg = $(bakeLanguage Nothing "zmg")

-- | Makolkol.
pattern Zmh :: Language
pattern Zmh = $(bakeLanguage Nothing "zmh")

-- | Negeri Sembilan Malay.
pattern Zmi :: Language
pattern Zmi = $(bakeLanguage Nothing "zmi")

-- | Maridjabin.
pattern Zmj :: Language
pattern Zmj = $(bakeLanguage Nothing "zmj")

-- | Mandandanyi.
pattern Zmk :: Language
pattern Zmk = $(bakeLanguage Nothing "zmk")

-- | Matngala.
pattern Zml :: Language
pattern Zml = $(bakeLanguage Nothing "zml")

-- | Marimanindji.
pattern Zmm :: Language
pattern Zmm = $(bakeLanguage Nothing "zmm")

-- | Mbangwe.
pattern Zmn :: Language
pattern Zmn = $(bakeLanguage Nothing "zmn")

-- | Molo.
pattern Zmo :: Language
pattern Zmo = $(bakeLanguage Nothing "zmo")

-- | Mbuun.
pattern Zmp :: Language
pattern Zmp = $(bakeLanguage Nothing "zmp")

-- | Mituku.
pattern Zmq :: Language
pattern Zmq = $(bakeLanguage Nothing "zmq")

-- | Maranunggu.
pattern Zmr :: Language
pattern Zmr = $(bakeLanguage Nothing "zmr")

-- | Mbesa.
pattern Zms :: Language
pattern Zms = $(bakeLanguage Nothing "zms")

-- | Maringarr.
pattern Zmt :: Language
pattern Zmt = $(bakeLanguage Nothing "zmt")

-- | Muruwari.
pattern Zmu :: Language
pattern Zmu = $(bakeLanguage Nothing "zmu")

-- | Mbariman-Gudhinma.
pattern Zmv :: Language
pattern Zmv = $(bakeLanguage Nothing "zmv")

-- | Mbo (Democratic Republic of Congo).
pattern Zmw :: Language
pattern Zmw = $(bakeLanguage Nothing "zmw")

-- | Bomitaba.
pattern Zmx :: Language
pattern Zmx = $(bakeLanguage Nothing "zmx")

-- | Mariyedi.
pattern Zmy :: Language
pattern Zmy = $(bakeLanguage Nothing "zmy")

-- | Mbandja.
pattern Zmz :: Language
pattern Zmz = $(bakeLanguage Nothing "zmz")

-- | Zan Gula.
pattern Zna :: Language
pattern Zna = $(bakeLanguage Nothing "zna")

-- | Zande (individual language).
pattern Zne :: Language
pattern Zne = $(bakeLanguage Nothing "zne")

-- | Mang.
pattern Zng :: Language
pattern Zng = $(bakeLanguage Nothing "zng")

-- | Manangkari.
pattern Znk :: Language
pattern Znk = $(bakeLanguage Nothing "znk")

-- | Mangas.
pattern Zns :: Language
pattern Zns = $(bakeLanguage Nothing "zns")

-- | Copainalá Zoque.
pattern Zoc :: Language
pattern Zoc = $(bakeLanguage Nothing "zoc")

-- | Chimalapa Zoque.
pattern Zoh :: Language
pattern Zoh = $(bakeLanguage Nothing "zoh")

-- | Zou.
pattern Zom :: Language
pattern Zom = $(bakeLanguage Nothing "zom")

-- | Asunción Mixtepec Zapotec.
pattern Zoo :: Language
pattern Zoo = $(bakeLanguage Nothing "zoo")

-- | Tabasco Zoque.
pattern Zoq :: Language
pattern Zoq = $(bakeLanguage Nothing "zoq")

-- | Rayón Zoque.
pattern Zor :: Language
pattern Zor = $(bakeLanguage Nothing "zor")

-- | Francisco León Zoque.
pattern Zos :: Language
pattern Zos = $(bakeLanguage Nothing "zos")

-- | Lachiguiri Zapotec.
pattern Zpa :: Language
pattern Zpa = $(bakeLanguage Nothing "zpa")

-- | Yautepec Zapotec.
pattern Zpb :: Language
pattern Zpb = $(bakeLanguage Nothing "zpb")

-- | Choapan Zapotec.
pattern Zpc :: Language
pattern Zpc = $(bakeLanguage Nothing "zpc")

-- | Southeastern Ixtlán Zapotec.
pattern Zpd :: Language
pattern Zpd = $(bakeLanguage Nothing "zpd")

-- | Petapa Zapotec.
pattern Zpe :: Language
pattern Zpe = $(bakeLanguage Nothing "zpe")

-- | San Pedro Quiatoni Zapotec.
pattern Zpf :: Language
pattern Zpf = $(bakeLanguage Nothing "zpf")

-- | Guevea De Humboldt Zapotec.
pattern Zpg :: Language
pattern Zpg = $(bakeLanguage Nothing "zpg")

-- | Totomachapan Zapotec.
pattern Zph :: Language
pattern Zph = $(bakeLanguage Nothing "zph")

-- | Santa María Quiegolani Zapotec.
pattern Zpi :: Language
pattern Zpi = $(bakeLanguage Nothing "zpi")

-- | Quiavicuzas Zapotec.
pattern Zpj :: Language
pattern Zpj = $(bakeLanguage Nothing "zpj")

-- | Tlacolulita Zapotec.
pattern Zpk :: Language
pattern Zpk = $(bakeLanguage Nothing "zpk")

-- | Lachixío Zapotec.
pattern Zpl :: Language
pattern Zpl = $(bakeLanguage Nothing "zpl")

-- | Mixtepec Zapotec.
pattern Zpm :: Language
pattern Zpm = $(bakeLanguage Nothing "zpm")

-- | Santa Inés Yatzechi Zapotec.
pattern Zpn :: Language
pattern Zpn = $(bakeLanguage Nothing "zpn")

-- | Amatlán Zapotec.
pattern Zpo :: Language
pattern Zpo = $(bakeLanguage Nothing "zpo")

-- | El Alto Zapotec.
pattern Zpp :: Language
pattern Zpp = $(bakeLanguage Nothing "zpp")

-- | Zoogocho Zapotec.
pattern Zpq :: Language
pattern Zpq = $(bakeLanguage Nothing "zpq")

-- | Santiago Xanica Zapotec.
pattern Zpr :: Language
pattern Zpr = $(bakeLanguage Nothing "zpr")

-- | Coatlán Zapotec.
pattern Zps :: Language
pattern Zps = $(bakeLanguage Nothing "zps")

-- | San Vicente Coatlán Zapotec.
pattern Zpt :: Language
pattern Zpt = $(bakeLanguage Nothing "zpt")

-- | Yalálag Zapotec.
pattern Zpu :: Language
pattern Zpu = $(bakeLanguage Nothing "zpu")

-- | Chichicapan Zapotec.
pattern Zpv :: Language
pattern Zpv = $(bakeLanguage Nothing "zpv")

-- | Zaniza Zapotec.
pattern Zpw :: Language
pattern Zpw = $(bakeLanguage Nothing "zpw")

-- | San Baltazar Loxicha Zapotec.
pattern Zpx :: Language
pattern Zpx = $(bakeLanguage Nothing "zpx")

-- | Mazaltepec Zapotec.
pattern Zpy :: Language
pattern Zpy = $(bakeLanguage Nothing "zpy")

-- | Texmelucan Zapotec.
pattern Zpz :: Language
pattern Zpz = $(bakeLanguage Nothing "zpz")

-- | Qiubei Zhuang.
pattern Zqe :: Language
pattern Zqe = $(bakeLanguage Nothing "zqe")

-- | Kara (Korea).
pattern Zra :: Language
pattern Zra = $(bakeLanguage Nothing "zra")

-- | Mirgan.
pattern Zrg :: Language
pattern Zrg = $(bakeLanguage Nothing "zrg")

-- | Zerenkel.
pattern Zrn :: Language
pattern Zrn = $(bakeLanguage Nothing "zrn")

-- | Záparo.
pattern Zro :: Language
pattern Zro = $(bakeLanguage Nothing "zro")

-- | Zarphatic.
pattern Zrp :: Language
pattern Zrp = $(bakeLanguage Nothing "zrp")

-- | Mairasi.
pattern Zrs :: Language
pattern Zrs = $(bakeLanguage Nothing "zrs")

-- | Sarasira.
pattern Zsa :: Language
pattern Zsa = $(bakeLanguage Nothing "zsa")

-- | Kaskean.
pattern Zsk :: Language
pattern Zsk = $(bakeLanguage Nothing "zsk")

-- | Zambian Sign Language.
pattern Zsl :: Language
pattern Zsl = $(bakeLanguage Nothing "zsl")

-- | Standard Malay.
pattern Zsm :: Language
pattern Zsm = $(bakeLanguage Nothing "zsm")

-- | Southern Rincon Zapotec.
pattern Zsr :: Language
pattern Zsr = $(bakeLanguage Nothing "zsr")

-- | Sukurum.
pattern Zsu :: Language
pattern Zsu = $(bakeLanguage Nothing "zsu")

-- | Elotepec Zapotec.
pattern Zte :: Language
pattern Zte = $(bakeLanguage Nothing "zte")

-- | Xanaguía Zapotec.
pattern Ztg :: Language
pattern Ztg = $(bakeLanguage Nothing "ztg")

-- | Lapaguía-Guivini Zapotec.
pattern Ztl :: Language
pattern Ztl = $(bakeLanguage Nothing "ztl")

-- | San Agustín Mixtepec Zapotec.
pattern Ztm :: Language
pattern Ztm = $(bakeLanguage Nothing "ztm")

-- | Santa Catarina Albarradas Zapotec.
pattern Ztn :: Language
pattern Ztn = $(bakeLanguage Nothing "ztn")

-- | Loxicha Zapotec.
pattern Ztp :: Language
pattern Ztp = $(bakeLanguage Nothing "ztp")

-- | Quioquitani-Quierí Zapotec.
pattern Ztq :: Language
pattern Ztq = $(bakeLanguage Nothing "ztq")

-- | Tilquiapan Zapotec.
pattern Zts :: Language
pattern Zts = $(bakeLanguage Nothing "zts")

-- | Tejalapan Zapotec.
pattern Ztt :: Language
pattern Ztt = $(bakeLanguage Nothing "ztt")

-- | Güilá Zapotec.
pattern Ztu :: Language
pattern Ztu = $(bakeLanguage Nothing "ztu")

-- | Zaachila Zapotec.
pattern Ztx :: Language
pattern Ztx = $(bakeLanguage Nothing "ztx")

-- | Yatee Zapotec.
pattern Zty :: Language
pattern Zty = $(bakeLanguage Nothing "zty")

-- | Tokano.
pattern Zuh :: Language
pattern Zuh = $(bakeLanguage Nothing "zuh")

-- | Kumzari.
pattern Zum :: Language
pattern Zum = $(bakeLanguage Nothing "zum")

-- | Zuni.
pattern Zun :: Language
pattern Zun = $(bakeLanguage Nothing "zun")

-- | Zumaya.
pattern Zuy :: Language
pattern Zuy = $(bakeLanguage Nothing "zuy")

-- | Zay.
pattern Zwa :: Language
pattern Zwa = $(bakeLanguage Nothing "zwa")

-- | No linguistic content.
pattern Zxx :: Language
pattern Zxx = $(bakeLanguage Nothing "zxx")

-- | Yongbei Zhuang.
pattern Zyb :: Language
pattern Zyb = $(bakeLanguage Nothing "zyb")

-- | Yang Zhuang.
pattern Zyg :: Language
pattern Zyg = $(bakeLanguage Nothing "zyg")

-- | Youjiang Zhuang.
pattern Zyj :: Language
pattern Zyj = $(bakeLanguage Nothing "zyj")

-- | Yongnan Zhuang.
pattern Zyn :: Language
pattern Zyn = $(bakeLanguage Nothing "zyn")

-- | Zyphe Chin.
pattern Zyp :: Language
pattern Zyp = $(bakeLanguage Nothing "zyp")

-- | Zaza.
pattern Zza :: Language
pattern Zza = $(bakeLanguage Nothing "zza")

-- | Zuojiang Zhuang.
pattern Zzj :: Language
pattern Zzj = $(bakeLanguage Nothing "zzj")
