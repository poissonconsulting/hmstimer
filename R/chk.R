chk_digits <- function(digits) {
  if (is.numeric(digits) && length(digits) == 1L && !anyNA(digits) &&
    (is.integer(digits) || digits == trunc(digits))) {
    return(invisible())
  }
  if (!is.numeric(digits)) err("`digits` must be numeric.")
  if (length(digits) != 1L) err("`digits` must be a scalar.")
  if (anyNA(digits)) err("`digits` must not be a missing value.")
  err("`digits` must be a whole number.")
}

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

chk_title <- function(title) {
  if (is.null(title) || (is.character(title) && length(title) == 1L && !is.na(title))) {
    return(invisible())
  }
  if (!is.character(title)) err("`title` must be numeric.")
  if (length(title) != 1L) err("`title` must be a scalar.")
  err("`title` must not be a missing value.")
}

chk_flag <- function(x, name) {
  if (is.logical(x) && length(x) == 1L && !is.na(x)) {
    return(invisible())
  }
  if (!is.logical(x)) err("`", name, "` must be class logical.")
  if (length(x) != 1L) err("`", name, "` must be a scalar.")
  err("`", name, "` must not be a missing value.")
}

chk_start <- function(start) {
  chk_flag(start, "start")
}

chk_x <- function(x) {
  if (is_hms(x) && length(x) == 1L && !is.na(x)) {
    return(invisible())
  }

  if (!is_hms(x)) err("`x` must be class hms.")
  if (length(x) != 1L) err("`x` must be a scalar.")
  err("`x` must not be a missing value.")
}
