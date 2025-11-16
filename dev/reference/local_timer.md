# Local Timer

Called for the side effect of providing a message of the time required
to execute the rest of the function.

## Usage

``` r
local_timer(..., title = "", srcref = TRUE, .local_envir = rlang::caller_env())
```

## Arguments

- ...:

  These dots are for future extensions and must be empty.

- title:

  A string of the title.

- srcref:

  A flag specifying whether to print the source reference.

- .local_envir:

  The environment to use for scoping.

## See also

[`with_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/with_timer.md)

## Examples

``` r
fun <- function() {
  local_timer()
  Sys.sleep(0.1)
  10
}
fun()
#> 00:00:00.101 [:]
#> [1] 10
```
