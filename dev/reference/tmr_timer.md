# Create hms Timer

Creates a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Usage

``` r
tmr_timer(seconds = 0, start = FALSE, ..., title = "")
```

## Arguments

- seconds:

  A non-negative numeric scalar of the initial number of seconds.

- start:

  A flag specifying whether to start the timer.

- ...:

  These dots are for future extensions and must be empty.

- title:

  A string of the title.

## Value

A
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## See also

Other start_stop:
[`tmr_elapsed()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_elapsed.md),
[`tmr_is_started()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_started.md),
[`tmr_is_stopped()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_stopped.md),
[`tmr_print()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_print.md),
[`tmr_reset()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_reset.md),
[`tmr_start()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_start.md),
[`tmr_stop()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_stop.md)

## Examples

``` r
tmr_timer()
#> 00:00:00
tmr_timer(1, start = TRUE, title = "my timer")
#> 00:00:01
class(tmr_timer(2))
#> [1] "hms"      "difftime"
str(tmr_timer(2, start = TRUE, title = "a timer"))
#>  'hms' num 00:00:02
#>  - attr(*, "units")= chr "secs"
#>  - attr(*, "title")= chr "a timer"
#>  - attr(*, "start")= num 1.76e+09
```
