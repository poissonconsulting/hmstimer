#' Title hms Timer
#'
#' Returns a flag (character vector) of the title.
#'
#' @inheritParams params
#' @return A flag of the title.
#' @export
#' @examples
#' tmr_title(tmr_timer())
#' tmr_title(tmr_timer(title = ""))
#' tmr_title(tmr_timer(title = "A Title"))
tmr_title <- function(x) {
  title <-  attr(x, "title")
  if(is.null(title)) return ("")
  title
}
