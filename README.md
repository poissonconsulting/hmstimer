
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hmstimer

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R build
status](https://github.com/poissonconsulting/hmstimer/workflows/R-CMD-check/badge.svg)](https://github.com/poissonconsulting/hmstimer/actions)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/hmstimer/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/hmstimer?branch=master)
[![License:
MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![tinyverse
status](https://tinyverse.netlify.com/badge/hmstimer)](https://CRAN.R-project.org/package=hmstimer)
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
#> 00:02:05.005813
tmr
#> 00:02:05
tmr_elapsed(tmr)
#> 00:02:05.010475

tmr <- tmr_stop(tmr)

tmr
#> 00:02:05.013098
tmr_elapsed(tmr)
#> 00:02:05.013098

tmr_format(tmr, digits = 4)
#> [1] "00:02:05.0131"
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
