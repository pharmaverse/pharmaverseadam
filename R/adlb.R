#' Laboratory Analysis
#'
#'
#' @name adlb
#' @docType data
#' @format A data frame with 111 columns:
#'   \describe{
#'     \item{ STUDYID }{Study Identifier}
#'     \item{ DOMAIN }{Domain Abbreviation}
#'     \item{ USUBJID }{Unique Subject Identifier}
#'     \item{ LBSEQ }{Sequence Number}
#'     \item{ LBTESTCD }{Lab Test or Examination Short Name}
#'     \item{ LBTEST }{Lab Test or Examination Name}
#'     \item{ LBCAT }{Category for Lab Test}
#'     \item{ LBORRES }{Result or Finding in Original Units}
#'     \item{ LBORRESU }{Original Units}
#'     \item{ LBORNRLO }{Reference Range Lower Limit in Orig Unit}
#'     \item{ LBORNRHI }{Reference Range Upper Limit in Orig Unit}
#'     \item{ LBSTRESC }{Character Result/Finding in Std Format}
#'     \item{ LBSTRESN }{Numeric Result/Finding in Standard Units}
#'     \item{ LBSTRESU }{Standard Units}
#'     \item{ LBSTNRLO }{Reference Range Lower Limit-Std Units}
#'     \item{ LBSTNRHI }{Reference Range Upper Limit-Std Units}
#'     \item{ LBNRIND }{Reference Range Indicator}
#'     \item{ LBBLFL }{Baseline Flag}
#'     \item{ VISITNUM }{Visit Number}
#'     \item{ VISIT }{Visit Name}
#'     \item{ VISITDY }{Planned Study Day of Visit}
#'     \item{ LBDTC }{Date/Time of Specimen Collection}
#'     \item{ LBDY }{Study Day of Specimen Collection}
#'     \item{ TRTSDT }{Date of First Exposure to Treatment}
#'     \item{ TRTEDT }{Date of Last Exposure to Treatment}
#'     \item{ TRT01A }{Actual Treatment for Period 01}
#'     \item{ TRT01P }{Planned Treatment for Period 01}
#'     \item{ ADT }{Analysis Date}
#'     \item{ ADY }{Analysis Relative Day}
#'     \item{ PARAMCD }{Parameter Code}
#'     \item{ PARAM }{Parameter}
#'     \item{ PARAMN }{Parameter (N)}
#'     \item{ PARCAT1 }{Parameter Category 1}
#'     \item{ AVAL }{Analysis Value}
#'     \item{ AVALC }{Analysis Value (C)}
#'     \item{ ANRLO }{Analysis Normal Range Lower Limit}
#'     \item{ ANRHI }{Analysis Normal Range Upper Limit}
#'     \item{ DTYPE }{Derivation Type}
#'     \item{ AVISIT }{Analysis Visit}
#'     \item{ AVISITN }{Analysis Visit (N)}
#'     \item{ ONTRTFL }{On Treatment Record Flag}
#'     \item{ ANRIND }{Analysis Reference Range Indicator}
#'     \item{ BASETYPE }{Baseline Type}
#'     \item{ ABLFL }{Baseline Record Flag}
#'     \item{ BASE }{Baseline Value}
#'     \item{ BASEC }{Baseline Value (C)}
#'     \item{ BNRIND }{Baseline Reference Range Indicator}
#'     \item{ CHG }{Change from Baseline}
#'     \item{ PCHG }{Percent Change from Baseline}
#'     \item{ ATOXDSCL }{Analysis Toxicity Description Low}
#'     \item{ ATOXDSCH }{Analysis Toxicity Description High}
#'     \item{ ATOXGRL }{Analysis Toxicity Grade Low}
#'     \item{ ATOXGRH }{Analysis Toxicity Grade High}
#'     \item{ ATOXGR }{Analysis Toxicity Grade}
#'     \item{ BTOXGRL }{Baseline Toxicity Grade Low}
#'     \item{ BTOXGRH }{Baseline Toxicity Grade High}
#'     \item{ BTOXGR }{Baseline Toxicity Grade}
#'     \item{ R2BASE }{Ratio to Baseline}
#'     \item{ R2ANRLO }{Ratio of Analysis Val compared to ANRLO}
#'     \item{ R2ANRHI }{Ratio of Analysis Val compared to ANRHI}
#'     \item{ SHIFT1 }{Shift from Baseline to Analysis Value}
#'     \item{ SHIFT2 }{Shift from Baseline to Overall Grade}
#'     \item{ ANL01FL }{Analysis Flag 01}
#'     \item{ LVOTFL }{Last Value On Treatment Record Flag}
#'     \item{ TRTP }{Planned Treatment}
#'     \item{ TRTA }{Actual Treatment}
#'     \item{ ASEQ }{Analysis Sequence Number}
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
#'     \item{ EOSDT }{End of Study Date}
#'     \item{ EOSSTT }{End of Study Status}
#'     \item{ FRVDT }{Final Retrievel Visit Date}
#'     \item{ RANDDT }{Date of Randomization}
#'     \item{ DTHDT }{Date of Death}
#'     \item{ DTHADY }{Relative Day of Death}
#'     \item{ LDDTHELD }{Elapsed Days from Last Dose to Death}
#'     \item{ LSTALVDT }{Date Last Known Alive}
#'     \item{ AGEGR1 }{Pooled Age Group 1}
#'     \item{ SAFFL }{Safety Population Flag}
#'     \item{ RACEGR1 }{Pooled Race Group 1}
#'     \item{ REGION1 }{Geographic Region 1}
#'     \item{ LDDTHGR1 }{Last Dose to Death - Days Elapsed Grp 1}
#'     \item{ DTH30FL }{Death Within 30 Days of Last Trt Flag}
#'     \item{ DTHA30FL }{Death After 30 Days from Last Trt Flag}
#'     \item{ DTHB30FL }{Death Within 30 Days of First Trt Flag}
#'   }
#'
#' @source Generated from admiral package (template ad_adlb.R).
#' @references None
#'
#' @examples
#' data("adlb")
"adlb"
