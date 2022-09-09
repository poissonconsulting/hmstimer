#' Title hms Timer
#'
#' @inheritParams params
#'
#' @return A string of the hms timer title or NULL if undefined.
#' @family print
#' @export
#'
#' @examples
#' tmr_title(tmr_start(tmr_timer()))
#' tmr_title(tmr_start(tmr_timer(title = "new one")))
#' tmr_title(tmr_start(tmr_timer(title = FALSE)))
tmr_title <- function(x) {
  attr(x, "title", exact = TRUE)
}
