#' Get Title hms Timer
#'
#' Returns a flag (character vector) of the title.
#'
#' @inheritParams params
#' @return A flag of the title.
#' @seealso [tmr_title<-()]
#' @export
#' @examples
#' tmr_title(tmr_timer())
#' tmr_title(tmr_timer(title = ""))
#' tmr_title(tmr_timer(title = "A Title"))
tmr_title <- function(x) {
  title <- attr(x, "title")
  if (is.null(title)) {
    return("")
  }
  unname(title)
}

#' Set Title hms Timer
#'
#' Sets the title of a [hms_timer()].
#'
#' @inheritParams params
#' @return A copy of the [hms_timer()] with the new title.
#' @seealso [tmr_title()]
#' @export
#' @examples
#' tmr <- tmr_timer(title = "A title")
#' tmr_print(tmr)
#' tmr_title(tmr) <- "A different title"
#' tmr_print(tmr)
#' tmr_title(tmr) <- NULL
#' tmr_print(tmr)
`tmr_title<-` <- function(x, value) {
  chk_title(value)
  value <- unname(value)
  attr(x, "title") <- value
  x
}
