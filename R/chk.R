chk_env <- function(env) {
  if (is.environment(env)) {
    return(invisible(env))
  }
  err("`env` must be an environment.")
}

chk_seconds <- function(seconds) {
  if (is.numeric(seconds) && length(seconds) == 1L && !is.na(seconds)) {
    return(invisible())
  }
  if (!is.numeric(seconds)) err("`seconds` must be numeric.")
  if (length(seconds) != 1L) err("`seconds` must be a scalar.")
  err("`seconds` must not be a missing value.")
}

chk_x <- function(x) {
  if (is_hms(x) && length(x) == 1L && !is.na(x)) {
    return(invisible())
  }

  if (!is_hms(x)) err("`x` must be class hms.")
  if (length(x) != 1L) err("`x` must be a scalar.")
  err("`x` must not be a missing value.")
}
