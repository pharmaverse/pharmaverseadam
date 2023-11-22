# ensure every packages are installed

update_pkg <- FALSE
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

load_rda <- function(fileName){
    load(fileName)
    get(ls()[ls() != "fileName"])
}

write_doc <- function(data, dataset_name){
    # create documentation for the current dataset
    # TODO: use metatools/metacore for doc and labels ?
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
    paste(sprintf("#'     \\item{ %s }{%s}", col_name, col_name))
    }, USE.NAMES = FALSE), collapse="\n"),
    "#'   }",
    "#'", sprintf("#' @source Generated from create_adams_data.R script."),
    "#' @references None",
    "#'", sprintf("#' @examples\n#' data(\"%s\")", dataset_name),
    sep = "\n",
    sprintf("\"%s\"", dataset_name)
    )
    writeLines(doc_string, con = file.path("R", paste0(dataset_name, ".R")))
}

run_template <- function(tp) {
    if (!tp %in% ignore_templates_pkg) {
        print(sprintf("Running template %s", tp))
        # run template
        cmd <- c("Rscript", "--vanilla", file.path(templates_path, tp))
        system_result <- system2(cmd, stdout = TRUE, stderr = TRUE)
        exit_code <- attr(system_result, "status")

        if (is.null(exit_code)) {
            dataset_dir <- tools::R_user_dir(sprintf("%s_templates_data", pkg), which = "cache")
            rda_file <- gsub(".R", ".rda", basename(tp))
            rda_file <- gsub("ad_", "", rda_file)
            data <- load_rda(file.path(dataset_dir, rda_file))

            print(sprintf("Processing %s file - move it to
             pharmaverse and generate the doc", rda_file))
            suffix <- ""
            if (pkg != "admiral") {
                suffix <- sprintf("_%s", pkg)
            }
            # add suffix in case of != admiral
            filename <- gsub("\\.rda$", sprintf("%s.rda", suffix), rda_file)
            output_adam_path <- file.path("data", filename)
            dataset_name <- gsub("\\.rda$", "", filename)

            # save it to pharmaverseadam data package
            save_rda(data, file_path = output_adam_path, new_name = dataset_name)

            # write doc
            write_doc(data, dataset_name = dataset_name)
        }

        # return output cmd from templates
        return(list(pkg = pkg, template = tp, exit_code = exit_code,
        output = paste(system_result, collapse = "\n")))
    }
}


if (update_pkg){
    github_pat <- Sys.getenv("GITHUB_TOKEN") # in case of run through github workflows
    if (github_pat == ""){
        token_file <- "data-raw/github_token.R"
        if (file.exists(token_file)){
            source(token_file)
        } else {
            "WARNING - you might have issues installing pharmaverse deps - 
            Please follow instructions in the readme.md"
        }
    }
    # install pharmaversesdtm dep:
    install.packages("pharmaverse/pharmaversesdtm")
}


packages_list <- c("admiral", "admiralonco", "admiralophtha", "admiralvaccine")
all_results <- c()
for (pkg in packages_list){
    ignore_templates_pkg <- ignore_templates[pkg]
    # get latest version of the package (current templates from main branch)
    if (update_pkg) {
        # TODO: replace by main once done
        remotes::install_github(sprintf("pharmaverse/%s", pkg),
        ref = "workflow_dispatch_templates", auth_token = github_pat,
        upgrade = "always", force = TRUE)
    }
    templates_path <- file.path(system.file(package = pkg), "templates")
    templates <- list.files(templates_path)

    print(sprintf("Processing templates from %s package", pkg))

    # run templates in parallel
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
roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))


# TODO: add script to display differences