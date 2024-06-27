#' Population Pharmacokinetic
#'
#' A template of ADPPK ADaM dataset
#'
#' @name adppk
#' @docType data
#' @format A data frame with 61 columns:
#'   \describe{
#'     \item{ STUDYID }{Study Identifier}
#'     \item{ USUBJID }{Unique Subject Identifier}
#'     \item{ EVID }{Event ID}
#'     \item{ NFRLT }{Nom. Rel. Time from Analyte First Dose}
#'     \item{ AFRLT }{Act. Rel. Time from Analyte First Dose}
#'     \item{ APRLT }{Actual Rel Time from Previous Dose}
#'     \item{ NPRLT }{Nominal Rel Time from Previous Dose}
#'     \item{ DOSEA }{Actual Treatment Dose}
#'     \item{ DOSEP }{Planned Treatment Dose}
#'     \item{ PARAMCD }{Parameter Code}
#'     \item{ ALLOQ }{Analysis Lower Limit of Quantitation}
#'     \item{ CMT }{Compartment}
#'     \item{ BLQFL }{Below Lower Limit of Quant Flag}
#'     \item{ BLQFN }{Below Lower Limit of Quant Flag (N)}
#'     \item{ AMT }{Actual Amount of Dose Received (unit)}
#'     \item{ DV }{Dependent Variable Result}
#'     \item{ AVAL }{Analysis Value}
#'     \item{ DVL }{Log DV}
#'     \item{ MDV }{Missing Dependent Variable Result}
#'     \item{ AVALU }{Analysis Value Unit}
#'     \item{ UDTC }{Date/Time}
#'     \item{ II }{Dosing Interval (unit)}
#'     \item{ SS }{Steady State}
#'     \item{ ASEQ }{Analysis Sequence Number}
#'     \item{ PARAM }{Parameter}
#'     \item{ PARAMN }{Parameter (N)}
#'     \item{ PROJID }{Project Identifier}
#'     \item{ PROJIDN }{Project Identifier (N)}
#'     \item{ STUDYIDN }{Study Identifier (N)}
#'     \item{ SITEID }{Study Site Identifier}
#'     \item{ SITEIDN }{Study Site Identifier (N)}
#'     \item{ USUBJIDN }{Unique Subject Identifier (N)}
#'     \item{ SUBJID }{Subject Identifier for the Study}
#'     \item{ SUBJIDN }{Subject Identifier for the Study (N)}
#'     \item{ AGE }{Age}
#'     \item{ SEX }{Sex}
#'     \item{ SEXN }{Sex (N)}
#'     \item{ COHORT }{Cohort Subject Enrolled Into}
#'     \item{ COHORTC }{Description of Planned Arm}
#'     \item{ ROUTE }{Route of Administration}
#'     \item{ ROUTEN }{Route of Administration (N)}
#'     \item{ RACE }{Race}
#'     \item{ RACEN }{Race (N)}
#'     \item{ ETHNIC }{Ethnicity}
#'     \item{ ETHNICN }{Ethnicity (N)}
#'     \item{ FORM }{Drug Formulation}
#'     \item{ FORMN }{Drug Formulation (N)}
#'     \item{ COUNTRY }{Country}
#'     \item{ COUNTRYN }{Country (N)}
#'     \item{ COUNTRYL }{Country Name}
#'     \item{ HTBL }{Numeric Result/Finding in Standard Units}
#'     \item{ WTBL }{Numeric Result/Finding in Standard Units}
#'     \item{ ALTBL }{Numeric Result/Finding in Standard Units}
#'     \item{ ASTBL }{Numeric Result/Finding in Standard Units}
#'     \item{ TBILBL }{Numeric Result/Finding in Standard Units}
#'     \item{ CREATBL }{Numeric Result/Finding in Standard Units}
#'     \item{ BMIBL }{Baseline Body Mass Index (kg/m2)}
#'     \item{ BSABL }{Numeric Result/Finding in Standard Units}
#'     \item{ CRCLBL }{Baseline Creatinine Clearance}
#'     \item{ EGFRBL }{Age}
#'     \item{ RECSEQ }{Record Sequence}
#'   }
#'
#' @source Generated from admiral package (template ad_adppk.R).
#' @references None
#'
#' @examples
#' data("adppk")
"adppk"
