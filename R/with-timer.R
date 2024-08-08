#' With Timer
#'
#' @inheritParams params
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
with_timer <- function(code, ..., srcref = FALSE) {
  local_timer(srcref = srcref)
  force(code)
}
