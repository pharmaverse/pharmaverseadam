library(lintr)

source(system.file("lintr/linters.R", package = "admiraldev"))

linters <- admiral_linters()

exclusions <- list(
    "data-raw/create_adams_data.R" = Inf,
    "R/data.R" = Inf,
    "inst" = list(undesirable_function_linter = Inf),
    "vignettes" = list(undesirable_function_linter = Inf)
  )
