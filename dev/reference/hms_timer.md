# hms Timer

A hms Timer is a
[`hms::hms()`](https://hms.tidyverse.org/reference/hms.html) scalar
which if running has an attribute named start that specifies the system
time when the timer was started.

## Details

The elapsed time is the value of the scalar plus the difference between
the current system time and the system time when the timer was started.

## Examples

``` r
str(tmr_timer())
#>  'hms' num 00:00:00
#>  - attr(*, "units")= chr "secs"
#>  - attr(*, "title")= chr ""
str(tmr_timer(1.5, start = TRUE))
#>  'hms' num 00:00:01.5
#>  - attr(*, "units")= chr "secs"
#>  - attr(*, "title")= chr ""
#>  - attr(*, "start")= num 1.76e+09

x <- tmr_timer(1, start = TRUE)
print(x)
#> 00:00:01
Sys.sleep(0.1)
print(x)
#> 00:00:01
print(tmr_elapsed(x))
#> 00:00:01.104078
print(x)
#> 00:00:01
```
