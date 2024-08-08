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
tmr_print <- function(x, ..., print_title = TRUE) {
  chk_x(x)
  rlang::check_dots_empty()
  chk_flag(print_title, "print_title")

  if (!tmr_is_started(x)) {
    time <- format(x)
    if (print_title) {
      time <- paste_title(time, tmr_title(x))
    }
    print(time)
    return(invisible(x))
  }

  sys_time <- as.double(Sys.time())
  time_passed <- tmr_ceiling(tmr_elapsed(x))
  start <- as_hms(sys_time - as.double(time_passed))

  start <- format(structure(start, class = "POSIXct", tzone = "UTC"), "%T")
  time_passed <- format(structure(time_passed, class = "POSIXct", tzone = "UTC"), "%T")
  sys_time <- format(structure(sys_time, class = "POSIXct", tzone = "UTC"), "%T")
  time_passed <- paste(start, " (+", time_passed, " => ", sys_time, ")", sep = "")

  if (print_title) {
    time_passed <- paste_title(time_passed, tmr_title(x))
  }
  print(time_passed)
  return(invisible(x))
}
