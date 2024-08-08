#' Parameter Descriptions
#'
#' Default parameter descriptions which may be overridden in individual
#' functions.
#'
#' A flag is a non-missing logical scalar.
#'
#' A string is a non-missing character scalar.
#'
#' A count is a non-missing non-negative integer scalar or double
#' scalar with no fractional part.
#
#' @param code A line or block of R code.
#' @param digits A count of the number of decimal places.
#' @param print_title A flag specifying whether to print the title.
#' @param seconds A non-negative numeric scalar of the initial number of seconds.
#' @param srcref A flag specifying whether to print the source reference.
#' @param start A flag specifying whether to start the timer.
#' @param title A string of the title.
#' @param value A string of the title.
#' @param x A [hms_timer()].
#' @param .local_envir The environment to use for scoping.
#' @inheritParams rlang::args_dots_empty
#' @keywords internal
#' @aliases parameters arguments args
#' @usage NULL
# nocov start
params <- function(...) NULL
# nocov end
