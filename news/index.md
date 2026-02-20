# Changelog

## pharmaverseadam 1.3.0

### New features

- Added `ADAPET`, `ADTPET` and `ADNV` from
  [admiralneuro](https://pharmaverse.github.io/admiralneuro/) using
  package version 0.2.1.
  ([\#138](https://github.com/pharmaverse/pharmaverseadam/issues/138))

- Added new [admiral](https://pharmaverse.github.io/admiral/) dataset
  for Anti-Drug Antibody data `ADAB`.
  ([\#143](https://github.com/pharmaverse/pharmaverseadam/issues/143))

### Documentation

- Refreshed
  [pharmaverseadam](https://pharmaverse.github.io/pharmaverseadam/)
  datasets using [admiral](https://pharmaverse.github.io/admiral/)
  1.4.1, [admiralonco](https://pharmaverse.github.io/admiralonco/)
  1.4.0, [admiralophtha](https://pharmaverse.github.io/admiralophtha/)
  1.4.0, [admiralvaccine](https://pharmaverse.github.io/admiralvaccine/)
  0.6.0, [admiralpeds](https://pharmaverse.github.io/admiralpeds/)
  0.3.0,
  [admiralmetabolic](https://pharmaverse.github.io/admiralmetabolic/)
  0.3.0,
  [pharmaversesdtm](https://pharmaverse.github.io/pharmaversesdtm/)
  1.4.0.
  ([\#147](https://github.com/pharmaverse/pharmaverseadam/issues/147))

- The reference page was updated to categorize datasets by therapeutic
  areas.
  ([\#137](https://github.com/pharmaverse/pharmaverseadam/issues/137))

- The dataset variables and specifications were ordered and grouped
  according to ADaM IG standards, and the reference page reflected this
  updated structure.
  ([\#128](https://github.com/pharmaverse/pharmaverseadam/issues/128))

- Added a new vignette “Explore ADaM Datasets” to preview all datasets
  included in the package.
  ([\#102](https://github.com/pharmaverse/pharmaverseadam/issues/102))

Developer Notes

- Updated [lintr](https://lintr.r-lib.org) configurations to use central
  configurations from
  [admiraldev](https://pharmaverse.github.io/admiraldev/).
  ([\#133](https://github.com/pharmaverse/pharmaverseadam/issues/133))

- Generated different sites for the development and released versions of
  the package.
  ([\#139](https://github.com/pharmaverse/pharmaverseadam/issues/139))

- Updated `create_adams_data.R` for cross-platform functionality.
  ([\#145](https://github.com/pharmaverse/pharmaverseadam/issues/145))

- Added downloads badge to the website.
  ([\#151](https://github.com/pharmaverse/pharmaverseadam/issues/151))

## pharmaverseadam 1.2.0

CRAN release: 2025-09-06

### New features

- Refreshed
  [pharmaverseadam](https://pharmaverse.github.io/pharmaverseadam/)
  datasets using [admiral](https://pharmaverse.github.io/admiral/)
  1.3.1.9006 (development version),
  [admiralonco](https://pharmaverse.github.io/admiralonco/) 1.3.0,
  [admiralophtha](https://pharmaverse.github.io/admiralophtha/) 1.3.0,
  [admiralvaccine](https://pharmaverse.github.io/admiralvaccine/)
  0.5.0.9000 (development version),
  [admiralpeds](https://pharmaverse.github.io/admiralpeds/) 0.2.1,
  [admiralmetabolic](https://pharmaverse.github.io/admiralmetabolic/)
  0.2.0.9000 (development version),
  [pharmaversesdtm](https://pharmaverse.github.io/pharmaversesdtm/)
  1.3.1.
  ([\#123](https://github.com/pharmaverse/pharmaverseadam/issues/123))

- Added `ADVS`, `ADLB` and `ADCOEQ` from
  [admiralmetabolic](https://pharmaverse.github.io/admiralmetabolic/)
  using package version 0.2.0.9000.
  ([\#105](https://github.com/pharmaverse/pharmaverseadam/issues/105))

*Note: This release uses development version 1.3.1.9006 of
[admiral](https://pharmaverse.github.io/admiral/) (with the updated
`ADLBHY` template), as well as development versions 0.5.0.9000 of
[admiralvaccine](https://pharmaverse.github.io/admiralvaccine/) and
0.2.0.9000 of
[admiralmetabolic](https://pharmaverse.github.io/admiralmetabolic/)
(with the templates directory issues fixed).*

### Documentation

- The package maintainer was updated from Edoardo Mancini to Fanny
  Gautier.
  ([\#115](https://github.com/pharmaverse/pharmaverseadam/issues/115))

- `Cytel Inc.` was added to the `LICENSE.md`.
  ([\#116](https://github.com/pharmaverse/pharmaverseadam/issues/116))

- Added more details to `README.md` “Documentation Process” section.
  ([\#103](https://github.com/pharmaverse/pharmaverseadam/issues/103))

- Improved reference page so that dataset labels are displayed under
  each dataset name.
  ([\#103](https://github.com/pharmaverse/pharmaverseadam/issues/103))

- Added labels to variables within datasets that were missing them.
  ([\#100](https://github.com/pharmaverse/pharmaverseadam/issues/100))

- Added parameter code and parameter (`PARAMCD` / `PARAM`) description
  in the “Details” section, when available.
  ([\#101](https://github.com/pharmaverse/pharmaverseadam/issues/101))

- Updated the installation instructions in `README.md`.
  ([\#124](https://github.com/pharmaverse/pharmaverseadam/issues/124))

Developer Notes

- Imported [tibble](https://tibble.tidyverse.org/) so that tibble
  formatting is not lost.
  ([\#95](https://github.com/pharmaverse/pharmaverseadam/issues/95))

- Added clearer error messages for template failures.
  ([\#121](https://github.com/pharmaverse/pharmaverseadam/issues/121))

- Added alternative text to the pharmaverse badge and logo.
  ([\#114](https://github.com/pharmaverse/pharmaverseadam/issues/114))

- Added copyright holder logos.
  ([\#113](https://github.com/pharmaverse/pharmaverseadam/issues/113))

## pharmaverseadam 1.1.0

CRAN release: 2024-10-25

Ad-hoc release.

### New features

- Added `ADVS` from
  [admiralpeds](https://pharmaverse.github.io/admiralpeds/) using
  version 0.1.1.9001 of the package.

- Refreshed
  [pharmaverseadam](https://pharmaverse.github.io/pharmaverseadam/)
  datasets using [admiral](https://pharmaverse.github.io/admiral/)
  1.1.1.9012 (development version),
  [admiralophtha](https://pharmaverse.github.io/admiralophtha/)
  1.1.0.9004 (development version),
  [admiralonco](https://pharmaverse.github.io/admiralonco/) 1.1.0,
  [admiralvaccine](https://pharmaverse.github.io/admiralvaccine/) 0.2.0,
  [pharmaversesdtm](https://pharmaverse.github.io/pharmaversesdtm/)
  1.1.0.
  ([\#85](https://github.com/pharmaverse/pharmaverseadam/issues/85))

### Documentation

- DESCRIPTION file updated ahead of CRAN release to fix link to CDISC
  website.

Developer Notes

- Activated automatic version bumping CICD workflow.
  ([\#72](https://github.com/pharmaverse/pharmaverseadam/issues/72))

## pharmaverseadam 1.0.0

CRAN release: 2024-07-01

The first stable version of
[pharmaverseadam](https://pharmaverse.github.io/pharmaverseadam/)!

### New features

- Refreshed
  [pharmaverseadam](https://pharmaverse.github.io/pharmaverseadam/)
  datasets using [admiral](https://pharmaverse.github.io/admiral/)
  1.1.1, [admiralophtha](https://pharmaverse.github.io/admiralophtha/)
  1.1.0, [admiralonco](https://pharmaverse.github.io/admiralonco/)
  1.1.0, [admiralvaccine](https://pharmaverse.github.io/admiralvaccine/)
  0.2.0.
  ([\#58](https://github.com/pharmaverse/pharmaverseadam/issues/58))

### Documentation

- Dataset labels were updated to align with ADaM IG.
  ([\#64](https://github.com/pharmaverse/pharmaverseadam/issues/64))

## pharmaverseadam 0.2.0

CRAN release: 2024-01-08

### New Features

- `ADPC`, `ADPPK` and `ADPP` were updated to handle urine records.
  ([\#57](https://github.com/pharmaverse/pharmaverseadam/issues/57))

### Documentation

- Variables labels were applied to datasets by `metacore`/`metatools`.
  ([\#50](https://github.com/pharmaverse/pharmaverseadam/issues/50))

## pharmaverseadam 0.1.1

CRAN release: 2023-09-20

### Documentation

- DESCRIPTION file updated ahead of CRAN release to include references
  to ADaM Implementation Guide 1.3.

## pharmaverseadam 0.1.0

### New Features

- Test ADaM data created from
  [admiral](https://pharmaverse.github.io/admiral/) templates are added.
