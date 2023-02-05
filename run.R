

# SAVE METADATA ----------------------------------------------------------------
rmarkdown::render(paste0("./README.Rmd"),
                  output_dir = "./",
                  output_file = paste0("README.md"))

rmarkdown::render(paste0("./testing/print_bib.Rmd"),
                  output_dir = "./testing/",
                  output_file = paste0("print_bib.md"))

