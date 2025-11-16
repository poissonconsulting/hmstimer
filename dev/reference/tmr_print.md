# Print hms Timer

Returns the elapsed time for a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
from the system time when the timer was started and the current system
time as an hms time.

## Usage

``` r
tmr_print(x, ..., print_title = TRUE)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

- ...:

  These dots are for future extensions and must be empty.

- print_title:

  A flag specifying whether to print the title.

## Value

A character string.

## Details

The elapsed time is the value of the scalar plus the difference between
the current system time and the system time when the timer was started.

## See also

Other start_stop:
[`tmr_elapsed()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_elapsed.md),
[`tmr_is_started()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_started.md),
[`tmr_is_stopped()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_stopped.md),
[`tmr_reset()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_reset.md),
[`tmr_start()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_start.md),
[`tmr_stop()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_stop.md),
[`tmr_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_timer.md)

## Examples

``` r
x <- tmr_start(tmr_timer())
tmr_print(x)
#> [1] "15:14:46 (+00:00:01 => 15:14:47)"
```
