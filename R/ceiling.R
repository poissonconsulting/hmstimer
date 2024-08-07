#' Ceiling hms Timer
#'
#' Rounds a [hms_timer()] up to the nearest second.
#'
#' @inheritParams params
#' @return A [hms_timer()].
#' @family round
#' @export
#' @examples
#' tmr_ceiling(tmr_timer(18.9))
#' tmr_ceiling(tmr_timer(122.1))
tmr_ceiling <- function(x) {
  start <- tmr_is_started(x)
  title <- tmr_title(x)
  x <- ceiling(as.numeric(tmr_elapsed(x)))
  tmr_timer(x, start = start, title = title)
}
