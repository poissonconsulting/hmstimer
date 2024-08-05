#' Local Timer
#'
#' @inheritParams params
#'
#' @return xx
#' @export
#'
#' @examples
#' local_timer()
local_timer <- function(.local_envir = rlang::caller_env()) {
  chk_env(.local_envir)
  
  if(!requireNamespace("withr", quietly = TRUE)) {
    err("Package 'withr' must be installed to create a local_timer().")
  }
  
  tmr <- tmr_start(as_hms(0))
  withr::defer(message(tmr_format(tmr)), envir = .local_envir)
  invisible(tmr)
}
