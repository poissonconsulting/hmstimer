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
  
  tmr <- tmr_(seconds  = 0, start = TRUE, caller = sys.call(-1))
  withr::defer(message(tmr_format(tmr)), envir = .local_envir)
  invisible(tmr)
}

tmr_ <- function(seconds, start, caller = sys.call(-1)) {
  seconds <- as.double(seconds)
  
  x <- as_hms(seconds)
  if (start) x <- tmr_start(x)
  x
}
