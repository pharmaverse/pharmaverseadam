# pharmaverseadam <img src="man/figures/logo.png" align="right" width="200" style="margin-left:50px;"/>

<!-- badges: start -->

[<img src="http://pharmaverse.org/shields/pharmaverseadam.svg"/>](https://pharmaverse.org)
[![CRAN status](https://www.r-pkg.org/badges/version/pharmaverseadam)](https://CRAN.R-project.org/package=pharmaverseadam)

<!-- badges: end -->

Test data (ADaM) for the pharmaverse family of packages

# Purpose

To provide a one-stop-shop for ADaM test data in the pharmaverse family of packages.

# Package Contents

The ADaM contents of this package is populated by an action that executes the `{admiral}`, `{admiralonco}`, `{admiralophtha}`, `{admiralvaccine}` and `{admiralpeds}` templates and saves the resulting datasets here. This action can be triggered manually by the package maintainers in two scenarios:
-   Regularly, upon new releases of these packages;
-   Ad-hoc, whenever templates in the above packages have been updated but releases are far away in the calendar. In this case, the ADaM datasets are created using the development version of the templates.

# Installation

The package is available from CRAN and can be installed by running `install.packages("pharmaverseadam")`. To install the latest development version of the package directly from GitHub use the following code:

```         
if (!requireNamespace("remotes", quietly = TRUE)) {
      install.packages("remotes")
    }
    
remotes::install_github("pharmaverse/pharmaverseadam", ref = "main")
```

# Documentation Process

The documentation process in `{pharmaverseadam}` is automated for consistency and ease of maintenance. Metadata for each dataset, such as names, labels, descriptions, authors, and sources, is managed in a centralized XLSX file (`inst/extdata/adams-specs.xlsx`) and used to generate `.R` documentation files.

## Workflow

The creation and maintenance of ADaM test datasets in `{pharmaverseadam}` is automated to ensure reproducibility and ease of updates. The workflow consists of two main steps:

### 1. Metadata Preparation

- All metadata for datasets is defined in a centralized Excel file: `inst/extdata/adams-specs.xlsx`.
- This file includes dataset names, labels, descriptions, variable metadata, and source information.
- Any missing metadata fields will be set by default to "No label/description/source available."

### 2. Run Script

`data-raw/create_adams_data.R` handles the generation, processing, and documentation of ADaM datasets by executing template scripts from the `{admiral}` package family.

#### What the Script Does

1. **Install or Update Required Packages**  
   Installs or updates the latest development versions of:
   - `{admiral}`
   - `{admiralonco}`
   - `{admiralophtha}`
   - `{admiralvaccine}`
   - `{admiralpeds}`
   - Any dependencies such as `{pharmaversesdtm}`

2. **Execute Templates from Each Package**  
   - Finds all template scripts located in each package’s `inst/templates` directory.
   - Executes these templates, which create the ADaM datasets (e.g., `adsl`, `advs`, etc.).
   - Some templates may be excluded via the `ignore_templates` configuration.

3. **Process and Save Datasets**  
   For each dataset:
   - It is loaded from the temporary output,
   - Variables are labeled using metadata from `adams-specs.xlsx` via `{metacore}` and `{metatools}`,
   - A domain-specific suffix is applied if needed (e.g., `_O`, `_P`),
   - The dataset is saved to `data/` as a compressed `.rda` file.

4. **Generate Dataset Documentation**  
   For every dataset, a matching `.R` file is created in the `R/` folder containing:
   - Dataset name and title,
   - Variable-level documentation (names and labels),
   - Source information indicating which template and package generated it,
   - Example usage with `data("<dataset>")`.

5. **Log Errors and Failures**  
   - Errors such as missing metadata or template failures are caught and logged,
   - Any issues are printed in the console output to assist debugging.

6. **Finalize Documentation**  
   After all datasets and `.R` files are generated, the script calls: `roxygen2::roxygenize()` to update .Rd files in the man/ directory.
