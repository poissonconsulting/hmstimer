#' Local Timer
#'
#' @inheritParams params
#'
#' @return An invisible copy of the hmstimer object.
#' @export
#'
#' @examples
#' fun <- function() {
#'   local_timer()
#' }
#' fun()
local_timer <- function(.local_envir = rlang::caller_env()) {
  chk_env(.local_envir)
  
  rlang::check_installed("withr", reason = "to create a local_timer().")
  
  tmr <- tmr_start(as_hms(0))
  withr::defer(message(tmr_format(tmr)), envir = .local_envir)
  invisible(tmr)
}
