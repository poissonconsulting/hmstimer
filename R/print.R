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
  if (!tmr_is_started(x)) {
    print(tmr_format(x, title = title))
    return(invisible(x))
  }
  
  sys_time <- as.double(Sys.time())
  time_passed <- tmr_ceiling(tmr_elapsed(x))
  start <- as_hms(sys_time - as.double(time_passed))
  
  start <- format(structure(start, class = "POSIXct", tzone = "UTC"), "%T")
  time_passed <- format(structure(time_passed, class = "POSIXct", tzone = "UTC"), "%T")
  sys_time <- format(structure(sys_time, class = "POSIXct", tzone = "UTC"), "%T")
  time_passed <- paste(start, " (+", time_passed, " => ", sys_time, ")", sep = "")
  if(!isFALSE(title)) {
    if(isTRUE(title)) title <- tmr_title(x)
      time_passed <- paste0(time_passed, " [", title, "]")
  }
  
  print(time_passed)
  return(invisible(x))
}
