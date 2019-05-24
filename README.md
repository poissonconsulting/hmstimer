
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hmstimer

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![Travis build
status](https://travis-ci.com/poissonconsulting/hmstimer.svg?branch=master)](https://travis-ci.com/poissonconsulting/hmstimer)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/poissonconsulting/hmstimer?branch=master&svg=true)](https://ci.appveyor.com/project/poissonconsulting/hmstimer)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/hmstimer/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/hmstimer?branch=master)
[![License:
MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![CRAN
status](https://www.r-pkg.org/badges/version/hmstimer)](https://cran.r-project.org/package=hmstimer)
<!-- badges: end -->

`hmstimer` is an R package to track elapsed clock time using a
[hms()](https://github.com/tidyverse/hms) scalar (inherits from
difftime() with seconds as the unit).

``` r
library(hmstimer)

# create a new timer
t <- tmr_timer()

# the timer is just a hms scalar of value 0
str(t)
#>  'hms' num 0
#>  - attr(*, "units")= chr "secs"

# no time has elapsed because the timer has not started
tmr_elapsed(t)
#> Time difference of 0 secs

# for prettier printing load hms
library(hms)
tmr_elapsed(t)
#> 00:00:00

# start the timer
t <- tmr_start(t)

# a running timer is just a hms scalar with a start attribute
# the start attribute indicates when the timer started
# in decimal seconds since 1970-01-01 00:00:00 UTC
str(t)
#>  'hms' num 00:00:00
#>  - attr(*, "units")= chr "secs"
#>  - attr(*, "start")= num 1.56e+09

# get the time elapsed (since the timer started)
tmr_elapsed(t)
#> 00:00:00.002978

# time elapsed is increasing
tmr_elapsed(t)
#> 00:00:00.00422

# stop the timer
t <- tmr_stop(t)

# time elapsed is now fixed
tmr_elapsed(t)
#> 00:00:00.00581
tmr_elapsed(t)
#> 00:00:00.00581

# and the timer is now just a hms scalar with a value of the time elapsed
str(t)
#>  'hms' num 00:00:00.00581
#>  - attr(*, "units")= chr "secs"

# the timer can be restarted
t <- tmr_start(t)
str(t)
#>  'hms' num 00:00:00.00581
#>  - attr(*, "units")= chr "secs"
#>  - attr(*, "start")= num 1.56e+09
```

## Installation

To install the latest development version from
[GitHub](https://github.com/poissonconsulting/hmstimer)

    if(!"devtools" %in% installed.packages()[,1]) 
      install.packages("devtools")
    devtools::install_github("poissonconsulting/hmstimer")

To install the latest development version from the Poisson drat
[repository](https://github.com/poissonconsulting/drat)

    if(!"drat" %in% installed.packages()[,1]) 
      install.packages("drat")
    drat::addRepo("poissonconsulting")
    install.packages("hmstimer")

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/hmstimer/issues).

[Pull requests](https://github.com/poissonconsulting/hmstimer/pulls) are
always welcome.

Please note that this project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree
to abide by its terms.
