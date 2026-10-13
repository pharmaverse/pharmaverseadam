# Visual Function Questionnaire Analysis

Visual Function Questionnaire Analysis

## Usage

``` r
advfq_ophtha
```

## Format

A data frame with 93 columns:

- STUDYID :

  Study Identifier

- USUBJID :

  Unique Subject Identifier

- SUBJID :

  Subject Identifier for the Study

- SITEID :

  Study Site Identifier

- COUNTRY :

  Country

- DOMAIN :

  Domain Abbreviation

- RFSTDTC :

  Subject Reference Start Date/Time

- RFENDTC :

  Subject Reference End Date/Time

- RFXSTDTC :

  Date/Time of First Study Treatment

- RFXENDTC :

  Date/Time of Last Study Treatment

- RFPENDTC :

  Date/Time of End of Participation

- SCRFDT :

  Screen Failure Date

- FRVDT :

  Final Retrieval Visit Date

- DTHDTC :

  Date/Time of Death

- DTHADY :

  Relative Day of Death

- DTHFL :

  Subject Death Flag

- LDDTHELD :

  Elapsed Days from Last Dose to Death

- LDDTHGR1 :

  Last Dose to Death - Days Elapsed Grp 1

- DTH30FL :

  Death Within 30 Days of Last Trt Flag

- DTHA30FL :

  Death After 30 Days from Last Trt Flag

- DTHDOM :

  Domain for Date of Death Collection

- DTHB30FL :

  Death Within 30 Days of First Trt Flag

- ASEQ :

  Analysis Sequence Number

- REGION1 :

  Geographic Region 1

- DMDTC :

  Date/Time of Collection

- DMDY :

  Study Day of Collection

- AGE :

  Age

- AGEU :

  Age Units

- AGEGR1 :

  Pooled Age Group 1

- SEX :

  Sex

- RACE :

  Race

- RACEGR1 :

  Pooled Race Group 1

- ETHNIC :

  Ethnicity

- SAFFL :

  Safety Population Flag

- ARM :

  Description of Planned Arm

- ARMCD :

  Planned Arm Code

- ACTARM :

  Description of Actual Arm

- ACTARMCD :

  Actual Arm Code

- TRT01P :

  Planned Treatment for Period 01

- TRT01A :

  Actual Treatment for Period 01

- TRTSDT :

  Date of First Exposure to Treatment

- TRTSDTM :

  Datetime of First Exposure to Treatment

- TRTSTMF :

  Time of First Exposure Imput. Flag

- TRTEDT :

  Date of Last Exposure to Treatment

- TRTEDTM :

  Datetime of Last Exposure to Treatment

- TRTETMF :

  Time of Last Exposure Imput. Flag

- EOSSTT :

  End of Study Status

- EOSDT :

  End of Study Date

- RFICDTC :

  Date/Time of Informed Consent

- RANDDT :

  Date of Randomization

- LSTALVDT :

  Date Last Known Alive

- TRTDURD :

  Total Treatment Duration (Days)

- DTHDT :

  Date of Death

- DTHDTF :

  Date of Death Imputation Flag

- DTHCAUS :

  Cause of Death

- DTHCGR1 :

  Cause of Death Reason 1

- ADT :

  Analysis Date

- ADY :

  Analysis Relative Day

- AVISIT :

  Analysis Visit

- AVISITN :

  Analysis Visit (N)

- PARAM :

  Parameter

- PARAMCD :

  Parameter Code

- PARCAT1 :

  Parameter Category 1

- PARCAT2 :

  Parameter Category 2

- PARCAT3 :

  Parameter Category 3

- PARCAT4 :

  Parameter Category 4

- PARCAT5 :

  Parameter Category 5

- AVAL :

  Analysis Value

- AVALC :

  Analysis Value (C)

- BASETYPE :

  Baseline Type

- BASE :

  Baseline Value

- CHG :

  Change from Baseline

- PCHG :

  Percent Change from Baseline

- ABLFL :

  Baseline Record Flag

- ANL01FL :

  Analysis Flag 01

- ONTRTFL :

  On Treatment Record Flag

- QSSEQ :

  Sequence Number

- QSTESTCD :

  Question Short Name

- QSTEST :

  Question Name

- QSCAT :

  Category of Question

- QSSCAT :

  Subcategory for Question

- QSORRES :

  Finding in Original Units

- QSORRESU :

  Original Units

- QSSTRESC :

  Character Result/Finding in Std Format

- QSSTRESN :

  Numeric Finding in Standard Units

- QSSTRESU :

  Standard Units

- QSBLFL :

  Baseline Flag

- QSDRVFL :

  Derived Flag

- VISITNUM :

  Visit Number

- VISIT :

  Visit Name

- VISITDY :

  Planned Study Day of Visit

- QSDTC :

  Date/Time of Finding

- QSDY :

  Study Day of Finding

## Source

Generated from admiralophtha package (template ad_advfq.R).

## Details

Contains a set of 81 unique Parameter Codes and Parameters:

