#' Dataset adeg
#'
#' adeg dataset
#'
#' @name adeg
#' @docType data
#' @format A data frame with 105 columns:
#'   \describe{
#'     \item{ STUDYID }{Study Identifier}
#'     \item{ DOMAIN }{Domain Abbreviation}
#'     \item{ USUBJID }{Unique Subject Identifier}
#'     \item{ EGSEQ }{Sequence Number}
#'     \item{ EGTESTCD }{ECG Test or Examination Short Name}
#'     \item{ EGTEST }{ECG Test or Examination Name}
#'     \item{ EGORRES }{Result or Finding in Original Units}
#'     \item{ EGORRESU }{Original Units}
#'     \item{ EGSTRESC }{Character Result/Finding in Std Format}
#'     \item{ EGSTRESN }{Numeric Result/Finding in Standard Units}
#'     \item{ EGSTRESU }{Standard Units}
#'     \item{ EGSTAT }{Completion Status}
#'     \item{ EGLOC }{Lead Location Used for Measurement}
#'     \item{ EGBLFL }{Baseline Flag}
#'     \item{ VISITNUM }{Visit Number}
#'     \item{ VISIT }{Visit Name}
#'     \item{ VISITDY }{Planned Study Day of Visit}
#'     \item{ EGDTC }{Date/Time of ECG}
#'     \item{ EGDY }{Study Day of ECG}
#'     \item{ EGTPT }{Planned Time Point Name}
#'     \item{ EGTPTNUM }{Planned Time Point Number}
#'     \item{ EGELTM }{Planned Elapsed Time from Time Point Ref}
#'     \item{ EGTPTREF }{Time Point Reference}
#'     \item{ temp }{undocumented field}
#'     \item{ TRTSDT }{Date of First Exposure to Treatment}
#'     \item{ TRTEDT }{Date of Last Exposure to Treatment}
#'     \item{ TRT01A }{Actual Treatment for Period 01}
#'     \item{ TRT01P }{Planned Treatment for Period 01}
#'     \item{ ADTM }{Analysis Datetime}
#'     \item{ ATMF }{Analysis Time Imputation Flag}
#'     \item{ ADY }{Analysis Relative Day}
#'     \item{ PARAMCD }{Parameter Code}
#'     \item{ AVAL }{Analysis Value}
#'     \item{ AVALC }{Analysis Value (C)}
#'     \item{ ADT }{Analysis Date}
#'     \item{ ATPTN }{Analysis Timepoint (N)}
#'     \item{ ATPT }{Analysis Timepoint}
#'     \item{ AVISIT }{Analysis Visit}
#'     \item{ AVISITN }{Analysis Visit (N)}
#'     \item{ DTYPE }{Derivation Type}
#'     \item{ ONTRTFL }{On Treatment Record Flag}
#'     \item{ ANRLO }{Analysis Normal Range Lower Limit}
#'     \item{ ANRHI }{Analysis Normal Range Upper Limit}
#'     \item{ ANRIND }{Analysis Reference Range Indicator}
#'     \item{ BASETYPE }{Baseline Type}
#'     \item{ ABLFL }{Baseline Record Flag}
#'     \item{ BASE }{Baseline Value}
#'     \item{ BASEC }{Baseline Value (C)}
#'     \item{ BNRIND }{Baseline Reference Range Indicator}
#'     \item{ CHG }{Change from Baseline}
#'     \item{ PCHG }{Percent Change from Baseline}
#'     \item{ ANL01FL }{Analysis Flag 01}
#'     \item{ TRTP }{Planned Treatment}
#'     \item{ TRTA }{Actual Treatment}
#'     \item{ ASEQ }{Analysis Sequence Number}
#'     \item{ AVALCA1N }{Analysis Value Category 1 (N)}
#'     \item{ AVALCAT1 }{Analysis Value Category 1}
#'     \item{ CHGCAT1N }{Change from Baseline Category 1 (N)}
#'     \item{ CHGCAT1 }{Change from Baseline Category 1}
#'     \item{ PARAM }{Parameter}
#'     \item{ PARAMN }{Parameter (N)}
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
#' @source Generated from admiral package (template ad_adeg.R).
#' @references None
#'
#' @examples
#' data("adeg")
"adeg"
