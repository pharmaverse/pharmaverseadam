# ensure every packages are installed

update_pkg <- TRUE
ignore_templates <- list(
    "admiralonco" = c("adrs_basic_onco")
)

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

load_rda <- function(fileName){
    load(fileName)
    get(ls()[ls() != "fileName"])
}

packages_list <- c("admiral", "admiralonco", "admiralophtha", "admiralvaccine")
for (pkg in packages_list){
    ignore_templates_pkg <- ignore_templates[pkg]
    # get latest version of the package (current templates from main branch)
    if (update_pkg) {
        # TODO: replace by main once done
        remotes::install_github(sprintf("pharmaverse/%s", pkg), ref = "workflow_dispatch_templates", 
        auth_token = github_pat, upgrade = "always", force = TRUE)
    }
    templates_path <- file.path(system.file(package = pkg), "templates")
    templates <- list.files(templates_path)

    print(sprintf("Processing templates from %s package", pkg))

    # run templates
    for (tp in templates){
        if (!tp %in% ignore_templates_pkg) {
            print(sprintf("Running template %s", tp))
            # run template
            cmd <- sprintf("Rscript --vanilla %s", file.path(templates_path, tp))
            system(cmd)
        }
    }

    # read cached rda data produced by templates
    dataset_dir <- tools::R_user_dir(sprintf("%s_templates_data", pkg), which = "cache")
    rda_files <- list.files(path = dataset_dir, pattern = "\\.rda$")
    for (rda_file in rda_files) {
        print(sprintf("Processing %s file - move it to pharmaverse and generate the doc", rda_file))
        data <- load_rda(file.path(dataset_dir, rda_file))
        suffix <- ""
        if (pkg != "admiral") {
            suffix <- pkg
        }
        # add suffix in case of != admiral
        filename <- gsub("\\.rda$", sprintf("%s.rda", suffix), rda_file)
        output_adam_path <- file.path("data", filename)
        save(data, file = output_adam_path, compress = "bzip2")

        # create documentation for the current dataset
        # TODO: use metatools/metacore for doc and labels ?
        dataset_name <- gsub("\\.rda$", "", filename)
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
}

# Generate the documentation
roxygen2::roxygenize('.', roclets = c('rd', 'collate', 'namespace'))


# TODO: add script to display differences