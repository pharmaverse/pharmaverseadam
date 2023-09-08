#' Dataset admh
#'
#' admh dataset
#'
#' @name admh
#' @docType data
#' @format A data frame with 110 columns:
#'   \describe{
#'     \item{ STUDYID }{STUDYID}
#'     \item{ DOMAIN }{DOMAIN}
#'     \item{ USUBJID }{USUBJID}
#'     \item{ MHSEQ }{MHSEQ}
#'     \item{ MHSPID }{MHSPID}
#'     \item{ MHTERM }{MHTERM}
#'     \item{ MHLLT }{MHLLT}
#'     \item{ MHDECOD }{MHDECOD}
#'     \item{ MHHLT }{MHHLT}
#'     \item{ MHHLGT }{MHHLGT}
#'     \item{ MHCAT }{MHCAT}
#'     \item{ MHBODSYS }{MHBODSYS}
#'     \item{ MHSEV }{MHSEV}
#'     \item{ VISITNUM }{VISITNUM}
#'     \item{ VISIT }{VISIT}
#'     \item{ VISITDY }{VISITDY}
#'     \item{ MHDTC }{MHDTC}
#'     \item{ MHSTDTC }{MHSTDTC}
#'     \item{ MHDY }{MHDY}
#'     \item{ MHENDTC }{MHENDTC}
#'     \item{ MHPRESP }{MHPRESP}
#'     \item{ MHOCCUR }{MHOCCUR}
#'     \item{ MHSTRTPT }{MHSTRTPT}
#'     \item{ MHENRTPT }{MHENRTPT}
#'     \item{ MHSTTPT }{MHSTTPT}
#'     \item{ MHENTPT }{MHENTPT}
#'     \item{ MHENRF }{MHENRF}
#'     \item{ MHSTAT }{MHSTAT}
#'     \item{ TRTSDT }{TRTSDT}
#'     \item{ TRTEDT }{TRTEDT}
#'     \item{ TRT01A }{TRT01A}
#'     \item{ TRT01P }{TRT01P}
#'     \item{ DTHDT }{DTHDT}
#'     \item{ EOSDT }{EOSDT}
#'     \item{ ASTDT }{ASTDT}
#'     \item{ AENDT }{AENDT}
#'     \item{ ASTDY }{ASTDY}
#'     \item{ AENDY }{AENDY}
#'     \item{ ADT }{ADT}
#'     \item{ ADY }{ADY}
#'     \item{ SMQ02NAM }{SMQ02NAM}
#'     \item{ SMQ02CD }{SMQ02CD}
#'     \item{ SMQ02SC }{SMQ02SC}
#'     \item{ SMQ02SCN }{SMQ02SCN}
#'     \item{ SMQ03NAM }{SMQ03NAM}
#'     \item{ SMQ03CD }{SMQ03CD}
#'     \item{ SMQ03SC }{SMQ03SC}
#'     \item{ SMQ03SCN }{SMQ03SCN}
#'     \item{ SMQ05NAM }{SMQ05NAM}
#'     \item{ SMQ05CD }{SMQ05CD}
#'     \item{ SMQ05SC }{SMQ05SC}
#'     \item{ SMQ05SCN }{SMQ05SCN}
#'     \item{ CQ01NAM }{CQ01NAM}
#'     \item{ CQ04NAM }{CQ04NAM}
#'     \item{ CQ04CD }{CQ04CD}
#'     \item{ AHIST }{AHIST}
#'     \item{ AOCCFL }{AOCCFL}
#'     \item{ AOCCSFL }{AOCCSFL}
#'     \item{ AOCCPFL }{AOCCPFL}
#'     \item{ AOCPFL }{AOCPFL}
#'     \item{ AOCPSFL }{AOCPSFL}
#'     \item{ AOCPPFL }{AOCPPFL}
#'     \item{ ANL01FL }{ANL01FL}
#'     \item{ TRTP }{TRTP}
#'     \item{ TRTA }{TRTA}
#'     \item{ APHASE }{APHASE}
#'     \item{ APHASEN }{APHASEN}
#'     \item{ MHTERMN }{MHTERMN}
#'     \item{ SUBJID }{SUBJID}
#'     \item{ RFSTDTC }{RFSTDTC}
#'     \item{ RFENDTC }{RFENDTC}
#'     \item{ RFXSTDTC }{RFXSTDTC}
#'     \item{ RFXENDTC }{RFXENDTC}
#'     \item{ RFICDTC }{RFICDTC}
#'     \item{ RFPENDTC }{RFPENDTC}
#'     \item{ DTHDTC }{DTHDTC}
#'     \item{ DTHFL }{DTHFL}
#'     \item{ SITEID }{SITEID}
#'     \item{ AGE }{AGE}
#'     \item{ AGEU }{AGEU}
#'     \item{ SEX }{SEX}
#'     \item{ RACE }{RACE}
#'     \item{ ETHNIC }{ETHNIC}
#'     \item{ ARMCD }{ARMCD}
#'     \item{ ARM }{ARM}
#'     \item{ ACTARMCD }{ACTARMCD}
#'     \item{ ACTARM }{ACTARM}
#'     \item{ COUNTRY }{COUNTRY}
#'     \item{ DMDTC }{DMDTC}
#'     \item{ DMDY }{DMDY}
#'     \item{ TRTSDTM }{TRTSDTM}
#'     \item{ TRTSTMF }{TRTSTMF}
#'     \item{ TRTEDTM }{TRTEDTM}
#'     \item{ TRTETMF }{TRTETMF}
#'     \item{ TRTDURD }{TRTDURD}
#'     \item{ SCRFDT }{SCRFDT}
#'     \item{ EOSSTT }{EOSSTT}
#'     \item{ FRVDT }{FRVDT}
#'     \item{ RANDDT }{RANDDT}
#'     \item{ DTHADY }{DTHADY}
#'     \item{ LDDTHELD }{LDDTHELD}
#'     \item{ LSTALVDT }{LSTALVDT}
#'     \item{ AGEGR1 }{AGEGR1}
#'     \item{ SAFFL }{SAFFL}
#'     \item{ RACEGR1 }{RACEGR1}
#'     \item{ REGION1 }{REGION1}
#'     \item{ LDDTHGR1 }{LDDTHGR1}
#'     \item{ DTH30FL }{DTH30FL}
#'     \item{ DTHA30FL }{DTHA30FL}
#'     \item{ DTHB30FL }{DTHB30FL}
#'   }
#'
#' @source Generated from pharmaverse/admiral.
#' @references None
#'
#' @examples
#' load("./data/admh.rda")
"admh"
