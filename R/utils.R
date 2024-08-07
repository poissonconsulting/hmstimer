as_hms <- function(x) {
  x <- as.difftime(x, units = "secs")
  class(x) <- c("hms", "difftime")
  x
}

is.hms <- function(x) inherits(x, "hms")

err <- function(...) stop(..., call. = FALSE)

wrn <- function(...) warning(..., call. = FALSE)

paste_title <- function (x, title) {
  if(is.null(title) || !nchar(title)) return(x)
  paste0(x, " [", title, "]")
}
