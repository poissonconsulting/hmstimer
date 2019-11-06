#' Format hms Timer
#'
#' @param x A hms scalar.
#' @param digits xx
#'
#' @return A character string.
#' @export
#'
#' @examples
#' tmr_format(tmr_timer(61.36))
#' tmr_format(tmr_timer(61.36), digits = 4)
tmr_format <- function(x, digits = 3) {
  chk_x(x)
  
  x <- tmr_round(x, digits = digits)
  
  if(digits > 0) {
    msecs <- as.numeric(x) - floor(as.numeric(x))
    msecs <- formatC(msecs, digits = digits, format = "f")
    msecs <- substr(msecs, 2, nchar(msecs))
  } else
    msecs <- ""

  x <- tmr_floor(x)
  x <- as.character(x)
  x <- paste0(x, msecs)
  x
}
