#' Dataset adex
#'
#' Exposure Analysis
#'
#' @name adex
#' @docType data
#' @format A data frame with 88 columns:
#'   \describe{
#'     \item{ STUDYID }{Study Identifier}
#'     \item{ DOMAIN }{Domain Abbreviation}
#'     \item{ USUBJID }{Unique Subject Identifier}
#'     \item{ EXSEQ }{Sequence Number}
#'     \item{ EXTRT }{Name of Treatment}
#'     \item{ EXDOSE }{Dose}
#'     \item{ EXDOSU }{Dose Units}
#'     \item{ EXDOSFRM }{Dose Form}
#'     \item{ EXDOSFRQ }{Dosing Frequency per Interval}
#'     \item{ EXROUTE }{Route of Administration}
#'     \item{ VISITNUM }{Visit Number}
#'     \item{ VISIT }{Visit Name}
#'     \item{ VISITDY }{Planned Study Day of Visit}
#'     \item{ EXSTDTC }{Start Date/Time of Treatment}
#'     \item{ EXENDTC }{End Date/Time of Treatment}
#'     \item{ EXSTDY }{Study Day of Start of Treatment}
#'     \item{ EXENDY }{Study Day of End of Treatment}
#'     \item{ EXADJ }{Reason for Dose Adjustment}
#'     \item{ EXPLDOS }{Planned Dose}
#'     \item{ TRTSDT }{Date of First Exposure to Treatment}
#'     \item{ TRTSDTM }{Datetime of First Exposure to Treatment}
#'     \item{ TRTEDTM }{Datetime of Last Exposure to Treatment}
#'     \item{ ASTDTM }{Analysis Start Datetime}
#'     \item{ ASTDTF }{Analysis Start Date Imputation Flag}
#'     \item{ ASTTMF }{Analysis Start Time Imputation Flag}
#'     \item{ AENDTM }{Analysis End Datetime}
#'     \item{ AENDTF }{Analysis End Date Imputation Flag}
#'     \item{ AENTMF }{Analysis End Time Imputation Flag}
#'     \item{ ASTDY }{Analysis Start Relative Day}
#'     \item{ AENDY }{Analysis End Relative Day}
#'     \item{ EXDURD }{Duration of Treatment (Days)}
#'     \item{ ASTDT }{Analysis Start Date}
#'     \item{ AENDT }{Analysis End Date}
#'     \item{ DOSEO }{Dose O}
#'     \item{ PDOSEO }{PDose O}
#'     \item{ PARAMCD }{Parameter Code}
#'     \item{ AVAL }{Analysis Value}
#'     \item{ AVALC }{Analysis Value (C)}
#'     \item{ PARCAT1 }{Parameter Category 1}
#'     \item{ PARAM }{Parameter}
#'     \item{ PARAMN }{Parameter (N)}
#'     \item{ AVALCAT1 }{Analysis Value Category 1}
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
#'     \item{ TRT01P }{Planned Treatment for Period 01}
#'     \item{ TRT01A }{Actual Treatment for Period 01}
#'     \item{ TRTSTMF }{Time of First Exposure Imput. Flag}
#'     \item{ TRTETMF }{Time of Last Exposure Imput. Flag}
#'     \item{ TRTEDT }{Date of Last Exposure to Treatment}
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
#' @source Generated from admiral package (template ad_adex.R).
#' @references None
#'
#' @examples
#' data("adex")
"adex"
