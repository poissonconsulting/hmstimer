#' Is hms Timer Started
#'
#' Tests if a [hms_timer()] is started (as indicated by the
#' presence of an attribute named start).
#' @inheritParams params
#' @return A flag (TRUE or FALSE).
#' @family start_stop
#' @export
#' @examples
#' tmr <- tmr_timer(start = TRUE)
#' print(tmr_is_started(tmr))
#' tmr <- tmr_stop(tmr)
#' print(tmr_is_started(tmr))
tmr_is_started <- function(x) {
  chk_x(x)
  !is.null(attr(x, "start"))
}
