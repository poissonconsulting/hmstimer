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
local_timer <- function(..., title = "", srcref = TRUE, .local_envir = rlang::caller_env()) {
  rlang::check_dots_empty()
  chk_title(title)
  chk_env(.local_envir)
  chk_flag(srcref, "srcref")

  rlang::check_installed("withr", reason = "to create a local_timer().")


  if (srcref) {
    caller <- sys.call()
    srcref <- utils::getSrcref(caller)
    file <- utils::getSrcFilename(srcref)
    file_line <- paste0(file, ":", srcref[[1]])

    if (!is.null(title) && title != "") {
      file_line <- paste0(file_line, " - ", title)
    }
  } else {
    file_line <- title
  }
  tmr <- tmr_start(as_hms(0), title = file_line)
  withr::defer(message(tmr_format(tmr)), envir = .local_envir)
  invisible(tmr)
}
