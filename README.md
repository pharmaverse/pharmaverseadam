<!-- Please do not edit the README.md file as it is auto-generated after PR merges. Only edit the README.Rmd file -->
<!-- The purpose of this is to enable dynamic links using dyn_link function above to access devel/main admiral homepage respectively -->
<!-- To test this in your feature branch use code: rmarkdown::render("README.Rmd", output_format ="md_document") -->

# pharmaverseadam <img src="man/figures/logo.png" align="right" width="200" style="margin-left:50px;"/>

<!-- badges: start -->

[<img src="http://pharmaverse.org/shields/admiral.svg">](https://pharmaverse.org)
[![CRAN
status](https://www.r-pkg.org/badges/version/admiral)](https://CRAN.R-project.org/package=admiral)
[![Test
Coverage](https://raw.githubusercontent.com/pharmaverse/admiraltemplate/badges/main/test-coverage.svg)](https://github.com/pharmaverse/admiraltemplate/actions/workflows/code-coverage.yml)
<!-- badges: end -->

Test data (ADaM) for the pharmaverse family of packages

# Purpose

To provide a one-stop-shop for ADaM test data in the pharmaverse family
of packages. This includes test ADaM data created from {admiral}
templates.

The ADaM contents of this package is automatically populated by a CICD
action that executes `{admiral}` templates and saves the resulting
dataset here. The ADaM datasets in `{pharmaverseadam}` are updated any
time the templates are updated in `{admiral}`.

# Installation

The package is available from CRAN and can be installed by running
`install.packages("pharmaverseadam")`. To install the latest development
version of the package directly from GitHub use the following code:

    if (!requireNamespace("remotes", quietly = TRUE)) {
      install.packages("remotes")
    }

    remotes::install_github("pharmaverse/pharmaverseadam", ref = "devel")
