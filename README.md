
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hmstimer <img src="man/figures/logo.png" align="right" />

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/poissonconsulting/hmstimer/workflows/R-CMD-check/badge.svg)](https://github.com/poissonconsulting/hmstimer/actions)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/hmstimer/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/hmstimer?branch=master)
[![License:
MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![CRAN
status](https://www.r-pkg.org/badges/version/hmstimer)](https://cran.r-project.org/package=hmstimer)
![CRAN downloads](https://cranlogs.r-pkg.org/badges/hmstimer)
<!-- badges: end -->

`hmstimer` is an R package to track elapsed clock time using a
[hms::hms](https://github.com/tidyverse/hms) scalar, which if running
has an attribute named start that specifies the system time when the
timer was started.

The elapsed time is the value of the scalar plus the difference between
the current system time and the system time when the timer was started.

``` r
library(hmstimer)

tmr <- tmr_timer(seconds = 125, start = TRUE)
tmr
#> 00:02:05
tmr_elapsed(tmr)
#> 00:02:05.003955
tmr
#> 00:02:05
tmr_elapsed(tmr)
#> 00:02:05.010815
tmr <- tmr_stop(tmr)

tmr
#> 00:02:05.012567
tmr_elapsed(tmr)
#> 00:02:05.012567
tmr_format(tmr, digits = 4)
#> [1] "00:02:05.0126"
```

## Installation

To install the latest development version from
[GitHub](https://github.com/poissonconsulting/hmstimer)

``` r
# install.packages("remotes")
remotes::install_github("poissonconsulting/hmstimer")
```

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/hmstimer/issues).

[Pull requests](https://github.com/poissonconsulting/hmstimer/pulls) are
always welcome.

## Code of Conduct

Please note that the hmstimer project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