|             |                                                                  |
|-------------|------------------------------------------------------------------|
| **PARAMCD** | **PARAM**                                                        |
| QBCSCORE    | Composite Score                                                  |
| QOCSCORE    | Composite Score (incl. Optional Items)                           |
| QR01        | Transformed - Your Overall Health Is                             |
| QR02        | Transformed - Eyesight Using Both Eyes Is                        |
| QR03        | Transformed - How Often You Worry About Eyesight                 |
| QR04        | Transformed - How Much Pain in and Around Eyes                   |
| QR05        | Transformed - Difficulty Reading Newspapers                      |
| QR06        | Transformed - Difficulty Doing Work/Hobbies                      |
| QR07        | Transformed - Difficulty Finding on Crowded Shelf                |
| QR08        | Transformed - Difficulty Reading Street Signs                    |
| QR09        | Transformed - Difficulty Going Down Step at Night                |
| QR10        | Transformed - Difficulty Noticing Objects to Side                |
| QR11        | Transformed - Difficulty Seeing How People React                 |
| QR12        | Transformed - Difficulty Picking Out Own Clothes                 |
| QR13        | Transformed - Difficulty Visiting With People                    |
| QR14        | Transformed - Difficulty Going Out to See Movies                 |
| QR15C       | Transformed - Main Reason You Gave Up Driving                    |
| QR16        | Transformed - Difficulty Driving at Night                        |
| QR16A       | Transformed - Driving in Difficult Conditions                    |
| QR19        | Transformed - Eye Pain Keep From Doing What Like                 |
| QR20        | Transformed - I Stay Home Most of the Time                       |
| QR21        | Transformed - I Feel Frustrated a Lot of the Time                |
| QR24        | Transformed - I Need a Lot of Help From Others                   |
| QR25        | Transformed - Worry I'll Do Embarrassing Things                  |
| QRA03       | Transformed - Difficulty Reading Small Print                     |
| QRA04       | Transformed - Difficulty Figure Out Bill Accuracy                |
| QRA05       | Transformed - Difficulty Shaving or Styling Hair                 |
| QRA06       | Transformed - Difficulty Recognizing People                      |
| QRA07       | Transformed - Difficulty Taking Part in Sports                   |
| QRA08       | Transformed - Difficulty Seeing Programs on TV                   |
| QSBCV       | Color Vision Score                                               |
| QSBDA       | Distance Activities Score                                        |
| QSBDP       | Vision Specific: Dependency Score                                |
| QSBDR       | Driving Score                                                    |
| QSBGH       | General Health Score                                             |
| QSBGV       | General Vision Score                                             |
| QSBMH       | Vision Specific: Mental Health Score                             |
| QSBNA       | Near Activities Score                                            |
| QSBOP       | Ocular Pain Score                                                |
| QSBPV       | Peripheral Vision Score                                          |
| QSBSF       | Vision Specific: Social Functioning Score                        |
| QSOCV       | Color Vision Score (incl. Optional Items)                        |
| QSODA       | Distance Activities Score (incl. Optional Items)                 |
| QSODP       | Vision Specific: Dependency Score (incl. Optional Items)         |
| QSODR       | Driving Score (incl. Optional Items)                             |
| QSOGH       | General Health Score (incl. Optional Items)                      |
| QSOGV       | General Vision Score (incl. Optional Items)                      |
| QSOMH       | Vision Specific: Mental Health Score (incl. Optional Items)      |
| QSONA       | Near Activities Score (incl. Optional Items)                     |
| QSOOP       | Ocular Pain Score (incl. Optional Items)                         |
| QSOPV       | Peripheral Vision Score (incl. Optional Items)                   |
| QSOSF       | Vision Specific: Social Functioning Score (incl. Optional Items) |
| VFQ101      | Your Overall Health Is                                           |
| VFQ102      | Eyesight Using Both Eyes Is                                      |
| VFQ103      | How Often You Worry About Eyesight                               |
| VFQ104      | How Much Pain in and Around Eyes                                 |
| VFQ105      | Difficulty Reading Newspapers                                    |
| VFQ106      | Difficulty Doing Work/Hobbies                                    |
| VFQ107      | Difficulty Finding on Crowded Shelf                              |
| VFQ108      | Difficulty Reading Street Signs                                  |
| VFQ109      | Difficulty Going Down Step at Night                              |
| VFQ110      | Difficulty Noticing Objects to Side                              |
| VFQ111      | Difficulty Seeing How People React                               |
| VFQ112      | Difficulty Picking Out Own Clothes                               |
| VFQ113      | Difficulty Visiting With People                                  |
| VFQ114      | Difficulty Going Out to See Movies                               |
| VFQ115      | Are You Currently Driving                                        |
| VFQ115C     | Difficulty Driving During Daytime                                |
| VFQ116      | Difficulty Driving at Night                                      |
| VFQ116A     | Driving in Difficult Conditions                                  |
| VFQ119      | Eye Pain Keep From Doing What Like                               |
| VFQ120      | I Stay Home Most of the Time                                     |
| VFQ121      | I Feel Frustrated a Lot of the Time                              |
| VFQ124      | I Need a Lot of Help From Others                                 |
| VFQ125      | Worry I'll Do Embarrassing Things                                |
| VFQ1A03     | Difficulty Reading Small Print                                   |
| VFQ1A04     | Difficulty Figure Out Bill Accuracy                              |
| VFQ1A05     | Difficulty Shaving or Styling Hair                               |
| VFQ1A06     | Difficulty Recognizing People                                    |
| VFQ1A07     | Difficulty Taking Part in Sports                                 |
| VFQ1A08     | Difficulty Seeing Programs on TV                                 |

## References

None

## Examples

``` r
data("advfq_ophtha")
```
