
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hmstimer <img src="man/figures/logo.png"  style="float: right;" />

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/poissonconsulting/hmstimer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/hmstimer/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/hmstimer/graph/badge.svg)](https://app.codecov.io/gh/poissonconsulting/hmstimer)
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
#> 00:02:05.002463
tmr
#> 00:02:05
tmr_elapsed(tmr)
#> 00:02:05.00374

tmr <- tmr_stop(tmr)

tmr
#> 00:02:05.004366
tmr_elapsed(tmr)
#> 00:02:05.004366

tmr_format(tmr, digits = 4)
#> [1] "00:02:05.0044"

with_timer({
  Sys.sleep(1)
  1
})
#> 00:00:01.005
#> [1] 1
```

## Installation

To install the latest release version from CRAN.

``` r
install.packages("hmstimer")
```

To install the latest development version from
[r-universe](https://poissonconsulting.r-universe.dev/hmstimer).

``` r
install.packages("hmstimer", repos = c("https://poissonconsulting.r-universe.dev", "https://cloud.r-project.org"))
```

To install the latest development version from
[GitHub](https://github.com/poissonconsulting/hmstimer)

``` r
# install.packages("pak", repos = sprintf("https://r-lib.github.io/p/pak/stable/%s/%s/%s", .Platform$pkgType, R.Version()$os, R.Version()$arch))
pak::pak("poissonconsulting/hmstimer")
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
