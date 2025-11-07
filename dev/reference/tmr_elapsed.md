# Elapsed Time hms Timer

Returns the elapsed time for a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
as a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Usage

``` r
tmr_elapsed(x)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Value

A
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
of the elapsed time.

## Details

The elapsed time is the value of the scalar plus the difference between
the current system time and the system time when the timer was started.

If the original
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
was running then the new
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
is assigned an attribute named start of the current system time.

## See also

Other start_stop:
[`tmr_is_started()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_started.md),
[`tmr_is_stopped()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_stopped.md),
[`tmr_print()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_print.md),
[`tmr_reset()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_reset.md),
[`tmr_start()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_start.md),
[`tmr_stop()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_stop.md),
[`tmr_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_timer.md)

## Examples

``` r
tmr <- tmr_start(tmr_timer())
print(tmr_elapsed(tmr))
#> 00:00:00.000579
Sys.sleep(0.01)
print(tmr_elapsed(tmr))
#> 00:00:00.012311
tmr <- tmr_stop(tmr)
print(tmr_elapsed(tmr))
#> 00:00:00.0136
Sys.sleep(0.01)
print(tmr_elapsed(tmr))
#> 00:00:00.0136
```
