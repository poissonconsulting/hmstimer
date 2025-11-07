# Get Title hms Timer

Returns a flag (character vector) of the title.

## Usage

``` r
tmr_title(x)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Value

A flag of the title.

## See also

[`tmr_title<-()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_title-set.md)

## Examples

``` r
tmr_title(tmr_timer())
#> [1] ""
tmr_title(tmr_timer(title = ""))
#> [1] ""
tmr_title(tmr_timer(title = "A Title"))
#> [1] "A Title"
```
