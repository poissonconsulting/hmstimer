# Reset hms Timer

Resets a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
by creating a new one.

## Usage

``` r
tmr_reset(x, seconds = 0)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

- seconds:

  A non-negative numeric scalar of the initial number of seconds.

## Value

A
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## See also

Other start_stop:
[`tmr_elapsed()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_elapsed.md),
[`tmr_is_started()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_started.md),
[`tmr_is_stopped()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_stopped.md),
[`tmr_print()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_print.md),
[`tmr_start()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_start.md),
[`tmr_stop()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_stop.md),
[`tmr_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_timer.md)

## Examples

``` r
tmr <- tmr_timer(10)
print(tmr)
#> 00:00:10
tmr_reset(tmr)
#> 00:00:00
```
