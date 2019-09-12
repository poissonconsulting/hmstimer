check_seconds <- function(seconds) {
  if(is.numeric(seconds) && length(seconds) == 1L && !is.na(seconds))
    return(invisible())
  if (!is.numeric(seconds)) err("`seconds` must be class numeric.")
  if (!identical(length(seconds), 1L)) err("`seconds` must be a scalar.")
  err("`seconds` must not be a missing value.")
}

check_start <- function(start) {
  if(is.logical(start) && length(start) == 1L && !is.na(start))
    return(invisible())
  if (!is.logical(start)) err("`start` must be class logical.")
  if (!identical(length(start), 1L)) err("`start` must be a scalar.")
  err("`start` must not be a missing value.")
}

check_x <- function(x) {
  if(is.hms(x) && length(x) == 1L && !is.na(x))
    return(invisible())
  
  if (!is.hms(x)) err("`x` must be class hms.")
  if (!identical(length(x), 1L)) err("`x` must be a scalar.")
  err("`x` must not be a missing value.")
}
