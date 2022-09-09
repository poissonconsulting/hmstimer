#' Format hms Timer
#'
#' Converts a [hms_timer()] to a string of the clock time
#' after rounding it to the number of digits.
#'
#' Negative values of digit are not permitted.
#'
#' @inheritParams params
#' @return A character string.
#' @family round
#' @export
#' @examples
#' tmr_format(tmr_timer(61.66))
#' tmr_format(tmr_timer(61.66), digits = 0)
tmr_format <- function(x, digits = 3, title = FALSE) {
  chk_digits(digits)
  chk_flag_or_string(title)
  if(digits < 0) err("`digits` must not be negative.")

  tightl <- tmr_title(x)
  x <- tmr_round(x, digits = digits)
  msecs <- as.numeric(x) - floor(as.numeric(x))
  x <- tmr_floor(x)
  x <- as.character(x)
  msecs <- formatC(msecs, digits = digits, format = "f")
  msecs <- substr(msecs, 2, nchar(msecs))
  x <- paste0(x, msecs)
  if(!isFALSE(title)) {
    x <- paste0(x, " [", tightl, "]")
  }
  x
}
