# pharmaverseadam <img src="man/figures/logo.png" align="right" width="200" style="margin-left:50px;" alt="pharmaverse adam hex"/>

<!-- badges: start -->

[![pharmaverse adam Badge](http://pharmaverse.org/shields/pharmaverseadam.svg)](https://pharmaverse.org)
[![CRAN status](https://www.r-pkg.org/badges/version/pharmaverseadam)](https://CRAN.R-project.org/package=pharmaverseadam)

<!-- badges: end -->

Test data (ADaM) for the pharmaverse family of packages

## Purpose

To provide a one-stop-shop for ADaM test data in the pharmaverse family of packages.

## Package Contents

The ADaM contents of this package is populated by an script that executes the `{admiral}`, `{admiralonco}`, `{admiralophtha}`, `{admiralvaccine}` and `{admiralpeds}` templates and saves the resulting datasets here. This script can be executed by the package maintainers in two scenarios:

*   Regularly, upon new releases of these packages;
*   Ad-hoc, whenever templates in the above packages have been updated but releases are far away in the calendar. In this case, the ADaM datasets are created using a development version of the templates.

Please check the [Changelog](https://pharmaverse.github.io/pharmaverseadam/news/index.html) to see the versions of the packages used to generate the ADaM datasets in current or past version of `{pharmaverseadam}`. Please see the [Dataset Creation and Documentation Process](#doc) for details on the script.

## Installation

The package is available from CRAN and can be installed by running `install.packages("pharmaverseadam")`. To install the latest development version of the package directly from GitHub use the following code:

```         
if (!requireNamespace("remotes", quietly = TRUE)) {
      install.packages("remotes")
    }
    
remotes::install_github("pharmaverse/pharmaverseadam", ref = "main")
```

## Dataset Creation and Documentation Process {#doc}

The execution of the ADaM templates and creation of the package documentation in `{pharmaverseadam}` is semi-automated for consistency and ease of maintenance. Metadata for each dataset such as names, labels, descriptions, authors, and sources, is managed in a centralized XLSX file (`inst/extdata/adams-specs.xlsx`) and used to generate `.R` documentation files. These are then used to populate the [reference pages](https://pharmaverse.github.io/pharmaverseadam/reference/index.html) in the package documentation.

The workflow consists of two main steps:

### 1. Metadata Preparation

Firstly, the user reviews `inst/extdata/adams-specs.xlsx` and ensures its contents is up-to-date. If a new template has been added to an existing package, or if a new extension package has been created whose ADaM templates they wish to execute in `{pharmaverseadam}`, then the user should update `adams-specs.xlsx` with specifications for the new dataset(s). Note that any missing metadata fields will be set by default to "No label/description/source available."

### 2. Execute `create_adams_data.R`

Secondly, the user runs `data-raw/create_adams_data.R`. This script handles the installation of each package, the execution of the templates, the saving of the ADaM datasets and the creation of the documentation pages.

#### Script steps

1. **Save specs as JSON**  
   The script saves the specs stored in `inst/extdata/adams-specs.xlsx` as a JSON file located here: `inst/extdata/adams-specs.json`. 
   This is so that the specs themselves, as well as any diffs across commits, are easily viewable on Github and R Studio.

2. **Installs Required Packages**  
   The script installs the following packages:
   - `{admiral}`
   - `{admiralonco}`
   - `{admiralophtha}`
   - `{admiralvaccine}`
   - `{admiralpeds}`
   - `{pharmaversesdtm}`
   
   By default, the latest development versions of each package will be used, but the user can also select a different version instead (e.g. a released version) with which to refresh `{pharmaverseadam}`. The user may also deselect some packages whose templates they do not wish to run. If a new extension package has been created, this should be added to the script in each relevant section (see the script itself for more details).

3. **Executes Templates from Each Package**  

4. **Processes and Saves Datasets into {pharmaverseadam}**  

5. **Generates Dataset Documentation**  
   For every dataset, a matching `.R` file is created in the `R/` folder containing:
   - Dataset name and title,
   - Variable-level documentation (names and labels),
   - Source information indicating which template and package generated it,
   - Example usage with `data("<dataset>")`.
   
## Acknowledgments

Along with the authors and contributors, thanks to the following people for their work on the package:

G Gayatri, Daphne Grassely, Sadchla Mascary, Kangjie Zhang and Zelos Zhu.
