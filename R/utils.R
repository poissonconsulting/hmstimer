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

tmr_ <- function(seconds, start, title, caller = sys.call(-1)) {
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

format_ <- function(x, title = title) {
  if (!tmr_is_started(x)) {
    return(tmr_format(x, title = title))
  }
  
  sys_time <- as.double(Sys.time())
  time_passed <- tmr_ceiling(tmr_elapsed(x))
  start <- as_hms(sys_time - as.double(time_passed))
  
  start <- format(structure(start, class = "POSIXct", tzone = "UTC"), "%T")
  time_passed <- format(structure(time_passed, class = "POSIXct", tzone = "UTC"), "%T")
  sys_time <- format(structure(sys_time, class = "POSIXct", tzone = "UTC"), "%T")
  time_passed <- paste(start, " (+", time_passed, " => ", sys_time, ")", sep = "")
  if(!isFALSE(title)) {
    if(isTRUE(title)) title <- tmr_title(x)
    time_passed <- paste0(time_passed, " [", title, "]")
  }
  time_passed
}
