# Time to Event Analysis for Oncology

Time to Event Analysis for Oncology

## Usage

``` r
adtte_onco
```

## Format

A data frame with 20 columns:

- STUDYID :

  Study Identifier

- USUBJID :

  Unique Subject Identifier

- ASEQ :

  Analysis Sequence Number

- AGE :

  Age

- SEX :

  Sex

- ARM :

  Description of Planned Arm

- ARMCD :

  Planned Arm Code

- ACTARM :

  Description of Actual Arm

- ACTARMCD :

  Actual Arm Code

- ADT :

  Analysis Date

- PARAM :

  Parameter

- PARAMCD :

  Parameter Code

- AVAL :

  Analysis Value

- STARTDT :

  Time-to-Event Origin Date for Subject

- CNSR :

  Censor

- EVNTDESC :

  Event or Censoring Description

- CNSDTDSC :

  Censor Date Description

- SRCDOM :

  Source Data

- SRCVAR :

  Source Variable

- SRCSEQ :

  Source Sequence Number

## Source

Generated from admiralonco package (template ad_adtte.R).

## Details

Contains a set of 3 unique Parameter Codes and Parameters:

|             |                           |
|-------------|---------------------------|
| **PARAMCD** | **PARAM**                 |
| OS          | Overall Survival          |
| PFS         | Progression Free Survival |
| RSD         | Duration of Response      |

## References

None

## Examples

``` r
data("adtte_onco")
```
