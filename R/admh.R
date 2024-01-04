#' Dataset admh
#'
#' admh dataset
#'
#' @name admh
#' @docType data
#' @format A data frame with 110 columns:
#'   \describe{
#'     \item{ STUDYID }{Study Identifier}
#'     \item{ DOMAIN }{Domain Abbreviation}
#'     \item{ USUBJID }{Unique Subject Identifier}
#'     \item{ MHSEQ }{Sequence Number}
#'     \item{ MHSPID }{Sponsor-Defined Identifier}
#'     \item{ MHTERM }{Reported Term for the Medical History}
#'     \item{ MHLLT }{Lowest Level Term}
#'     \item{ MHDECOD }{Dictionary-Derived Term}
#'     \item{ MHHLT }{High Level Term}
#'     \item{ MHHLGT }{High Level Group Term}
#'     \item{ MHCAT }{Category for Medical History}
#'     \item{ MHBODSYS }{Body System or Organ Class}
#'     \item{ MHSEV }{Severity/Intensity}
#'     \item{ VISITNUM }{Visit Number}
#'     \item{ VISIT }{Visit Name}
#'     \item{ VISITDY }{Planned Study Day of Visit}
#'     \item{ MHDTC }{Date/Time of History Collection}
#'     \item{ MHSTDTC }{Start Date/Time of Medical History Event}
#'     \item{ MHDY }{Study Day of History Collection}
#'     \item{ MHENDTC }{End Date/Time of Medical History Event}
#'     \item{ MHPRESP }{Medical History Event Pre-Specified}
#'     \item{ MHOCCUR }{Medical History Occurrence}
#'     \item{ MHSTRTPT }{Start Relative to Reference Time Point}
#'     \item{ MHENRTPT }{End Relative to Reference Time Point}
#'     \item{ MHSTTPT }{Start Reference Time Point}
#'     \item{ MHENTPT }{End Reference Time Point}
#'     \item{ MHENRF }{End Relative to Reference Period}
#'     \item{ MHSTAT }{Completion Status}
#'     \item{ TRTSDT }{Date of First Exposure to Treatment}
#'     \item{ TRTEDT }{Date of Last Exposure to Treatment}
#'     \item{ TRT01A }{Actual Treatment for Period 01}
#'     \item{ TRT01P }{Planned Treatment for Period 01}
#'     \item{ DTHDT }{Date of Death}
#'     \item{ EOSDT }{End of Study Date}
#'     \item{ ASTDT }{Analysis Start Date}
#'     \item{ AENDT }{Analysis End Date}
#'     \item{ ASTDY }{Analysis Start Relative Day}
#'     \item{ AENDY }{Analysis End Relative Day}
#'     \item{ ADT }{Analysis Date}
#'     \item{ ADY }{Analysis Relative Day}
#'     \item{ SMQ02NAM }{SMQ 02 Name}
#'     \item{ SMQ02CD }{SMQ 02 Code}
#'     \item{ SMQ02SC }{SMQ 02 Scope}
#'     \item{ SMQ02SCN }{SMQ 02 Scope (N)}
#'     \item{ SMQ03NAM }{SMQ 03 Name}
#'     \item{ SMQ03CD }{SMQ 03 Code}
#'     \item{ SMQ03SC }{SMQ 03 Scope}
#'     \item{ SMQ03SCN }{SMQ 03 Scope (N)}
#'     \item{ SMQ05NAM }{SMQ 05 Name}
#'     \item{ SMQ05CD }{SMQ 05 Code}
#'     \item{ SMQ05SC }{SMQ 05 Scope}
#'     \item{ SMQ05SCN }{SMQ 05 Scope (N)}
#'     \item{ CQ01NAM }{Customized Query 01 Name}
#'     \item{ CQ04NAM }{Customized Query 04 Name}
#'     \item{ CQ04CD }{Customized Query 04 Code}
#'     \item{ AHIST }{Response of Med Hx (past or current)}
#'     \item{ AOCCFL }{1st Occurrence within Subject Flag}
#'     \item{ AOCCSFL }{1st Occurrence of SOC Flag}
#'     \item{ AOCCPFL }{1st Occurrence of Preferred Term Flag}
#'     \item{ AOCPFL }{1st Occur w/in Trt Prd FL}
#'     \item{ AOCPSFL }{1st Occur of SOC w/in Trt Prd FL}
#'     \item{ AOCPPFL }{1st Occur of PT w/in Trt Prd FL}
#'     \item{ ANL01FL }{Analysis Flag 01}
#'     \item{ TRTP }{Planned Treatment}
#'     \item{ TRTA }{Actual Treatment}
#'     \item{ APHASE }{Phase}
#'     \item{ APHASEN }{Description of Phase N}
#'     \item{ MHTERMN }{Medical History Term (N)}
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
#'     \item{ TRTETMF }{Treatment End Datetime Imput Flag}
#'     \item{ TRTDURD }{Total Treatment Duration (Days)}
#'     \item{ SCRFDT }{Screen Failure Date}
#'     \item{ EOSSTT }{End of Study Status}
#'     \item{ FRVDT }{Final Retrievel Visit Date}
#'     \item{ RANDDT }{Date of Randomization}
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
#' @source Generated from admiral package (template ad_admh.R).
#' @references None
#'
#' @examples
#' data("admh")
"admh"
