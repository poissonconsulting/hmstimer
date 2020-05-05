---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# hmstimer

<!-- badges: start -->
[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R build status](https://github.com/poissonconsulting/hmstimer/workflows/R-CMD-check/badge.svg)](https://github.com/poissonconsulting/hmstimer/actions)
[![Codecov test coverage](https://codecov.io/gh/poissonconsulting/hmstimer/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/hmstimer?branch=master)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![tinyverse status](https://tinyverse.netlify.com/badge/hmstimer)](https://CRAN.R-project.org/package=hmstimer)
[![CRAN status](https://www.r-pkg.org/badges/version/hmstimer)](https://cran.r-project.org/package=hmstimer)
![CRAN downloads](https://cranlogs.r-pkg.org/badges/hmstimer)
<!-- badges: end -->

`hmstimer` is an R package to 
track elapsed clock time using a [hms::hms](https://github.com/tidyverse/hms) scalar, which if running has an attribute named start that specifies the system time when the timer was started.

The elapsed time is the value of the scalar plus the difference between the current system time and the system time when the timer was started.


```r
library(hmstimer)
#> Error in library(hmstimer): there is no package called 'hmstimer'

tmr <- tmr_timer(seconds = 125, start = TRUE)
#> Error in tmr_timer(seconds = 125, start = TRUE): could not find function "tmr_timer"
tmr
#> Error in eval(expr, envir, enclos): object 'tmr' not found
tmr_elapsed(tmr)
#> Error in tmr_elapsed(tmr): could not find function "tmr_elapsed"
tmr
#> Error in eval(expr, envir, enclos): object 'tmr' not found
tmr_elapsed(tmr)
#> Error in tmr_elapsed(tmr): could not find function "tmr_elapsed"

tmr <- tmr_stop(tmr)
#> Error in tmr_stop(tmr): could not find function "tmr_stop"

tmr
#> Error in eval(expr, envir, enclos): object 'tmr' not found
tmr_elapsed(tmr)
#> Error in tmr_elapsed(tmr): could not find function "tmr_elapsed"

tmr_format(tmr, digits = 4)
#> Error in tmr_format(tmr, digits = 4): could not find function "tmr_format"
```

## Installation

To install the latest development version from [GitHub](https://github.com/poissonconsulting/hmstimer)
```r
# install.packages("remotes")
remotes::install_github("poissonconsulting/hmstimer")
```


## Contribution

Please report any [issues](https://github.com/poissonconsulting/hmstimer/issues).

[Pull requests](https://github.com/poissonconsulting/hmstimer/pulls) are always welcome.

Please note that this project is released with a [Contributor Code of Conduct](https://poissonconsulting.github.io/hmstimer/CODE_OF_CONDUCT.html).
By contributing, you agree to abide by its terms.
