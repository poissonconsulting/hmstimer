# Is hms Timer Title

Tests if a
[`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md)
has a title (as indicated by the presence of an attribute named start).

## Usage

``` r
tmr_is_titled(x)
```

## Arguments

- x:

  A
  [`hms_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/hms_timer.md).

## Value

A flag (TRUE or FALSE).

## Examples

``` r
tmr_is_titled(tmr_timer())
#> [1] FALSE
tmr_is_titled(tmr_timer(title = "my timer"))
#> [1] TRUE
```
