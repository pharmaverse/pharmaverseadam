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

1.  **Metadata Preparation**:
    -   Ensure `adams-specs.xlsx` contains up-to-date metadata for all datasets.
    -   Missing fields default to "No label/description/source available."
2.  **Run Script**:
    -   The `data-raw/create_adams_data.R` script dynamically retrieves metadata, enriches it with dataset attributes, and generates `.R` files in the `R/` directory.
3.  **Generate Documentation**:
    -   Use `roxygen2::roxygenize()` to update `.Rd` files in the `man/` directory.
