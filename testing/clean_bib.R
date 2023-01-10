
# clean bib script
file.copy(from = paste0("./cite/bibliography.bib"), 
          to = paste0("./cite/bibliography_preclean.bib"), 
          overwrite = TRUE)

a <- readLines(con = paste0("./cite/bibliography.bib"))

# remove mention of the following terms

terms0 <- c("https://doi.org/", " }", 
"},
}")

for (i in 1:lenght(terms0)){
b <- a[grep(pattern = terms0[i], x = a, fixed = TRUE)]
  if (length(b)>0) {
    b <- gsub(pattern = terms0[i], replacement = "", x = b, fixed = TRUE)
  }
}