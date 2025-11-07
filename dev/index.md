# hmstimer

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
#>  - attr(*, "start")= num 1.74e+09
hms::as_hms(tmr)
#> 00:00:00
```

Get the elapsed time with
[`tmr_elapsed()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_elapsed.md).
The title is optional.

``` r
tmr <- tmr_timer(start = TRUE, title = "my timer")

Sys.sleep(0.1)
tmr_elapsed(tmr)
#> 00:00:00.105913

Sys.sleep(0.1)
tmr_elapsed(tmr)
#> 00:00:00.215391
```

Stop the timer with
[`tmr_stop()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_stop.md).

``` r
tmr <- tmr_stop(tmr)
tmr_elapsed(tmr)
#> 00:00:00.224024

Sys.sleep(1)
tmr_elapsed(tmr)
#> 00:00:00.224024
```

Restart the timer with
[`tmr_start()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_start.md).

``` r
tmr <- tmr_start(tmr)
tmr_elapsed(tmr)
#> 00:00:00.224456
Sys.sleep(0.1)
tmr_elapsed(tmr)
#> 00:00:00.331804
```

There are several options for printing and formatting including coercing
to a hms object.

``` r
tmr <- tmr_stop(tmr)
print(tmr)
#> 00:00:00.341066
tmr_print(tmr)
#> [1] "00:00:00.341066 [my timer]"
tmr_format(tmr, digits = 5)
#> [1] "00:00:00.34107 [my timer]"
```

If running
[`tmr_print()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_print.md)
behaves differently.

``` r
tmr <- tmr_start(tmr)
tmr_print(tmr)
#> [1] "17:19:17 (+00:00:01 => 17:19:18) [my timer]"
```

The time for a block of code to complete can be printed using
[`with_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/with_timer.md).

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

### Release

To install the release version from
[CRAN](https://CRAN.R-project.org/package=hmstimer).

``` r
install.packages("hmstimer")
```

The website for the release version is at
<https://poissonconsulting.github.io/hmstimer/>.

### Development

To install the development version from
[GitHub](https://github.com/poissonconsulting/hmstimer)

``` r
# install.packages("remotes")
remotes::install_github("poissonconsulting/hmstimer")
```

or from [r-universe](https://poissonconsulting.r-universe.dev/hmstimer).

``` r
install.packages("hmstimer", repos = c("https://poissonconsulting.r-universe.dev", "https://cloud.r-project.org"))
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
