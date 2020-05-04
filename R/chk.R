chk_digits <- function(digits) {
  if(is.numeric(digits) && length(digits) == 1L && !anyNA(digits) &&
    (is.integer(digits) || digits == trunc(digits))) {
    return(invisible())
  }
  if (!is.numeric(digits)) err("`digits` must be numeric.")
  if (length(digits) != 1L) err("`digits` must be a scalar.")
  if (anyNA(digits)) err("`digits` must not be a missing value.")
  err("`digits` must be a whole number.")
}

chk_seconds <- function(seconds) {
  if (is.numeric(seconds) && length(seconds) == 1L && !is.na(seconds)) {
    return(invisible())
  }
  if (!is.numeric(seconds)) err("`seconds` must be numeric.")
  if (length(seconds) != 1L) err("`seconds` must be a scalar.")
  err("`seconds` must not be a missing value.")
}

chk_start <- function(start) {
  if (is.logical(start) && length(start) == 1L && !is.na(start)) {
    return(invisible())
  }
  if (!is.logical(start)) err("`start` must be class logical.")
  if (length(start) != 1L) err("`start` must be a scalar.")
  err("`start` must not be a missing value.")
}

chk_x <- function(x) {
  if (is.hms(x) && length(x) == 1L && !is.na(x)) {
    return(invisible())
  }

  if (!is.hms(x)) err("`x` must be class hms.")
  if (length(x) != 1L) err("`x` must be a scalar.")
  err("`x` must not be a missing value.")
}
