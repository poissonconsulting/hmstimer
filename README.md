
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
[hms::hms](https://github.com/tidyverse/hms) scalar.

`hmstimer` was originally developed to time Bayesian model runs. It
should not be used to estimate how long extremely fast code takes to
execute as the package code adds a small time cost.

Create and start a timer with `tmr_timer(start = TRUE)`.

``` r
library(hmstimer)

tmr <- tmr_timer(start = TRUE)
Sys.sleep(0.1)
str(tmr)
#>  'hms' num 00:00:00
#>  - attr(*, "units")= chr "secs"
#>  - attr(*, "title")= chr ""
#>  - attr(*, "start")= num 1.72e+09
hms::as_hms(tmr)
#> 00:00:00
```

Get the elapsed time with `tmr_elapsed()`. The title is optional.

``` r
tmr <- tmr_timer(start = TRUE, title = "my timer")

Sys.sleep(0.1)
tmr_elapsed(tmr)
#> 00:00:00.103417

Sys.sleep(0.1)
tmr_elapsed(tmr)
#> 00:00:00.212112
```

Stop the timer with `tmr_stop()`.

``` r
tmr <- tmr_stop(tmr)
tmr_elapsed(tmr)
#> 00:00:00.216109

Sys.sleep(1)
tmr_elapsed(tmr)
#> 00:00:00.216109
```

Restart the timer with `tmr_start()`.

``` r
tmr <- tmr_start(tmr)
tmr_elapsed(tmr)
#> 00:00:00.21697
Sys.sleep(0.1)
tmr_elapsed(tmr)
#> 00:00:00.324928
```

There are several options for printing and formatting including coercing
to a hms object.

``` r
tmr <- tmr_stop(tmr)
print(tmr)
#> 00:00:00.333247
tmr_print(tmr)
#> [1] "00:00:00.333247 [my timer]"
tmr_format(tmr, digits = 5)
#> [1] "00:00:00.33325 [my timer]"
```

If running `tmr_print()` behaves differently.

``` r
tmr <- tmr_start(tmr)
tmr_print(tmr)
#> [1] "14:44:58 (+00:00:01 => 14:44:59) [my timer]"
```

The time for a block of code to complete can be printed using
`with_timer()`.

``` r
with_timer({
  Sys.sleep(0.1)
  Sys.sleep(0.1)
  1 + 1
})
#> 00:00:00.207
#> [1] 2
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
