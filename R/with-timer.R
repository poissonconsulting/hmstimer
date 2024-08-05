#' With Timer
#'
#' @inheritParams params
#'
#' @return The result of executing code.
#' @export 
#'
#' @examples
#' with_timer(Sys.sleep(0.1))
#' 
#' with_timer({
#'  for(i in 1:2) {
#'   Sys.sleep(0.1)
#'  }
#' })
with_timer <- function(code) {
  local_timer()
  force(code)
}
