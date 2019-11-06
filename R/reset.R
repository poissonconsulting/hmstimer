#' Reset hms Timer
#' 
#' Resets a \code{\link{hms_timer}} by creating a new one.
#' 
#' @inheritParams params
#' @return A \code{\link{hms_timer}}.
#' @family start_stop
#' @export
#' @examples 
#' tmr <- tmr_timer(10)
#' print(tmr)
#' tmr_reset(tmr)
tmr_reset <- function(x, seconds = 0, start = FALSE) {
  tmr_timer(seconds = seconds, start = start)
}
