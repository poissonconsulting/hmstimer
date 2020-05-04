#' Floor hms Timer
#'
#' Rounds a [hms_timer()] down to the nearest second.
#'
#' @inheritParams params
#' @return A [hms_timer()].
#' @family round
#' @export
#' @examples
#' tmr_floor(tmr_timer(18.9))
#' tmr_floor(tmr_timer(122.1))
tmr_floor <- function(x) {
  start <- tmr_is_started(x)
  x <- floor(as.numeric(tmr_elapsed(x)))
  tmr_timer(x, start = start)
}
