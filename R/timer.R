#' Use a tmr_timer
#'
#' @param seconds A non-negative double scalar of the start time in seconds.
#' @param start A flag indicating whether to start the timer.
#' @param x A hms scalar.
#'
#' @export
#'
#' @examples
#' # create a new timer
#' t <- tmr_timer()
#'
#' # no time has elapsed because the timer has not started
#' tmr_elapsed(t)
#'
#' # start the timer
#' t <- tmr_start(t)
#'
#' # get the time elapsed
#' # time elapsed is increasing because the timer is still running
#' Sys.sleep(1)
#' tmr_elapsed(t)
#' Sys.sleep(1)
#' tmr_elapsed(t)
#'
#' # stop the timer
#' t <- tmr_stop(t)
#'
#' # time elapsed is now fixed
#' tmr_elapsed(t)
#' Sys.sleep(1)
#' tmr_elapsed(t)
#'
#' # reset the timer
#' t <- tmr_reset(t)
#' tmr_elapsed(t)
tmr_timer <- function(seconds = 0, start = FALSE) {
  seconds <- check_seconds(seconds)
  check_start(start)
  
  x <- as_hms(seconds)
  if(start) x <- tmr_start(x)
  x
}

#' @describeIn tmr_timer Start Timer
#' @export
tmr_start <- function(x) {
  if(tmr_is_started(x)) {
    wrn("x is already started")
    return(x)
  }
  attr(x, "start") <- as.double(Sys.time())
  x
}

#' @describeIn tmr_timer Stop Timer
#' @export
tmr_stop <- function(x) {
  if(!tmr_is_started(x)) {
    wrn("x is already stopped")
    return(x)
  }
  x <- tmr_elapsed(x)
  attr(x, "start") <- NULL
  x
}

#' @describeIn tmr_timer Elapsed Time
#' @export
tmr_elapsed <- function(x) {
  if(!tmr_is_started(x)) return(x)
  sys_time <- as.double(Sys.time())
  start <- attr(x, "start")
  x <- as_hms(as.double(x) + sys_time - start)
  attr(x, "start") <- sys_time
  x
}

#' @describeIn tmr_timer Reset Timer
#' @export
tmr_reset <- function(x, seconds = 0, start = FALSE) {
  check_x(x)
  tmr_timer(seconds = seconds, start = start)
}

#' @describeIn tmr_timer Is Started
#' @export
tmr_is_started <- function(x) {
  check_x(x)
  !is.null(attr(x, "start"))
}

#' @describeIn tmr_timer Is Stopped
#' @export
tmr_is_stopped <- function(x) {
  !tmr_is_started(x)
}
