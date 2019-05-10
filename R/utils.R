is.hms <- function(x) inherits(x, "hms")

err <- function(...) stop(..., call. = FALSE, domain = NA)

wrn <- function(...) warning(..., call. = FALSE, domain = NA)
