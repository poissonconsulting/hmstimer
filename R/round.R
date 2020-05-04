#' Round hms Timer
#'
#' Rounds a [hms_timer()] after updating it to the elapsed time.
#'
#' Negative values of digit are permitted.
#'
#' @inheritParams params
#' @return A [hms_timer()].
#' @family round
#' @export
#' @examples
#' tmr_round(tmr_timer(18.9))
#' tmr_round(tmr_timer(18.9), 1)
#' tmr_round(tmr_timer(18.9), -1)
#' tmr_round(tmr_timer(121), -2) # 121 is rounded to 100 seconds
tmr_round <- function(x, digits = 0) {
  start <- tmr_is_started(x)
  x <- round(as.numeric(tmr_elapsed(x)), digits = digits)
  tmr_timer(x, start = start)
}
