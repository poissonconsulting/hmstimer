check_seconds <- function(seconds) {
  if(!is.numeric(seconds)) err("seconds must be class numeric")
  if(!identical(length(seconds), 1L)) err("seconds must be a scalar")
  if(is.na(seconds)) err("seconds must not be missing")
  if(seconds < -86400) err("seconds not be less than -86400")
  if(seconds > 86400) err("seconds not be greater than 86400")
  as.double(seconds)
}

check_start <- function(start) {
  if(!is.logical(start)) err("start must be class logical")
  if(!identical(length(start), 1L)) err("start must be a scalar")
  if(is.na(start)) err("start must not be missing")
  start
}

check_x <- function(x) {
  if(!is.hms(x)) err("start must be class hms")
  if(!identical(length(x), 1L)) err("x must be a scalar")
  if(is.na(x)) err("x must not be missing")
  x
}
