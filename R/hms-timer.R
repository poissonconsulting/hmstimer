#' hms Timer
#'
#' A hms Timer is a [hms::hms()] scalar which if
#' running has an attribute named start
#' that specifies the system time when the timer was started.
#'
#' The elapsed time is the value of the scalar plus the difference
#' between the current system time and the system time when the timer was started.
#' @name hms-timer
#' @aliases hms_timer
#'
#' @examples
#' str(tmr_timer())
#' str(tmr_timer(1.5, start = TRUE))
#'
#' x <- tmr_timer(1, start = TRUE)
#' print(x)
#' Sys.sleep(0.1)
#' print(x)
#' print(tmr_elapsed(x))
#' print(x)
NULL
