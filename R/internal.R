as_hmstimer <- function(x) {
  x <- as.difftime(x, units = "secs")
  class(x) <- c("hmstimer", "hms", "difftime")
  x
}
