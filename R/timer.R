#' Create hms Timer
#'
#' Creates a [hms_timer()].
#' @inheritParams params
#' @return A [hms_timer()].
#' @family start_stop
#' @export
#'
#' @examples
#' tmr <- tmr_timer()
#' print(tmr)
#' class(tmr)
tmr_timer <- function(seconds = 0, start = FALSE) {
  chk_seconds(seconds)
  chk_start(start)

  seconds <- as.double(seconds)

  x <- as_hms(seconds)
  if (start) x <- tmr_start(x)
  x
}
