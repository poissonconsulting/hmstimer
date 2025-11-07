# Floor hms Timer

Rounds a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
down to the nearest second.

## Usage

``` r
tmr_floor(x)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Value

A
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## See also

Other round:
[`tmr_ceiling()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_ceiling.md),
[`tmr_format()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_format.md),
[`tmr_round()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_round.md)

## Examples

``` r
tmr_floor(tmr_timer(18.9))
#> 00:00:18
tmr_floor(tmr_timer(122.1))
#> 00:02:02
```
