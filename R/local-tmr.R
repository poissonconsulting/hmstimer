#' Local Timer
#'
#' @inheritParams params
#' @param .local_envir The environment to use for scoping
#'
#' @return xx
#' @export
#'
#' @examples
#' local_timer()
local_timer <- function(title = TRUE, .local_envir = rlang::caller_env()) {
  chk_flag_or_string(title)
  chk_env(.local_envir)

  if(!requireNamespace("withr", quietly = TRUE)) {
    err("Package 'withr' must be installed to create a local_timer().")
  }
  
  tmr <- tmr_(seconds  = 0, start = TRUE, title = title, caller = sys.call(-1))
  withr::defer(message(tmr_format(tmr, title = title)), envir = .local_envir)
  invisible(tmr)
}
