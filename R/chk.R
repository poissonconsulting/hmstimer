chk_x <- function(x) {
  if (is_hms(x) && length(x) == 1L && !is.na(x)) {
    return(invisible())
  }

  if (!is_hms(x)) err("`x` must be class hms.")
  if (length(x) != 1L) err("`x` must be a scalar.")
  err("`x` must not be a missing value.")
}
