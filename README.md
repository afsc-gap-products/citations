<!-- README.md is generated from README.Rmd. Please edit that file -->

# [AFSC RACE GAP Citations Resource](https://github.com/afsc-gap-products/citations) <img src="https://avatars.githubusercontent.com/u/91760178?s=96&amp;v=4" alt="Logo." align="right" width="139" height="139"/>

The scripts therein reproducibly produce our citations for our data,
annual data reports, presentations, and other outreach documents.

> This code is always in development. Find code used for various reports
> in the code
> [releases](paste0(https://github.com/afsc-gap-products/citations,%20%22/releases%22)).

## This code is primarally maintained by:

**Emily Markowitz** (Emily.Markowitz AT noaa.gov;
[@EmilyMarkowitz-NOAA](https://github.com/EmilyMarkowitz-NOAA))

**Megsie Siple** (Margaret.Siple AT noaa.gov;
[@MargaretSiple-NOAA](https://github.com/MargaretSiple-NOAA))

**Liz Dawson** (Liz.Dawson AT noaa.gov;
[@liz-dawson-NOAA](https://github.com/liz-dawson-NOAA))

**Alex Dowlin** (Alexandra.Dowlin AT noaa.gov;
[@AlexandraDowlin-NOAA](https://github.com/AlexandraDowlin-NOAA))

**Chris Anderson** (Christopher.Anderson AT noaa.gov;
[@ChrisAnderson-NOAA](https://github.com/ChrisAnderson-NOAA))

**Bethany Riggle** (Bethany.Riggle AT noaa.gov;
[@bethanyriggle](https://github.com/bethanyriggle))

Alaska Fisheries Science Center,

National Marine Fisheries Service,

National Oceanic and Atmospheric Administration,

Seattle, WA 98195

# Table of contents

> -   [*Citation style guides*](#citation-style-guides)
> -   [*How to cite*](#how-to-cite)
>     -   [*As local files*](#as-local-files)
>     -   [*Sourcing directly from
>         github*](#sourcing-directly-from-github)
> -   [*Citation files in action*](#citation-files-in-action)
> -   [*Contribute to this repo and community `.bib`
>     file*](#contribute-to-this-repo-and-community-%60.bib%60-file)
>     -   [*Bibliography syntax notes*](#bibliography-syntax-notes)
>         -   [*Finding pre-formatted
>             citations*](#finding-pre-formatted-citations)
>         -   [*Forced case-sensitivity*](#forced-case-sensitivity)
>         -   [*listing DOIs*](#listing-dois)
>         -   [*Use Journal abbreviations*](#use-journal-abbreviations)
>     -   [*Bibliography examples*](#bibliography-examples)
>         -   [*NOAA technical memorandums/process
>             reports*](#noaa-technical-memorandums/process-reports)
>         -   [*NOAA Stock Assessments*](#noaa-stock-assessments)
>         -   [*Journal articles*](#journal-articles)
>         -   [*Presentations*](#presentations)
>         -   [*Data*](#data)
>         -   [*R packages built in-house*](#r-packages-built-in-house)
>         -   [*Legislation*](#legislation)
>         -   [*Web pages*](#web-pages)
>         -   [*Books*](#books)
> -   [*Cite all R packages on a computer or used in a
>     project*](#cite-all-r-packages-on-a-computer-or-used-in-a-project)
> -   [*Suggestions and Comments*](#suggestions-and-comments)
>     -   [*R Version Metadata*](#r-version-metadata)
>     -   [*NOAA README*](#noaa-readme)
>     -   [*NOAA License*](#noaa-license)

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

# Contribute to this repo and community `.bib` file

This repository is meant to act as a resource for all members of GAP and
beyond. Do you see that a citation is missing from our `.bib` file or
you have a new publication? Please add it by submitting a [pull
request](https://github.com/afsc-gap-products/citations/pulls) or
speaking to one of the repository maintainers.

## Bibliography syntax notes

### Finding pre-formatted citations

While not perfect, the below resources can use DOIs or other paper
identifiers to find and construct bibliographies in the right format for
you:

-   <https://www.doi2bib.org/>
-   <https://zbib.org/>

### Forced case-sensitivity

Use `{...}` to force capitalization. This may be needed for proper
nouns.

``` r
...
   title = {Results of the 2021 eastern and northern {Bering Sea} continental shelf bottom trawl survey of groundfish and invertebrate fauna},
...
```

### listing DOIs

While the whole link for a DOI may be
<https://doi.org/10.25923/9c3r-xp53>, only list the text after the
“<https://doi.org/>” in the `.bib` file.

``` r
...
  doi = {10.25923/9C3R-XP53},
...
```

### Use Journal abbreviations

Journal abbreviations can be found through the [Web of
Science](https://images.webofknowledge.com/images/help/WOS/A_abrvjt.html)
for any given scientific journal.

``` r
...
  journal = {Fish. Oceanogr.},
...
```

## Bibliography examples

To make sure all bibliography listed in the `.bib` file are consistent,
please refer to these common bibliography types and examples:

### NOAA technical memorandums/process reports

NOAA publications are listed and searchable on the NOAA website and
[AFSC
website](https://www.fisheries.noaa.gov/alaska/science-data/alaska-fisheries-science-center-publications).

``` r
@article{RN888,
   author = {Alton, M. S. and Bakkala, R. G. and Walters G. E. and Munro, P. T.},
   title = {Greenland turbot {(\emph{Reinhardtius hippoglossoides})} of the eastern {Bering Sea} and {Aleutian Islands} region},
   url = {https://spo.nmfs.noaa.gov/content/tr-71-greenland-turbot-reinhardtius-hippoglossoides-eastern-bering-sea-and-aleutian-islands},
   year = {1998},
   publisher = {{U.S. Dep. Commer.}},
   type = {NOAA Tech. Rep.}, 
   number = {NMFS-71}
}

@article{2021NEBS2022,
   author = {Markowitz, E. H. and Dawson, E. J. and Charriere, N. E. and Prohaska, B. K. and Rohan, S. K.  and Stevenson, D. E. and Britt, L. L.},
   title = {Results of the 2021 eastern and northern {Bering Sea} continental shelf bottom trawl survey of groundfish and invertebrate fauna},
   publisher = {{U.S. Dep. Commer.}},
   year = {2022},
   type = {NOAA Tech. Memo.},
   copyright = {Public domain}
}

@article{RN920,
   author = {Pereyra, W. T. and Reeves, J. E. and Bakkala, R. G.},
   title = {Demersal fish and shellfish resources of the eastern {Bering Sea} in the baseline year 1975},
   publisher = {U.S. Dep. Commer.},
   type = {NOAA Processed Rep.},
   year = {1976},
   copyright = {Public domain}
}
```

### NOAA Stock Assessments

``` r
@inproceedings{RN921,
   author = {Rose, C. S. and Walters, G. E.},
   title = {Trawl width variation during bottom trawl surveys: causes and consequences},
   booktitle = {Proceedings of the symposium on application of stock assessment techniques applies to gadids},
   publisher = {International Northern {Pacific} Fisheries Communication Bulletin},
   volume = {50},
   pages = {p. 57-67},
   year = {1990},
   type = {Conference Proceedings}
}

@article{McGilliardetal2018,
   author = {McGilliard, C. R. and Nichol, D. G. and Palsson, W. A.},
   title = {Assessment of the flathead sole-Bering flounder stock in the {Bering Sea} and {Aleutian Islands}},
    booktitle = {Stock assessment and fishery evaluation report for the groundfish resources of the {Bering Sea}/{Aleutian Islands} regions},
   institution = {North Pacific Fishery Management Council},
   address = {605 W. 4th Ave., Anchorage, AK 99501},
   year = {2018}
}
```

### Journal articles

``` r
@article{RN929,
   author = {Spencer, P. D.},
   title = {Density‐independent and density‐dependent factors affecting temporal changes in spatial distributions of eastern {Bering Sea} flatfish},
  doi = {10.1111/j.1365-2419.2008.00486.x},
  journal = {Fish. Oceanogr.},
  publisher = {Wiley},
   volume = {17},
   number = {5},
   pages = {p. 396-410},
   ISSN = {1054-6006},
   year = {2008}
}
```

### Presentations

> Example coming soon!

### Data

> Example coming soon! (e.g., FOSS)

### R packages built in-house

**From suggested citations**

The {trawllight} created by
[@sean-rohan-NOAA](https://github.com/sean-rohan-NOAA) has a built in
citation that can be cited like below.

To find the citation:

``` r
require(remotes)
remotes::install_github("afsc-gap-products/trawllight")
```

To use the citation:

``` r
library(trawllight)
utils::citation(trawllight)
```

**From Zenodo**

For packages not on CRAN, package builders can use
[Zenodo](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content)
to cite their R packages.

The [{trawllight}](https://zenodo.org/record/3700877) created by
[@sean-rohan-NOAA](https://github.com/sean-rohan-NOAA) has a citation on
zenodo that can be cited like below.

``` r
@software{sean_rohan_2020_3700877,
  author       = {sean-rohan},
  title        = {sean-rohan/trawllight: Light conversion features},
  month        = mar,
  year         = 2020,
  publisher    = {Zenodo},
  version      = {1.2.0},
  doi          = {10.5281/zenodo.3700877},
  url          = {https://doi.org/10.5281/zenodo.3700877}
}
```

### Legislation

> Example coming soon! (e.g., Magnuson-Stevenson)

### Web pages

> Example coming soon! (e.g., NOAA Fisheries’ website)

### Books

``` r
@book{RN912,
   author = {Mecklenburg, C. W. and Mecklenburg, T. A. and Thorsteinson, L. K.},
   title = {Fishes of {Alaska}},
   ISBN = {1888569077},
   year = {2002}
}
```

# Cite all R packages on a computer or used in a project

Here is how the user can find all of the packages ever installed on the
local computer

``` r
PKG <- tibble::tibble(
  Package = names(installed.packages()[,3]),
  Version = unname(installed.packages()[,3])
)
head(PKG)
```

    FALSE # A tibble: 6 × 2
    FALSE   Package      Version
    FALSE   <chr>        <chr>  
    FALSE 1 abind        1.4-5  
    FALSE 2 adehabitatMA 0.3.15 
    FALSE 3 akgfmaps     2.2.1  
    FALSE 4 antiword     1.3.1  
    FALSE 5 ape          5.6-2  
    FALSE 6 asciicast    2.2.0

Here is how the user can find all of the packages ever installed on the
local computer

``` r
PKG <- names(sessionInfo()[7][[1]])
PKG
```

    FALSE [1] "remotes"

Then to cite the packages loaded for this R project, create a .bib file
for R packages:

``` r
knitr::write_bib(x = PKG,
                 file = "./cite/bibliography_RPack.bib")
```

*Which looks like*

    FALSE [1] "@Manual{R-remotes,"                                                                                                
    FALSE [2] "  title = {remotes: R Package Installation from Remote Repositories, Including"                                    
    FALSE [3] "GitHub},"                                                                                                          
    FALSE [4] "  author = {Gábor Csárdi and Jim Hester and Hadley Wickham and Winston Chang and Martin Morgan and Dan Tenenbaum},"
    FALSE [5] "  year = {2021},"                                                                                                  
    FALSE [6] "  note = {R package version 2.4.2},"                                                                               
    FALSE [7] "  url = {https://CRAN.R-project.org/package=remotes},"                                                             
    FALSE [8] "}"

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

## R Version Metadata

``` r
sessionInfo()
```

    FALSE R version 4.2.0 (2022-04-22 ucrt)
    FALSE Platform: x86_64-w64-mingw32/x64 (64-bit)
    FALSE Running under: Windows 10 x64 (build 19044)
    FALSE 
    FALSE Matrix products: default
    FALSE 
    FALSE locale:
    FALSE [1] LC_COLLATE=English_United States.utf8  LC_CTYPE=English_United States.utf8    LC_MONETARY=English_United States.utf8 LC_NUMERIC=C                          
    FALSE [5] LC_TIME=English_United States.utf8    
    FALSE 
    FALSE attached base packages:
    FALSE [1] stats     graphics  grDevices utils     datasets  methods   base     
    FALSE 
    FALSE other attached packages:
    FALSE [1] remotes_2.4.2
    FALSE 
    FALSE loaded via a namespace (and not attached):
    FALSE  [1] rstudioapi_0.14   knitr_1.40        magrittr_2.0.3    R6_2.5.1          rlang_1.0.6       fastmap_1.1.0     fansi_1.0.3       stringr_1.5.0     httr_1.4.4       
    FALSE [10] tools_4.2.0       pkgbuild_1.3.1    data.table_1.14.4 xfun_0.34         utf8_1.2.2        cli_3.4.1         withr_2.5.0       htmltools_0.5.3   rprojroot_2.0.3  
    FALSE [19] yaml_2.3.6        digest_0.6.30     tibble_3.1.8      lifecycle_1.0.3   crayon_1.5.2      processx_3.8.0    callr_3.7.3       ps_1.7.2          vctrs_0.5.0      
    FALSE [28] curl_4.3.3        glue_1.6.2        evaluate_0.18     rmarkdown_2.18    stringi_1.7.8     compiler_4.2.0    pillar_1.8.1      prettyunits_1.1.1 readtext_0.81    
    FALSE [37] pkgconfig_2.0.3

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
