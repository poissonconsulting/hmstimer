#' Create hms Timer
#'
#' Creates a [hms_timer()].
#' @inheritParams params
#' @return A [hms_timer()].
#' @family start_stop
#' @export
#'
#' @examples
#' tmr_timer()
#' tmr_timer(1, start = TRUE, title = "my timer")
#' class(tmr_timer(2))
#' str(tmr_timer(2, start = TRUE, title = "a timer"))
tmr_timer <- function(seconds = 0, start = FALSE, ..., title = "") {
  chk_number(seconds)
  chk_flag(start)
  rlang::check_dots_empty()
  chk_null_or(title, vld = vld_string)

  seconds <- as.double(seconds)

  x <- as_hms(seconds)
  attr(x, "title") <- unname(title)
  if (start) x <- tmr_start(x)
  x
}
