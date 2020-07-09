#' Reset hms Timer
#'
#' Resets a [hms_timer()] by creating a new one.
#'
#' @inheritParams params
#' @return A [hms_timer()].
#' @family start_stop
#' @export
#' @examples
#' tmr <- tmr_timer(10)
#' print(tmr)
#' tmr_reset(tmr)
tmr_reset <- function(x, seconds = 0, start = FALSE) {
  if(!missing(start)) {
    lifecycle::deprecate_stop(
      "0.1.0", "tmr_reset(start = )", 
      details = "Please stop or start the hms_timer before resetting.")
  }
  start <- tmr_is_started(x)
  tmr_timer(seconds = seconds, start = start)
}
