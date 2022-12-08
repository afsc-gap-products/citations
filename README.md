<!-- README.md is generated from README.Rmd. Please edit that file -->

# [AFSC RACE GAP Citations Resource](https://github.com/afsc-gap-products/citations) <img src="https://avatars.githubusercontent.com/u/91760178?s=96&amp;v=4" alt="Logo." align="right" width="139" height="139"/>

The scripts therein reproducibly produce our citations for our data,
annual data reports, presentations, and other outreach documents.

## This code is primarally maintained by:

**Emily Markowitz** (Emily.Markowitz AT noaa.gov;
[@EmilyMarkowitz-NOAA](https://github.com/EmilyMarkowitz-NOAA))

**Megsie Siple** (Margaret.Siple AT noaa.gov;
[@MargaretSiple-NOAA](https://github.com/MargaretSiple-NOAA))

**Liz Dawson** (Liz.Dawson AT noaa.gov;
[@liz-dawson-NOAA](https://github.com/liz-dawson-NOAA))

**Alexandra Dowlin** (Alexandra.Dowlin AT noaa.gov;
[@AlexandraDowlin-NOAA](https://github.com/AlexandraDowlin-NOAA))

Alaska Fisheries Science Center,

National Marine Fisheries Service,

National Oceanic and Atmospheric Administration,

Seattle, WA 98195

> This code is always in development. Find code used for various reports
> in the code
> [releases](paste0(https://github.com/afsc-gap-products/citations,%20%22/releases%22)).

# Table of contents

    ## Warning in get_source(x, text_field = text_field, docid_field = docid_field, : Unsupported extension 'rmd' of file ./README.Rmd treating as plain text.

> -   [*Contribute to this repo and community `.bib`
>     file*](#contribute-to-this-repo-and-community-%60.bib%60-file)
> -   [*Citation style guides*](#citation-style-guides)
> -   [*How to cite*](#how-to-cite)
> -   [*As local files*](#as-local-files)
> -   [*Sourcing directly from github*](#sourcing-directly-from-github)
> -   [*Citation files in action*](#citation-files-in-action)
> -   [*Cite R packages used in a
>     project*](#cite-r-packages-used-in-a-project)
> -   [*Suggestions and Comments*](#suggestions-and-comments)
> -   [*R Version Metadata*](#r-version-metadata)
> -   [*NOAA README*](#noaa-readme)
> -   [*NOAA License*](#noaa-license)

# Contribute to this repo and community `.bib` file

This repository is meant to act as a resource for all members of GAP and
beyond. Do you see that a citation is missing from our `.bib` file or
you have a new publication? Please add it by submitting a [pull
request](https://github.com/afsc-gap-products/citations/pulls) or
speaking to one of the repository maintainers.

# Citation style guides

The NOAA Library now recommends that we use [American Psychological
Association 7th edition (no
ampersand)](https://www.zotero.org/styles/apa-no-ampersand) for citing
in NOAA technical memorandums and other NOAA process report
publications. Learn more about APA 7th from this [Purdue
Owl](https://owl.purdue.edu/owl/research_and_citation/apa_style/apa_formatting_and_style_guide/reference_list_author_authors.html)
resoure.

![APA 7th no Ampersand](./img/apa7.png)

The citation style guide for APA 7th can be downloaded from
[github](https://github.com/citation-style-language/styles). This
independent open source Citation Style Language (CSL) project aims to
facilitate scholarly communication by automating the formatting of
citations and bibliographies.

# How to cite

Add the link to the
[`.bib`](https://github.com/afsc-gap-products/citations/blob/main/cite/bibliography.bib)
and
[`.csl`](https://raw.githubusercontent.com/citation-style-language/styles/master/apa-no-ampersand.csl)
files in the YAML of your `rmarkdown` ro `quarto` file like so:

## As local files

Note that “../” before the file names refers to directory navigation.

``` r
---
title: "untitled"
date: "`r paste0(format(Sys.time(), '%B %d, %Y'))`"
output: html_document
csl: "../cite/citestyle.csl"
bibliography: "../cite/bibliography.bib"
---
```

To download the CSL and save it to your project, you can use the
following code:

``` r
csl <- readLines("https://raw.githubusercontent.com/citation-style-language/styles/master/apa-no-ampersand.csl")
readr::write_lines(x = csl, file = "./cite/citestyle.csl")

bib <- readLines("https://github.com/afsc-gap-products/citations/blob/main/cite/bibliography.bib")
readr::write_lines(x = bib, file = "./cite/bibliography.csl")
```

## Sourcing directly from github

Sourcing directly from github requires internet access, but ensures that
you will always have the most up to date citation style library and
bibliography references.

``` r
---
title: "untitled"
date: "`r paste0(format(Sys.time(), '%B %d, %Y'))`"
output: html_document
csl: "https://raw.githubusercontent.com/citation-style-language/styles/master/apa-no-ampersand.csl"
bibliography: "https://github.com/afsc-gap-products/citations/blob/main/cite/bibliography.bib"
---
```

# Citation files in action

Use the `[@...]` notation in your `rmarkdown` or `quarto` call a
reference number for a citation.

``` r
For example, here are **Annual Bering Sea Data Report** [@2022NEBS2022; @2021NEBS2022; @2019NEBS2022; @2018EBS2022]
```

*Which renders as:*

For example, here are **Annual Bering Sea Data Report** (Markowitz,
Dawson, Charriere, Prohaska, Rohan, Stevenson, et al., 2022b, 2022a, In
review; Markowitz, Dawson, Charriere, Prohaska, Rohan, Haehn, et al.,
2022)

Naturally, without writing anything else, references will appear at the
of the document. If you want them to render at a specific place in your
document, call the code below:

``` r
<div id="refs"></div>
```

*Which renders as:*

<div id="refs" class="references csl-bib-body hanging-indent"
line-spacing="2">

<div id="ref-2018EBS2022" class="csl-entry">

Markowitz, E. H., Dawson, E. J., Charriere, N. E., Prohaska, B. K.,
Rohan, S. K., Haehn, R. A., Stevenson, D. E., and Britt, L. L. (2022).
*Results of the 2018 eastern Bering Sea continental shelf bottom trawl
survey of groundfish and invertebrate fauna* \[NOAA Tech. Memo.\].

</div>

<div id="ref-2019NEBS2022" class="csl-entry">

Markowitz, E. H., Dawson, E. J., Charriere, N. E., Prohaska, B. K.,
Rohan, S. K., Stevenson, D. E., and Britt, L. L. (2022a). *Results of
the 2019 eastern and northern Bering Sea continental shelf bottom trawl
survey of groundfish and invertebrate fauna* \[NOAA Tech. Memo.\].

</div>

<div id="ref-2021NEBS2022" class="csl-entry">

Markowitz, E. H., Dawson, E. J., Charriere, N. E., Prohaska, B. K.,
Rohan, S. K., Stevenson, D. E., and Britt, L. L. (2022b). *Results of
the 2021 eastern and northern Bering Sea continental shelf bottom trawl
survey of groundfish and invertebrate fauna* \[NOAA Tech. Memo.\].

</div>

<div id="ref-2022NEBS2022" class="csl-entry">

Markowitz, E. H., Dawson, E. J., Charriere, N. E., Prohaska, B. K.,
Rohan, S. K., Stevenson, D. E., and Britt, L. L. (In review). *Results
of the 2022 eastern and northern Bering Sea continental shelf bottom
trawl survey of groundfish and invertebrate fauna* \[NOAA Tech. Memo.\].

</div>

</div>

# Cite R packages used in a project

Here is how the user can find all of the packages ever installed on the
local computer

``` r
PKG <- tibble::tibble(
  Package = names(installed.packages()[,3]),
  Version = unname(installed.packages()[,3])
)
head(PKG)
```

    ## # A tibble: 6 × 2
    ##   Package      Version
    ##   <chr>        <chr>  
    ## 1 abind        1.4-5  
    ## 2 adehabitatMA 0.3.15 
    ## 3 akgfmaps     2.2.1  
    ## 4 antiword     1.3.1  
    ## 5 ape          5.6-2  
    ## 6 asciicast    2.2.0

Here is how the user can find all of the packages ever installed on the
local computer

``` r
PKG <- names(sessionInfo()[7][[1]])
PKG
```

    ##  [1] "fansi"      "utf8"       "digest"     "R6"         "lifecycle"  "magrittr"   "evaluate"   "pillar"     "httr"       "rlang"      "stringi"    "cli"       
    ## [13] "data.table" "rstudioapi" "vctrs"      "rmarkdown"  "tools"      "stringr"    "glue"       "xfun"       "yaml"       "fastmap"    "compiler"   "pkgconfig" 
    ## [25] "readtext"   "htmltools"  "knitr"      "tibble"

Then to cite the packages loaded for this R project, create a .bib file
for R packages:

``` r
knitr::write_bib(x = PKG,
                 file = "./cite/bibliography_RPack.bib")
```

*Which looks like*

    ## [1] "@Manual{R-cli,"                                                   "  title = {cli: Helpers for Developing Command Line Interfaces},"
    ## [3] "  author = {Gábor Csárdi},"                                       "  year = {2022},"                                                
    ## [5] "  note = {R package version 3.4.1},"                              "  url = {https://CRAN.R-project.org/package=cli},"               
    ## [7] "}"                                                                ""

And add your new bibliography file to your YAML:

``` r
---
title: "untitled"
date: "`r paste0(format(Sys.time(), '%B %d, %Y'))`"
output: html_document
csl: "https://raw.githubusercontent.com/citation-style-language/styles/master/apa-no-ampersand.csl"
bibliography: "../cite/bibliography_RPack.bib"
---
```

# Suggestions and Comments

If you see that the data, product, or metadata can be improved, you are
invited to create a [pull
request](https://github.com/afsc-gap-products/citations/pulls), [submit
an issue to the GitHub
organization](https://github.com/afsc-gap-products/data-requests/issues),
or [submit an issue to the code’s
repository](https://github.com/afsc-gap-products/citations/issues).

# R Version Metadata

``` r
sessionInfo()
```

    ## R version 4.2.0 (2022-04-22 ucrt)
    ## Platform: x86_64-w64-mingw32/x64 (64-bit)
    ## Running under: Windows 10 x64 (build 19044)
    ## 
    ## Matrix products: default
    ## 
    ## locale:
    ## [1] LC_COLLATE=English_United States.utf8  LC_CTYPE=English_United States.utf8    LC_MONETARY=English_United States.utf8 LC_NUMERIC=C                          
    ## [5] LC_TIME=English_United States.utf8    
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] fansi_1.0.3       utf8_1.2.2        digest_0.6.30     R6_2.5.1          lifecycle_1.0.3   magrittr_2.0.3    evaluate_0.18     pillar_1.8.1      httr_1.4.4       
    ## [10] rlang_1.0.6       stringi_1.7.8     cli_3.4.1         data.table_1.14.4 rstudioapi_0.14   vctrs_0.5.0       rmarkdown_2.18    tools_4.2.0       stringr_1.4.1    
    ## [19] glue_1.6.2        xfun_0.34         yaml_2.3.6        fastmap_1.1.0     compiler_4.2.0    pkgconfig_2.0.3   readtext_0.81     htmltools_0.5.3   knitr_1.40       
    ## [28] tibble_3.1.8

## NOAA README

This repository is a scientific product and is not official
communication of the National Oceanic and Atmospheric Administration, or
the United States Department of Commerce. All NOAA GitHub project code
is provided on an ‘as is’ basis and the user assumes responsibility for
its use. Any claims against the Department of Commerce or Department of
Commerce bureaus stemming from the use of this GitHub project will be
governed by all applicable Federal law. Any reference to specific
commercial products, processes, or services by service mark, trademark,
manufacturer, or otherwise, does not constitute or imply their
endorsement, recommendation or favoring by the Department of Commerce.
The Department of Commerce seal and logo, or the seal and logo of a DOC
bureau, shall not be used in any manner to imply endorsement of any
commercial product or activity by DOC or the United States Government.

## NOAA License

Software code created by U.S. Government employees is not subject to
copyright in the United States (17 U.S.C. §105). The United
States/Department of Commerce reserve all rights to seek and obtain
copyright protection in countries other than the United States for
Software authored in its entirety by the Department of Commerce. To this
end, the Department of Commerce hereby grants to Recipient a
royalty-free, nonexclusive license to use, copy, and create derivative
works of the Software outside of the United States.

<img src="https://raw.githubusercontent.com/nmfs-general-modeling-tools/nmfspalette/main/man/figures/noaa-fisheries-rgb-2line-horizontal-small.png" alt="NOAA Fisheries" height="75"/>

[U.S. Department of Commerce](https://www.commerce.gov/) \| [National
Oceanographic and Atmospheric Administration](https://www.noaa.gov) \|
[NOAA Fisheries](https://www.fisheries.noaa.gov/)
