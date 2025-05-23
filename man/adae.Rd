% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adae.R
\docType{data}
\name{adae}
\alias{adae}
\title{Adverse Events Analysis}
\format{
A data frame with 105 columns:
\describe{
\item{ STUDYID }{Study Identifier}
\item{ DOMAIN }{Domain Abbreviation}
\item{ USUBJID }{Unique Subject Identifier}
\item{ AESEQ }{Sequence Number}
\item{ AESPID }{Sponsor-Defined Identifier}
\item{ AETERM }{Reported Term for the Adverse Event}
\item{ AELLT }{Lowest Level Term}
\item{ AELLTCD }{Lowest Level Term Code}
\item{ AEDECOD }{Dictionary-Derived Term}
\item{ AEPTCD }{Preferred Term Code}
\item{ AEHLT }{High Level Term}
\item{ AEHLTCD }{High Level Term Code}
\item{ AEHLGT }{High Level Group Term}
\item{ AEHLGTCD }{High Level Group Term Code}
\item{ AEBODSYS }{Body System or Organ Class}
\item{ AEBDSYCD }{Body System or Organ Class Code}
\item{ AESOC }{Primary System Organ Class}
\item{ AESOCCD }{Primary System Organ Class Code}
\item{ AESEV }{Severity/Intensity}
\item{ AESER }{Serious Event}
\item{ AEACN }{Action Taken with Study Treatment}
\item{ AEREL }{Causality}
\item{ AEOUT }{Outcome of Adverse Event}
\item{ AESCAN }{Involves Cancer}
\item{ AESCONG }{Congenital Anomaly or Birth Defect}
\item{ AESDISAB }{Persist or Signif Disability/Incapacity}
\item{ AESDTH }{Results in Death}
\item{ AESHOSP }{Requires or Prolongs Hospitalization}
\item{ AESLIFE }{Is Life Threatening}
\item{ AESOD }{Occurred with Overdose}
\item{ AEDTC }{Date/Time of Collection}
\item{ AESTDTC }{Start Date/Time of Adverse Event}
\item{ AEENDTC }{End Date/Time of Adverse Event}
\item{ AESTDY }{Study Day of Start of Adverse Event}
\item{ AEENDY }{Study Day of End of Adverse Event}
\item{ TRTSDT }{Date of First Exposure to Treatment}
\item{ TRTEDT }{Date of Last Exposure to Treatment}
\item{ DTHDT }{Date of Death}
\item{ EOSDT }{End of Study Date}
\item{ ASTDTM }{Analysis Start Date/Time}
\item{ ASTDTF }{Analysis Start Date Imputation Flag}
\item{ ASTTMF }{Analysis Start Time Imputation Flag}
\item{ AENDTM }{Analysis End Date/Time}
\item{ AENDTF }{Analysis End Date Imputation Flag}
\item{ AENTMF }{Analysis End Time Imputation Flag}
\item{ ASTDT }{Analysis Start Date}
\item{ AENDT }{Analysis End Date}
\item{ ASTDY }{Analysis Start Relative Day}
\item{ AENDY }{Analysis End Relative Day}
\item{ ADURN }{Analysis Duration (N)}
\item{ ADURU }{Analysis Duration Units}
\item{ LDOSEDTM }{End Date/Time of Last Dose}
\item{ ASEV }{Analysis Severity/Intensity}
\item{ AREL }{Analysis Causality}
\item{ TRTEMFL }{Treatment Emergent Analysis Flag}
\item{ ASEVN }{Analysis Severity/Intensity (N)}
\item{ AOCCIFL }{1st Max Sev./Int. Occurrence Flag}
\item{ SUBJID }{Subject Identifier for the Study}
\item{ RFSTDTC }{Subject Reference Start Date/Time}
\item{ RFENDTC }{Subject Reference End Date/Time}
\item{ RFXSTDTC }{Date/Time of First Study Treatment}
\item{ RFXENDTC }{Date/Time of Last Study Treatment}
\item{ RFICDTC }{Date/Time of Informed Consent}
\item{ RFPENDTC }{Date/Time of End of Participation}
\item{ DTHDTC }{Date/Time of Death}
\item{ DTHFL }{Subject Death Flag}
\item{ SITEID }{Study Site Identifier}
\item{ AGE }{Age}
\item{ AGEU }{Age Units}
\item{ SEX }{Sex}
\item{ RACE }{Race}
\item{ ETHNIC }{Ethnicity}
\item{ ARMCD }{Planned Arm Code}
\item{ ARM }{Description of Planned Arm}
\item{ ACTARMCD }{Actual Arm Code}
\item{ ACTARM }{Description of Actual Arm}
\item{ COUNTRY }{Country}
\item{ DMDTC }{Date/Time of Collection}
\item{ DMDY }{Study Day of Collection}
\item{ TRT01P }{Planned Treatment for Period 01}
\item{ TRT01A }{Actual Treatment for Period 01}
\item{ TRTSDTM }{Datetime of First Exposure to Treatment}
\item{ TRTSTMF }{Time of First Exposure Imput. Flag}
\item{ TRTEDTM }{Datetime of Last Exposure to Treatment}
\item{ TRTETMF }{Time of Last Exposure Imput. Flag}
\item{ TRTDURD }{Total Treatment Duration (Days)}
\item{ SCRFDT }{Screen Failure Date}
\item{ EOSSTT }{End of Study Status}
\item{ FRVDT }{Final Retrieval Visit Date}
\item{ RANDDT }{Date of Randomization}
\item{ DTHDTF }{Date of Death Imputation Flag}
\item{ DTHADY }{Relative Day of Death}
\item{ LDDTHELD }{Elapsed Days from Last Dose to Death}
\item{ DTHCAUS }{Cause of Death}
\item{ DTHDOM }{Domain for Date of Death Collection}
\item{ DTHCGR1 }{Cause of Death Reason 1}
\item{ LSTALVDT }{Date Last Known Alive}
\item{ SAFFL }{Safety Population Flag}
\item{ RACEGR1 }{Pooled Race Group 1}
\item{ AGEGR1 }{Pooled Age Group 1}
\item{ REGION1 }{Geographic Region 1}
\item{ LDDTHGR1 }{Last Dose to Death - Days Elapsed Grp 1}
\item{ DTH30FL }{Death Within 30 Days of Last Trt Flag}
\item{ DTHA30FL }{Death After 30 Days from Last Trt Flag}
\item{ DTHB30FL }{Death Within 30 Days of First Trt Flag}
}
}
\source{
Generated from admiral package (template ad_adae.R).
}
\usage{
adae
}
\description{
Adverse Events Analysis
}
\examples{
data("adae")
}
\references{
None
}
\keyword{datasets}
