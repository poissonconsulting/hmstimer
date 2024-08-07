#' Local Timer
#'
#' Called for the side effect of providing a message of the time
#' required to execute the rest of the function.
#'
#' @inheritParams params
#' @seealso [with_timer()]
#'
#' @export
#'
#' @examples
#' fun <- function() {
#'   local_timer()
#'   Sys.sleep(0.1)
#'   10
#' }
#' fun()
local_timer <- function(..., title = "", .local_envir = rlang::caller_env()) {
  chk_title(title)
  chk_env(.local_envir)

  rlang::check_installed("withr", reason = "to create a local_timer().")

  tmr <- tmr_start(as_hms(0), title = title)
  withr::defer(message(tmr_format(tmr)), envir = .local_envir)
  invisible(tmr)
}
