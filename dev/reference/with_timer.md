# With Timer

With Timer

## Usage

``` r
with_timer(code, ..., title = FALSE, srcref = FALSE)
```

## Arguments

- code:

  A line or block of R code.

- ...:

  These dots are for future extensions and must be empty.

- title:

  A flag specifying whether to add a title based on code.

- srcref:

  A flag specifying whether to print the source reference.

## Value

The result of executing the code.

## See also

[`local_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/local_timer.md)

## Examples

``` r
fun <- function() {
  Sys.sleep(0.1)
  10
}
with_timer(fun())
#> 00:00:00.100
#> [1] 10

with_timer({
  for (i in 1:2) {
    Sys.sleep(0.1)
  }
  20
})
#> 00:00:00.201
#> [1] 20
```
