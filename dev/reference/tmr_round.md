# Round hms Timer

Rounds a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
after updating it to the elapsed time.

## Usage

``` r
tmr_round(x, digits = 0)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

- digits:

  A count of the number of decimal places.

## Value

A
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Details

Negative values of digit are permitted.

## See also

Other round:
[`tmr_ceiling()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_ceiling.md),
[`tmr_floor()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_floor.md),
[`tmr_format()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_format.md)

## Examples

``` r
tmr_round(tmr_timer(18.9))
#> 00:00:19
tmr_round(tmr_timer(18.9), 1)
#> 00:00:18.9
tmr_round(tmr_timer(18.9), -1)
#> 00:00:20
tmr_round(tmr_timer(121), -2) # 121 is rounded to 100 seconds
#> 00:01:40
```
