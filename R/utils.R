is.hms <- function(x) inherits(x, "hms")

err <- function(...) stop(..., call. = FALSE)

wrn <- function(...) warning(..., call. = FALSE)

gen_title <- function() {
  caller <- sys.call(-2)
  srcref <- utils::getSrcref(caller)
  file <- utils::getSrcFilename(caller)
  paste0(file, ":", srcref[[1]])
}

set_title <- function(x, title) {
  attr(x, "title") <- title
  x
}
