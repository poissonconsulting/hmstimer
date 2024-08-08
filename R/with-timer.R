#' With Timer
#'
#' @inheritParams params
#' @param title A flag specifying whether to add a title based on code.
#'
#' @return The result of executing the code.
#' @seealso [local_timer()]
#' @export
#'
#' @examples
#' fun <- function() {
#'   Sys.sleep(0.1)
#'   10
#' }
#' with_timer(fun())
#'
#' with_timer({
#'   for (i in 1:2) {
#'     Sys.sleep(0.1)
#'   }
#'   20
#' })
with_timer <- function(code, ..., title = FALSE, srcref = FALSE) {
  rlang::check_dots_empty()
  chk_flag(title)

  if (title) {
    title <- rlang::expr_label(rlang::enexpr(code))
  } else {
    title <- ""
  }
  local_timer(title = title, srcref = srcref)
  force(code)
}
