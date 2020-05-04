#' Start hms Timer
#'
#' Starts a [hms_timer()] by adding an attribute named
#' start of the current system time.
#'
#' If the [hms_timer()] is already started, the function
#' simply issues a warning and returns the original object.
#' @inheritParams params
#' @return A started [hms_timer()].
#' @family start_stop
#' @export
#' @examples
#' tmr <- tmr_start(tmr_timer())
#' print(tmr_elapsed(tmr))
#' Sys.sleep(0.01)
#' print(tmr_elapsed(tmr))
tmr_start <- function(x) {
  if (tmr_is_started(x)) {
    wrn("`x` is already started.")
    return(x)
  }
  attr(x, "start") <- as.double(Sys.time())
  x
}
