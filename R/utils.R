as_hms <- function(x) {
  hms::new_hms(x)
}

err <- function(...) stop(..., call. = FALSE)

wrn <- function(...) warning(..., call. = FALSE)

paste_title <- function(x, title) {
  if (is.null(title) || !nchar(title)) {
    return(x)
  }
  paste0(x, " [", title, "]")
}
