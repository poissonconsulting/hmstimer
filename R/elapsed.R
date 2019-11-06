#' Elapsed Time hms Timer
#' 
#' Returns the elapsed time for a \code{\link{hms_timer}} as a \code{\link{hms_timer}}.
#' 
#' The elapsed time is the value of the scalar plus the difference
#' between the current system time and the system time when the timer was started.
#' 
#' If the original \code{\link{hms_timer}} was running then the new \code{\link{hms_timer}}
#' is assigned an attribute named start of the current system time.
#' @inheritParams params
#' @return A \code{\link{hms_timer}} of the elapsed time.
#' @family start_stop
#' @export
#' @examples 
#' tmr <- tmr_start(tmr_timer())
#' print(tmr_elapsed(tmr))
#' Sys.sleep(0.01)
#' print(tmr_elapsed(tmr))
#' tmr <- tmr_stop(tmr)
#' print(tmr_elapsed(tmr))
#' Sys.sleep(0.01)
#' print(tmr_elapsed(tmr))
tmr_elapsed <- function(x) {
  chk_x(x)
  if (!tmr_is_started(x)) {
    return(x)
  }
  sys_time <- as.double(Sys.time())
  start <- attr(x, "start")
  x <- as_hms(as.double(x) + sys_time - start)
  attr(x, "start") <- sys_time
  x
}
