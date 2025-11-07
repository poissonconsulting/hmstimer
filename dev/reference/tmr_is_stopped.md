# Is hms Timer Stopped

Tests if a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
is stopped (as indicated by the absence of an attribute named start).

## Usage

``` r
tmr_is_stopped(x)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Value

A flag.

## See also

Other start_stop:
[`tmr_elapsed()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_elapsed.md),
[`tmr_is_started()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_started.md),
[`tmr_print()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_print.md),
[`tmr_reset()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_reset.md),
[`tmr_start()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_start.md),
[`tmr_stop()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_stop.md),
[`tmr_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_timer.md)

## Examples

``` r
tmr <- tmr_timer(start = TRUE)
print(tmr_is_stopped(tmr))
#> [1] FALSE
tmr <- tmr_stop(tmr)
print(tmr_is_stopped(tmr))
#> [1] TRUE
```
