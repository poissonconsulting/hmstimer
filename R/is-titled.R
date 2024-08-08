#' Is hms Timer Title
#'
#' Tests if a [hms_timer()] has a title (as indicated by the
#' presence of an attribute named start).
#' @inheritParams params
#' @return A flag (TRUE or FALSE).
#' @export
#' @examples
#' tmr_is_titled(tmr_timer())
#' tmr_is_titled(tmr_timer(title = "my timer"))
tmr_is_titled <- function(x) {
  tmr_title(x) != ""
}
