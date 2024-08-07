#' Stop hms Timer
#'
#' Stops a [hms_timer()] after updating it to the elapsed time.
#'
#' If the [hms_timer()] is already stopped, the function
#' simply issues a warning and returns the original object.
#' @inheritParams params
#' @return A stopped [hms_timer()].
#' @family start_stop
#' @export
#' @examples
#' tmr <- tmr_stop(tmr_timer(start = TRUE))
#' print(tmr_elapsed(tmr))
#' Sys.sleep(0.01)
#' print(tmr_elapsed(tmr))
tmr_stop <- function(x) {
  if (tmr_is_stopped(x)) {
    wrn("`x` is already stopped.")
    return(x)
  }
  title <- tmr_title(x)
  x <- tmr_elapsed(x)
  attr(x, "start") <- NULL
  tmr_title(x) <- title
  x
}
