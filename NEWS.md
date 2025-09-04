# pharmaverseadam (development version)

## New features

  - Refreshed `{pharmaverseadam}` datasets using `{admiral}` 1.3.1, `{admiralonco}` 1.2.0, `{admiralophtha}` 1.3.0, `{admiralvaccine}` 0.5.0.9000 (development version), `{admiralpeds}` 0.2.1, `{admiralmetabolic}` 0.2.0.9000 (development version), `{pharmaversesdtm}` 1.3.1. (#123)
  
    _Note: This uses the development version 0.5.0.9000 of `{admiralvaccine}` and 0.2.0.9000 of `{admiralmetabolic}`, in which the templates directory issues have been fixed._
    
  - Added `ADVS`, `ADLB` and `ADCOEQ` from `{admiralmetabolic}` using package version 0.2.0.9000. (#105)
  
    _Note: This uses the development version 0.2.0.9000, in which the templates directory issue has been fixed._
  
  - Refreshed `{pharmaverseadam}` datasets using `{admiral}` 1.1.1.9019 (development version), `{admiralophtha}` 1.2.0.9001 (development version), `{admiralonco}` 1.2.0, `{admiralvaccine}` 0.4.0, `{pharmaversesdtm}` 1.2.0 (development version). (#103)

## Documentation

  - The package maintainer was updated from Edoardo Mancini to Fanny Gautier. (#115)

  - `Cytel Inc.` was added to the `LICENSE.md`. (#116)

  - Added more details to README "Documentation Process" section. (#103)

  - Improved reference page so that dataset labels are displayed under each dataset name. (#103)

  - Added labels to variables within datasets that were missing them. (#100)
  
  - Added parameter code and parameter (`PARAMCD` / `PARAM`) description in the "Details" section, when available. (#101)

  - Updated the installation instructions in `README.md`. (#124)

<details>
<summary>Developer Notes</summary>

- Imported `{tibble}` so that tibble formatting is not lost. (#95)

- Added clearer error messages for template failures. (#121)

- Added alternative text to the pharmaverse badge and logo. (#114)

- Added copyright holder logos. (#113)

</details>

# pharmaverseadam 1.1.0

Ad-hoc release.

## New features

  - Added `ADVS` from `{admiralpeds}` using version 0.1.1.9001 of the package.

  - Refreshed `{pharmaverseadam}` datasets using `{admiral}` 1.1.1.9012 (development version) `{admiralophtha}` 1.1.0.9004 (development version), `{admiralonco}` 1.1.0, `{admiralvaccine}` 0.2.0, `{pharmaversesdtm}` 1.1.0. (#85)

## Documentation

  - DESCRIPTION file updated ahead of CRAN release to fix link to CDISC website.
 
<details>
<summary>Developer Notes</summary>

  - Activated automatic version bumping CICD workflow. (#72)

</details>

# pharmaverseadam 1.0.0

The first stable version of `{pharmaverseadam}`!

## New features

  - Refreshed `{pharmaverseadam}` datasets using `{admiral}` 1.1.1, `{admiralophtha}` 1.1.0, `{admiralonco}` 1.1.0, `{admiralvaccine}` 0.2.0. (#58)
  
## Documentation

  - Dataset labels were updated to align with ADaM IG. (#64) 

# pharmaverseadam 0.2.0

## New Features

  - ADPC, ADPPK and ADPP were updated to handle urine records. (#57)
  
## Documentation

  - Variables labels were applied to datasets by `metacore`/`metatools`. (#50)

# pharmaverseadam 0.1.1

## Documentation

  - DESCRIPTION file updated ahead of CRAN release to include references to ADaM Implementation Guide 1.3.

# pharmaverseadam 0.1.0

## New Features

  - Test ADaM data created from `{admiral}` templates are added.
  
