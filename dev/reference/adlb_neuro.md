# Laboratory Analysis for Neuroscience

Laboratory Analysis for Neuroscience

## Usage

``` r
adlb_neuro
```

## Format

A data frame with 48 columns:

- STUDYID :

  Study Identifier

- USUBJID :

  Unique Subject Identifier

- DOMAIN :

  Domain Abbreviation

- TRT01P :

  Planned Treatment for Period 01

- TRT01A :

  Actual Treatment for Period 01

- TRTSDT :

  Date of First Exposure to Treatment

- TRTEDT :

  Date of Last Exposure to Treatment

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

- PARAMN :

  Parameter (N)

- AVAL :

  Analysis Value

- AVALC :

  Analysis Value (C)

- ANRLO :

  Analysis Normal Range Lower Limit

- ANRHI :

  Analysis Normal Range Upper Limit

- BASE :

  Baseline Value

- BASEC :

  Baseline Value (C)

- BASETYPE :

  Baseline Type

- CHG :

  Change from Baseline

- PCHG :

  Percent Change from Baseline

- ABLFL :

  Baseline Record Flag

- ANL01FL :

  Analysis Flag 01

- ANL02FL :

  Analysis Flag 02

- ONTRTFL :

  On Treatment Record Flag

- ASEQ :

  Analysis Sequence Number

- LBSEQ :

  Sequence Number

- LBTESTCD :

  Lab Test or Examination Short Name

- LBTEST :

  Lab Test or Examination Name

- LBCAT :

  Category for Lab Test

- LBORRES :

  Result or Finding in Original Units

- LBORRESU :

  Original Units

- LBORNRLO :

  Reference Range Lower Limit in Orig Unit

- LBORNRHI :

  Reference Range Upper Limit in Orig Unit

- LBSTRESC :

  Character Result/Finding in Std Format

- LBSTRESN :

  Numeric Result/Finding in Standard Units

- LBSTRESU :

  Standard Units

- LBSTNRLO :

  Reference Range Lower Limit-Std Units

- LBSTNRHI :

  Reference Range Upper Limit-Std Units

- LBNRIND :

  Reference Range Indicator

- LBBLFL :

  Baseline Flag

- VISITNUM :

  Visit Number

- VISIT :

  Visit Name

- VISITDY :

  Planned Study Day of Visit

- LBDTC :

  Date/Time of Specimen Collection

- LBDY :

  Study Day of Specimen Collection

## Source

Generated from admiralneuro package (template ad_adlb.R).

## Details

Contains a set of 6 unique Parameter Codes and Parameters:

|             |                                                                |
|-------------|----------------------------------------------------------------|
| **PARAMCD** | **PARAM**                                                      |
| AMYLB42     | Lumipulse G Beta-Amyloid 1-42-N Plasma (pg/mL)                 |
| ASYNASAA    | Alpha Synuclein Seed Amplification Assay (CSF)                 |
| LAMYLB42    | Log-Transformed Lumipulse G Beta-Amyloid 1-42-N Plasma (pg/mL) |
| PTAB42R     | Lumipulse G pTau 217/Beta-Amyloid 1-42 Plasma Ratio            |
| PTAU217     | Lumipulse G pTau 217 Plasma (pg/mL)                            |
| TAU181P     | Elecsys Tau Protein Phosphorylated 181                         |

## References

None

## Examples

``` r
data("adlb_neuro")
```
