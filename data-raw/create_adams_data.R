# Save specs as JSON file for traceability of changes ----

library(readxl)
library(jsonlite)

json_file <- "inst/extdata/adams-specs.json"
excel_file <- "inst/extdata/adams-specs.xlsx"

specs_xlsx <- readxl::read_excel(excel_file)
specs_json <- toJSON(specs_xlsx, pretty = TRUE)

sheet_names <- excel_sheets(excel_file)

all_sheets <- lapply(sheet_names, function(sheet) {
  read_excel(excel_file, sheet = sheet)
})

names(all_sheets) <- sheet_names
json_data <- toJSON(all_sheets, pretty = TRUE)

write(json_data, file = json_file)

# Ensure all packages are installed ----
library(stringr)
update_pkg <- TRUE
ignore_templates <- list(
  "admiralonco" = c("ad_adrs_basic.R")
)

save_rda <- function(data, file_path, new_name) {
  if (missing(new_name)) {
    save(data, file = file_path, compress = "bzip2")
  } else {
    assign(new_name, data)
    save(list = new_name, file = file_path, compress = "bzip2")
  }
}

load_rda <- function(fileName) {
  load(fileName)
  get(ls()[ls() != "fileName"])
}

get_attr <- function(data, col_name) {
  att <- attr(data[[col_name]], "label")
  if (is.null(att)) {
    att <- "undocumented field"
  } else if (att == "null") {
    att <- "undocumented field"
  }
  return(att)
}

# Create documentation ----
write_doc <- function(data, dataset_name, dataset_label, pkg, template_name) {
  # create documentation for the current dataset
  # TODO: use metatools/metacore for doc  ?
  dataset_label <- str_replace(dataset_label, "Hys Law", "Hy's Law")
  doc_string <- paste(
    "# This file is automatically generated by data-raw/create_adams_data.R.",
    "# For updating it please edit inst/extdata/adams-specs.xlsx and rerun create_adams_data.R.",
    "# Manual edits are not recommended, as changes may be overwritten.",
    "#'",
    sprintf("#' @name %s", dataset_name),
    sprintf("#' @title %s", dataset_label),
    "#' @docType data",
    sprintf("#' @format A data frame with %s columns:", ncol(data)),
    "#'   \\describe{",
    paste(sapply(names(data), function(col_name) {
      paste(sprintf("#'     \\item{ %s }{%s}", col_name, get_attr(data, col_name)))
    }, USE.NAMES = FALSE), collapse = "\n"),
    "#'   }",
    "#'", sprintf("#' @source Generated from %s package (template %s).", pkg, template_name),
    "#' @references None",
    "#'", sprintf("#' @examples\n#' data(\"%s\")", dataset_name),
    sep = "\n",
    sprintf("\"%s\"", dataset_name)
  )
  writeLines(doc_string, con = file.path("R", paste0(dataset_name, ".R")))
}

write_labels <- function(data, dataset_name, suffix) {
  print(dataset_name)
  print(suffix)
  if (suffix != "") {
    dataset_name <- gsub(suffix, suffixes_dict[suffix], dataset_name)
  }
  dataset_name <- toupper(dataset_name)
  tryCatch(
    {
      spec <- metacore::select_dataset(mc, dataset_name)
      data <- metatools::set_variable_labels(data, spec)
      data <- xportr::xportr_df_label(data, spec, domain = dataset_name)
    },
    error = function(e) {
      warning(sprintf(
        "Error retrieving dataset %s specs - Please check adams-specs.xlsx file",
        dataset_name
      ))
    }
  )
  return(data)
}

run_template <- function(tp) {
  if (!tp %in% ignore_templates_pkg) {
    print(sprintf("Running template %s", tp))
    # run template
    cmd <- c("Rscript", file.path(templates_path, tp))
    system_result <- system2(cmd, stdout = TRUE, stderr = TRUE)
    exit_code <- attr(system_result, "status")
    tp_basename <- basename(tp)

    if (is.null(exit_code)) {
      dataset_dir <- tools::R_user_dir(sprintf("%s_templates_data", pkg), which = "cache")
      rda_file <- gsub(".R", ".rda", tp_basename)
      rda_file <- gsub("ad_", "", rda_file)
      data <- load_rda(file.path(dataset_dir, rda_file))

      print(sprintf("Processing %s file - move it to
             pharmaverse and generate the doc", rda_file))
      suffix <- ""
      if (pkg != "admiral") {
        suffix <- sprintf("_%s", gsub("admiral", "", pkg))
      }
      # add suffix in case of != admiral
      filename <- gsub("\\.rda$", sprintf("%s.rda", suffix), rda_file)
      output_adam_path <- file.path("data", filename)
      dataset_name <- gsub("\\.rda$", "", filename)

      # write labels
      data <- write_labels(data, dataset_name, suffix)

      # save it to pharmaverseadam data package
      save_rda(data, file_path = output_adam_path, new_name = dataset_name)

      # write doc
      dataset_label <- attributes(data)$label
      write_doc(data, dataset_name, dataset_label, pkg, tp_basename)
    }

    # return output cmd from templates
    return(list(
      pkg = pkg, template = tp, exit_code = exit_code,
      output = paste(system_result, collapse = "\n")
    ))
  }
}


if (update_pkg) {
  github_pat <- Sys.getenv("GITHUB_TOKEN") # in case of run through github workflows
  # install pharmaversesdtm dep: TODO: see if we install from github or latest release?
  remotes::install_github(
    "pharmaverse/pharmaversesdtm",
    ref = "main",
    force = TRUE
  )
}

# dict to match admiral xlsx specs suffixes
suffixes_dict <- list("_ophtha" = "_P", "_onco" = "_O", "_vaccine" = "_V", "_peds" = "_E")
mc <- metacore::spec_to_metacore("inst/extdata/adams-specs.xlsx",
  where_sep_sheet = FALSE,
  quiet = TRUE
)

packages_list <- c("admiral", "admiralonco", "admiralophtha", "admiralvaccine", "admiralpeds")

all_results <- c()
for (pkg in packages_list) {
  ignore_templates_pkg <- ignore_templates[pkg]
  # get latest version of the package (current templates from main branch)
  if (update_pkg) {
    # TODO: replace by main once done
    remotes::install_github(sprintf("pharmaverse/%s", pkg),
      ref = "main", auth_token = if (github_pat == "") {
        NULL
      } else {
        github_pat
      },
      upgrade = "always", force = TRUE
    )
  }
  # get templates scripts
  templates_path <- file.path(system.file(package = pkg), "templates")
  templates <- list.files(templates_path)
  # copy paste pkg/data folder content to pharmaverseadam/data (some templates have dependency with their internal data,
  # for example admiral templates have all dependencies with admiral_adsl dataset)
  data_path <- file.path(system.file(package = pkg), "data")
  data_files <- list.files(data_path)

  print(sprintf("Processing templates from %s package", pkg))

  # run templates in parallel
  # TODO: reput parallel debug
  # for (tp in templates) {
  #   run_template(tp)
  # }
  results <- parallel::mclapply(templates, run_template, mc.cores = length(templates))
  all_results <- c(all_results, results)
}


for (res in all_results) {
  if (!is.null(res$exit_code)) {
    print(sprintf("template %s failed - package %s", res$template, res$pkg))
    print("error:")
    cat(sprintf("%s\n\n", res$output))
  }
}

# Generate the documentation ----
roxygen2::roxygenize(".", roclets = c("rd", "collate", "namespace"))
