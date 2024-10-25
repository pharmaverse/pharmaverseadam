#' adpp
#'
#' Pharmacokinetic Parameters
#'
#' @name adpp
#' @docType data
#' @format A data frame with 79 columns:
#'   \describe{
#'     \item{ STUDYID }{Study Identifier}
#'     \item{ USUBJID }{Unique Subject Identifier}
#'     \item{ PPTESTCD }{Parameter Short Name}
#'     \item{ PPTEST }{Parameter Name}
#'     \item{ PPCAT }{Parameter Category}
#'     \item{ PPORRES }{Result or Finding in Original Units}
#'     \item{ PPORRESU }{Original Units}
#'     \item{ PPSTRESU }{Standard Units}
#'     \item{ PPSPEC }{Specimen Material Type}
#'     \item{ PPRFDTC }{Date/Time of Reference Point}
#'     \item{ TRTSDT }{Date of First Exposure to Treatment}
#'     \item{ TRTEDT }{Date of Last Exposure to Treatment}
#'     \item{ DTHDT }{Date of Death}
#'     \item{ EOSDT }{End of Study Date}
#'     \item{ TRT01P }{Planned Treatment for Period 01}
#'     \item{ TRT01A }{Actual Treatment for Period 01}
#'     \item{ ADT }{Analysis Date}
#'     \item{ ADY }{Analysis Relative Day}
#'     \item{ PARAMCD }{Parameter Code}
#'     \item{ PARCAT1 }{Parameter Category}
#'     \item{ AVAL }{Numeric Result/Finding in Standard Units}
#'     \item{ AVALU }{Standard Units}
#'     \item{ SRCDOM }{Domain Abbreviation}
#'     \item{ SRCVAR }{Source Variable}
#'     \item{ SRCSEQ }{Sequence Number}
#'     \item{ AVISITN }{Analysis Visit (N)}
#'     \item{ AVISIT }{Analysis Visit}
#'     \item{ VISITNUM }{Visit Number}
#'     \item{ VISIT }{Visit Name}
#'     \item{ TRTP }{Planned Treatment}
#'     \item{ TRTA }{Actual Treatment}
#'     \item{ AVALCAT1 }{Analysis Value Category 1}
#'     \item{ AVALCA1N }{Analysis Value Category 1 (N)}
#'     \item{ SUBJID }{Subject Identifier for the Study}
#'     \item{ RFSTDTC }{Subject Reference Start Date/Time}
#'     \item{ RFENDTC }{Subject Reference End Date/Time}
#'     \item{ RFXSTDTC }{Date/Time of First Study Treatment}
#'     \item{ RFXENDTC }{Date/Time of Last Study Treatment}
#'     \item{ RFICDTC }{Date/Time of Informed Consent}
#'     \item{ RFPENDTC }{Date/Time of End of Participation}
#'     \item{ DTHDTC }{Date/Time of Death}
#'     \item{ DTHFL }{Subject Death Flag}
#'     \item{ SITEID }{Study Site Identifier}
#'     \item{ AGE }{Age}
#'     \item{ AGEU }{Age Units}
#'     \item{ SEX }{Sex}
#'     \item{ RACE }{Race}
#'     \item{ ETHNIC }{Ethnicity}
#'     \item{ ARMCD }{Planned Arm Code}
#'     \item{ ARM }{Description of Planned Arm}
#'     \item{ ACTARMCD }{Actual Arm Code}
#'     \item{ ACTARM }{Description of Actual Arm}
#'     \item{ COUNTRY }{Country}
#'     \item{ DMDTC }{Date/Time of Collection}
#'     \item{ DMDY }{Study Day of Collection}
#'     \item{ TRTSDTM }{Datetime of First Exposure to Treatment}
#'     \item{ TRTSTMF }{Time of First Exposure Imput. Flag}
#'     \item{ TRTEDTM }{Datetime of Last Exposure to Treatment}
#'     \item{ TRTETMF }{Time of Last Exposure Imput. Flag}
#'     \item{ TRTDURD }{Total Treatment Duration (Days)}
#'     \item{ SCRFDT }{Screen Failure Date}
#'     \item{ EOSSTT }{End of Study Status}
#'     \item{ FRVDT }{Final Retrievel Visit Date}
#'     \item{ RANDDT }{Date of Randomization}
#'     \item{ DTHDTF }{undocumented field}
#'     \item{ DTHADY }{Relative Day of Death}
#'     \item{ LDDTHELD }{Elapsed Days from Last Dose to Death}
#'     \item{ DTHCAUS }{undocumented field}
#'     \item{ DTHDOM }{undocumented field}
#'     \item{ DTHCGR1 }{undocumented field}
#'     \item{ LSTALVDT }{Date Last Known Alive}
#'     \item{ SAFFL }{Safety Population Flag}
#'     \item{ RACEGR1 }{Pooled Race Group 1}
#'     \item{ AGEGR1 }{Pooled Age Group 1}
#'     \item{ REGION1 }{Geographic Region 1}
#'     \item{ LDDTHGR1 }{Last Dose to Death - Days Elapsed Grp 1}
#'     \item{ DTH30FL }{Death Within 30 Days of Last Trt Flag}
#'     \item{ DTHA30FL }{Death After 30 Days from Last Trt Flag}
#'     \item{ DTHB30FL }{Death Within 30 Days of First Trt Flag}
#'   }
#'
#' @source Generated from admiral package (template ad_adpp.R).
#' @references None
#'
#' @examples
#' data("adpp")
"adpp"
