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
tmr_reset <- function(x, seconds = 0) {
  start <- tmr_is_started(x)
  title <- tmr_title(x)
  tmr_timer(seconds = seconds, start = start, title = title)
}
