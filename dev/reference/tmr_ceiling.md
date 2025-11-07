# Ceiling hms Timer

Rounds a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
up to the nearest second.

## Usage

``` r
tmr_ceiling(x)
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
[`tmr_floor()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_floor.md),
[`tmr_format()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_format.md),
[`tmr_round()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_round.md)

## Examples

``` r
tmr_ceiling(tmr_timer(18.9))
#> 00:00:19
tmr_ceiling(tmr_timer(122.1))
#> 00:02:03
```
