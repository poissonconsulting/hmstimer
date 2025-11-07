# Is hms Timer Started

Tests if a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
is started (as indicated by the presence of an attribute named start).

## Usage

``` r
tmr_is_started(x)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Value

A flag (TRUE or FALSE).

## See also

Other start_stop:
[`tmr_elapsed()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_elapsed.md),
[`tmr_is_stopped()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_stopped.md),
[`tmr_print()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_print.md),
[`tmr_reset()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_reset.md),
[`tmr_start()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_start.md),
[`tmr_stop()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_stop.md),
[`tmr_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_timer.md)

## Examples

``` r
tmr <- tmr_timer(start = TRUE)
print(tmr_is_started(tmr))
#> [1] TRUE
tmr <- tmr_stop(tmr)
print(tmr_is_started(tmr))
#> [1] FALSE
```
