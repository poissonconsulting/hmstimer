is.hms <- function(x) inherits(x, "hms")

err <- function(...) stop(..., call. = FALSE)

wrn <- function(...) warning(..., call. = FALSE)

gen_title <- function(caller = sys.call(-1)) {
  srcref <- utils::getSrcref(caller)
  file <- utils::getSrcFilename(caller)
  paste0(file, ":", srcref[[1]])
}

set_title <- function(x, title) {
  attr(x, "title") <- title
  x
}

tmr <- function(seconds, start, title, caller = sys.call(-1)) {
  seconds <- as.double(seconds)

  x <- as_hms(seconds)
  if(isTRUE(title)) {
    title <- force(gen_title(caller = caller))
  }
  if(!isFALSE(title)) {
    x <- set_title(x, title)
  }
  if (start) x <- tmr_start(x)
  x
}
