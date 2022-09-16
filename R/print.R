#' Print hms Timer
#'
#' Returns the elapsed time for a [hms_timer()] from the system time when the 
#' timer was started and the current system time as an hms time.
#'
#' The elapsed time is the value of the scalar plus the difference
#' between the current system time and the system time when the timer was started.
#'
#' @inheritParams params
#' @return A character string. 
#' @family print
#' @export
#' @examples
#' x <- tmr_start(tmr_timer())
#' tmr_print(x)
tmr_print <- function(x, title = TRUE) {
  chk_x(x)
  chk_flag_or_string(title)
  
  print(format_(x, title = title))
  return(invisible(x))
}
