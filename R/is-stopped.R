#' Is hms Timer Stopped
#'
#' Tests if a [hms_timer()] is stopped (as indicated by the
#' absence of an attribute named start).
#' @inheritParams params
#' @return A flag.
#' @family start_stop
#' @export
#' @examples
#' tmr <- tmr_timer(start = TRUE)
#' print(tmr_is_stopped(tmr))
#' tmr <- tmr_stop(tmr)
#' print(tmr_is_stopped(tmr))
tmr_is_stopped <- function(x) {
  !tmr_is_started(x)
}
