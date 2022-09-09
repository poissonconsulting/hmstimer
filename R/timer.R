#' Create hms Timer
#'
#' Creates a [hms_timer()].
#' @inheritParams params
#' @param title A flag specifing whether to add a title to the timer 
#' (based on `sys.call()`) or a string of the title to add.
#' @return A [hms_timer()].
#' @family start_stop
#' @export
#'
#' @examples
#' tmr <- tmr_timer()
#' print(tmr)
#' class(tmr)
tmr_timer <- function(seconds = 0, start = FALSE, title = TRUE) {
  chk_seconds(seconds)
  chk_start(start)
  chk_flag_or_string(title)

  seconds <- as.double(seconds)

  x <- as_hms(seconds)
  if(isTRUE(title)) {
    title <- force(gen_title())
  }
  if(!isFALSE(title)) {
    x <- set_title(x, title)
  }
  if (start) x <- tmr_start(x)
  x
}
