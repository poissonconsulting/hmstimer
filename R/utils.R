is.hms <- function(x) inherits(x, "hms")

err <- function(...) stop(..., call. = FALSE)

wrn <- function(...) warning(..., call. = FALSE)

add_title <- function (x, title) {
  if(is.null(title) || !nchar(title)) return(x)
  paste0(x, " [", title, "]")
}
