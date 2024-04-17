# ensure every packages are installed

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

write_doc <- function(data, dataset_name, pkg, template_name) {
  # create documentation for the current dataset
  # TODO: use metatools/metacore for doc  ?
  doc_string <- paste(
    sprintf("#' Dataset %s", dataset_name),
    "#'",
    sprintf("#' %s dataset", dataset_name),
    "#'",
    sprintf("#' @name %s", dataset_name),
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
      write_doc(data, dataset_name, pkg, tp_basename)
    }

    # return output cmd from templates
    return(list(
      pkg = pkg, template = tp, exit_code = exit_code,
      output = paste(system_result, collapse = "\n")
    ))
  }
}


if (update_pkg) {
  # github_pat <- Sys.getenv("GITHUB_TOKEN") # in case of run through github workflows
  # if (github_pat == "") {
  #   token_file <- "data-raw/github_token.R"
  #   if (file.exists(token_file)) {
  #     source(token_file)
  #   } else {
  #     "WARNING - you might have issues installing pharmaverse deps -
  #           Please follow instructions in the readme.md"
  #   }
  # }
  # install pharmaversesdtm dep: TODO: see if we install from github or latest release?
  install.packages("pharmaverse/pharmaversesdtm")
}

# dict to match admiral xlsx specs suffixes
suffixes_dict <- list("_ophtha" = "_P", "_onco" = "_O", "_vaccine" = "_V")
mc <- metacore::spec_to_metacore("inst/extdata/adams-specs.xlsx",
  where_sep_sheet = FALSE,
  quiet = TRUE
)

packages_list <- c("admiral", "admiralonco", "admiralophtha", "admiralvaccine")

all_results <- c()
for (pkg in packages_list) {
  ignore_templates_pkg <- ignore_templates[pkg]
  # get latest version of the package (current templates from main branch)
  if (update_pkg) {
    # TODO: replace by main once done
    remotes::install_github(sprintf("pharmaverse/%s", pkg),
      ref = "main",
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

# Generate the documentation
roxygen2::roxygenize(".", roclets = c("rd", "collate", "namespace"))
