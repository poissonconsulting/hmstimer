# Format hms Timer

Converts a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
to a string of the clock time after rounding it to the number of digits.

## Usage

``` r
tmr_format(x, digits = 3, ..., print_title = TRUE)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

- digits:

  A count of the number of decimal places.

- ...:

  These dots are for future extensions and must be empty.

- print_title:

  A flag specifying whether to print the title.

## Value

A character string.

## Details

Negative values of digit are not permitted.

## See also

Other round:
[`tmr_ceiling()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_ceiling.md),
[`tmr_floor()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_floor.md),
[`tmr_round()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_round.md)

## Examples

``` r
tmr_format(tmr_timer(61.66))
#> [1] "00:01:01.660"
tmr_format(tmr_timer(61.66), digits = 0)
#> [1] "00:01:02"
```
