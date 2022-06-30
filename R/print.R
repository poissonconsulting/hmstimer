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
#' @family start_stop
#' @export
#' @examples
#' x <- tmr_start(tmr_timer())
#' tmr_print(x)
tmr_print <- function(x) {
  chk_x(x)
  if (!tmr_is_started(x)) {
    return(x)
  }

  sys_time <- as.double(Sys.time())
  x <- tmr_ceiling(tmr_elapsed(x))
  start <- as_hms(sys_time - as.double(x))
  
  start <- format(structure(start, class = "POSIXct", tzone = "UTC"), "%T")
  x <- format(structure(x, class = "POSIXct", tzone = "UTC"), "%T")
  sys_time <- format(structure(sys_time, class = "POSIXct", tzone = "UTC"), "%T")
  x <- paste(start, " (+", x, " => ", sys_time, ")", sep = "")
  x
}


