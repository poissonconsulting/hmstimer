# Set Title hms Timer

Sets the title of a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Usage

``` r
tmr_title(x) <- value
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

- value:

  A string of the title.

## Value

A copy of the
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
with the new title.

## See also

[`tmr_title()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_title.md)

## Examples

``` r
tmr <- tmr_timer(title = "A title")
tmr_print(tmr)
#> [1] "00:00:00 [A title]"
tmr_title(tmr) <- "A different title"
tmr_print(tmr)
#> [1] "00:00:00 [A different title]"
tmr_title(tmr) <- NULL
tmr_print(tmr)
#> [1] "00:00:00"
```
